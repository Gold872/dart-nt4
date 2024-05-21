import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/double_topic.dart';

abstract class DoubleSubscriber extends Subscriber {
  @override
  DoubleTopic get topic;

  double get([double? defaultValue]);

  (DateTime timestamp, double value)? getAtomic([double? defaultValue]);

  List<(DateTime timestamp, double value)> readQueue();

  List<double> readQueueValues();
}
