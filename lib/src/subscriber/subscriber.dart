import 'package:nt4/src/pubsub.dart';

abstract class Subscriber extends PubSub {
  bool get exists;

  DateTime get lastChange;
}
