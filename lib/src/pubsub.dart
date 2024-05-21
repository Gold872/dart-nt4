import 'package:nt4/src/topic/topic.dart';

abstract class PubSub {
  void dispose();

  Topic get topic;

  bool get isValid;

  int get handle;
}
