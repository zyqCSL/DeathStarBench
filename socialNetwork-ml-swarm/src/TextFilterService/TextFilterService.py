import glob
import sys
import os
import json
import logging
sys.path.append('../../gen-py')
# sys.path.insert(0, glob.glob('../../lib/py/build/lib*')[0])

from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol
from thrift.server import TServer

from social_network import TextFilterService

# import warnings
# warnings.filterwarnings("ignore", category=FutureWarning)
# warnings.filterwarnings("ignore", category=UserWarning)

# import numpy as np

# from sklearn.externals import joblib

class TextFilterServiceHandler:
    def __init__(self):
        pass
        # test if parallel procecssing works

    def UploadText(self, req_id, text, carrier):
        # assume 1 text snippet in each post
        print 'recv text = ', text
        print 'what the fuck'
        # vectorizer = joblib.load('./data/vectorizer.joblib')
        # model = joblib.load('./data/model.joblib')
        # probs = model.predict(vectorizer.transform([text]))
        # return probs[0]
        return False

if __name__ == '__main__':
    host_addr = 'localhost'
    host_port = 40000
    with open('../../config/service-config.json', 'r') as f:
        config_json_data = json.load(f)
        host_addr = config_json_data['text-filter-service']['addr']
        host_port = int(config_json_data['text-filter-service']['port'])

    print host_addr, ' ', host_port
    handler = TextFilterServiceHandler()
    processor = TextFilterService.Processor(handler)
    transport = TSocket.TServerSocket(host=host_addr, port=host_port)
    tfactory = TTransport.TFramedTransportFactory()
    pfactory = TBinaryProtocol.TBinaryProtocolFactory()

    # server = TServer.TSimpleServer(processor, transport, tfactory, pfactory)
    
    server = TServer.TThreadedServer(
        processor, transport, tfactory, pfactory)
    # server = TServer.TThreadPoolServer(
    #     processor, transport, tfactory, pfactory)

    print('Starting TextFilterService Server...')
    server.serve()
    print('done.')
