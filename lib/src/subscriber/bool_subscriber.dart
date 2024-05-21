import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/bool_topic.dart';

abstract class BoolSubscriber extends Subscriber {
  @override
  BoolTopic get topic;

  bool get([bool? defaultValue]);

  (DateTime timestamp, bool value)? getAtomic([bool? defaultValue]);

  List<(DateTime timestamp, bool value)> readQueue();

  List<bool> readQueueValues();
}
