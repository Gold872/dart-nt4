import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/int_array_topic.dart';

abstract class IntArraySubscriber extends Subscriber {
  @override
  IntArrayTopic get topic;

  List<int> get([List<int>? defaultValue]);

  (DateTime timestamp, List<int> value)? getAtomic([List<int>? defaultValue]);

  List<(DateTime timestamp, List<int> value)> readQueue();

  List<List<int>> readQueueValues();
}
