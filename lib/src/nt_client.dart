import 'dart:math';

class NTClient {
  static const int defaultPort = 5810;
  static const String defaultServer = 'localhost';

  int _port;
  String _server;
  String _name;

  NTClient({
    int port = defaultPort,
    String server = defaultServer,
  })  : _port = port,
        _server = server,
        _name = 'DartClient_${Random().nextInt(99999999)}';

  void setPort(int port) {
    _port = port;
  }

  void setServer(String server) {
    _server = server;
  }

  void start([String? name]) {
    if (name != null) {
      _name = name;
    }
  }
}
