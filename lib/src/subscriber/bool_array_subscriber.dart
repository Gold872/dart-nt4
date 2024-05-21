import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/bool_array_topic.dart';

abstract class BoolArraySubscriber extends Subscriber {
  @override
  BoolArrayTopic get topic;

  List<bool> get([List<bool>? defaultValue]);

  (DateTime timestamp, List<bool> value)? getAtomic([List<bool>? defaultValue]);

  List<(DateTime timestamp, List<bool> value)> readQueue();

  List<List<bool>> readQueueValues();
}
