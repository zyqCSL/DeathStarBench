import glob
import sys
import time
import json
import logging

sys.path.append('../../gen-py')
from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol
from thrift.server import TServer
from social_network import MediaFilterService

#---- image processing & ml --------#
import keras
import numpy as np
from PIL import Image
import base64
import StringIO

ModelPath = "./nsfw_mobilenet2.224x224.h5"
ImageSize = (224, 224)
Categories = ['drawings', 'hentai', 'neutral', 'porn', 'sexy']

class MediaFilterServiceHandler:
    def __init__(self):
        global ModelPath
        self.nsfw_model = keras.models.load_model(ModelPath)
        self.nsfw_model._make_predict_function()
        print("nsfw model loaded")

    def _load_base64_image(self, base64_str, image_size):
        img_str = base64.b64decode(base64_str)
        tempBuff = StringIO.StringIO()
        tempBuff.write(img_str)
        tempBuff.seek(0) #need to jump back to the beginning before handing it off to PIL
        image = Image.open(tempBuff)
        if image.mode != 'RGB':
            image = image.convert('RGB')
        image = image.resize(image_size)

        print("image data")        
        print(type(image))
        print(image.format)
        print(image.mode)
        print(image.size)

        image = keras.preprocessing.image.img_to_array(image)
        print("array data")
        print(type(image))
        print(image.shape)
        print(' ')

        image /= 255
        return image

    def _predict(self, base64_images, image_size):
        global Categories
        images = []
        for img in base64_images:
            images.append(self._load_base64_image(img, image_size))
        images = np.asarray(images)

        model_preds = self.nsfw_model.predict(images, batch_size = len(images))
        preds = np.argsort(model_preds, axis = 1).tolist()

        _return = []
        for i, single_preds in enumerate(preds):
            _type = Categories[single_preds[-1]]
            print(_type)
            _flag = (_type != "porn" and _type != "hentai")
            _return.append(_flag)

        return _return

    def UploadMedia(self, req_id, media_types, medium, carrier):
        global ImageSize
        if len(medium) == 0:
            return []
        print(media_types)
        start = time.time()
        base64_images = []
        for img in medium:
            base64_images.append(img)
        _return = []
        try:
            _return = self._predict(base64_images, ImageSize)
        except:
            print("Error when predicting")
            for i in range(0, len(medium)):
                _return.append(False)
        end = time.time()
        print("inference time = %.2fs", end - start)
        print(_return)
        return _return

# -------------------- Thrift server impl ----------------------#
if __name__ == '__main__':
    host_addr = 'localhost'
    host_port = 40000
    with open('../../config/service-config.json', 'r') as f:
        config_json_data = json.load(f)
        host_addr = config_json_data['media-filter-service']['addr']
        host_port = int(config_json_data['media-filter-service']['port'])

    print host_addr, ' ', host_port
    handler = MediaFilterServiceHandler()
    processor = MediaFilterService.Processor(handler)
    transport = TSocket.TServerSocket(host=host_addr, port=host_port)
    tfactory = TTransport.TFramedTransportFactory()
    pfactory = TBinaryProtocol.TBinaryProtocolFactory()

    # server = TServer.TSimpleServer(processor, transport, tfactory, pfactory)
    
    server = TServer.TThreadedServer(
        processor, transport, tfactory, pfactory)
    # server = TServer.TThreadPoolServer(
    #     processor, transport, tfactory, pfactory)

    print('Starting MediaFilterService Server...')
    server.serve()
    print('done.')