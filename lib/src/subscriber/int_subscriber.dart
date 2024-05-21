import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/int_topic.dart';

abstract class IntSubscriber extends Subscriber {
  @override
  IntTopic get topic;

  int get([int? defaultValue]);

  (DateTime timestamp, int value)? getAtomic([int? defaultValue]);

  List<(DateTime timestamp, int value)> readQueue();

  List<int> readQueueValues();
}
