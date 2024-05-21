import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/double_array_topic.dart';

abstract class DoubleArraySubscriber extends Subscriber {
  @override
  DoubleArrayTopic get topic;

  List<double> get([List<double>? defaultValue]);

  (DateTime timestamp, List<double> value)? getAtomic(
      [List<double>? defaultValue]);

  List<(DateTime timestamp, List<double> value)> readQueue();

  List<List<double>> readQueueValues();
}
