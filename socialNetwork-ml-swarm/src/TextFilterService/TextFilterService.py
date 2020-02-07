import glob
import sys
import os
import json
sys.path.append('../../gen-py')
# sys.path.insert(0, glob.glob('../../lib/py/build/lib*')[0])

from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol
from thrift.server import TServer

from social_network import TextFilterService

import warnings
# warnings.filterwarnings("ignore", category=FutureWarning)
# warnings.filterwarnings("ignore", category=UserWarning)

import numpy as np
from sklearn.externals import joblib

class TextFilterHandler:
    def __init__(self):
        # pass
        # test if parallel procecssing works
        self.vectorizer = joblib.load('./data/vectorizer.joblib')
        self.model = joblib.load('./data/model.joblib')

    def UploadText(self, req_id, text, carrier):
        # assume 1 text snippet in each post
        probs = self.model.predict(self.vectorizer.transform([text]))
        return probs[0]

if __name__ == '__main__':
    assert(os.path.isfile('/config/service-config.json'))
    text_filter_addr = ''
    text_filter_port = 0
    with open('/config/service-config.json', 'r') as config_json:
        config = json.load(config_json)
        text_filter_addr = config['text-filter-service']['addr']
        text_filter_port = config['text-filter-service']['port']

    handler = TextFilterHandler()
    processor = TextFilterService.Processor(handler)
    transport = TSocket.TServerSocket(host=text_filter_addr, port=text_filter_port)
    tfactory = TTransport.TBufferedTransportFactory()
    pfactory = TBinaryProtocol.TBinaryProtocolFactory()

    server = TServer.TThreadedServer(
        processor, transport, tfactory, pfactory)
    # server = TServer.TThreadPoolServer(
    #     processor, transport, tfactory, pfactory)

    print('Starting TextFilterService...')
    server.serve()
    print('done.')