import sys
sys.path.append('../gen-py')

import uuid
from social_network import MediaFilterService

from thrift import Thrift
from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol

import base64

def main():
  images_dir = '../../wrk2/scripts/social-network/images/'
  medium = []
  media_types = []
  for i in range(1, 3):
    media_types += ['jpg']
    with open(str(i) + ".jpg", "rb") as img_file:
      base64_img = base64.b64encode(img_file.read()).decode('utf-8')
      print(base64_img)
      medium.append(base64_img)
    media_types += ['png']

    with open(str(i) + ".png", "rb") as img_file:
      base64_img = base64.b64encode(img_file.read()).decode('utf-8')
      print(base64_img)
      medium.append(base64_img)
    media_types += ['png']

  socket = TSocket.TSocket(host='localhost', port=40000)
  transport = TTransport.TFramedTransport(socket)
  protocol = TBinaryProtocol.TBinaryProtocol(transport)
  client = MediaFilterService.Client(protocol)

  req_id = uuid.uuid4().int & 0x7FFFFFFFFFFFFFFF
  transport.open()

  print(client.UploadMedia(req_id, media_types, medium, {}))
  transport.close()

if __name__ == '__main__':
  try:
    main()
  except Thrift.TException as tx:
    print('%s' % tx.message)
