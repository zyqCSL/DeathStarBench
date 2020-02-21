// This autogenerated skeleton file illustrates how to build a server.
// You should copy it to another filename to avoid overwriting it.

#include "MediaFilterService.h"
#include <thrift/protocol/TBinaryProtocol.h>
#include <thrift/server/TSimpleServer.h>
#include <thrift/transport/TServerSocket.h>
#include <thrift/transport/TBufferTransports.h>

using namespace ::apache::thrift;
using namespace ::apache::thrift::protocol;
using namespace ::apache::thrift::transport;
using namespace ::apache::thrift::server;

using namespace  ::social_network;

class MediaFilterServiceHandler : virtual public MediaFilterServiceIf {
 public:
  MediaFilterServiceHandler() {
    // Your initialization goes here
  }

  void UploadMedia(std::vector<bool> & _return, const int64_t req_id, const std::vector<std::string> & media_types, const std::vector<std::string> & medium, const std::map<std::string, std::string> & carrier) {
    // Your implementation goes here
    printf("UploadMedia\n");
  }

};

int main(int argc, char **argv) {
  int port = 9090;
  ::apache::thrift::stdcxx::shared_ptr<MediaFilterServiceHandler> handler(new MediaFilterServiceHandler());
  ::apache::thrift::stdcxx::shared_ptr<TProcessor> processor(new MediaFilterServiceProcessor(handler));
  ::apache::thrift::stdcxx::shared_ptr<TServerTransport> serverTransport(new TServerSocket(port));
  ::apache::thrift::stdcxx::shared_ptr<TTransportFactory> transportFactory(new TBufferedTransportFactory());
  ::apache::thrift::stdcxx::shared_ptr<TProtocolFactory> protocolFactory(new TBinaryProtocolFactory());

  TSimpleServer server(processor, serverTransport, transportFactory, protocolFactory);
  server.serve();
  return 0;
}

