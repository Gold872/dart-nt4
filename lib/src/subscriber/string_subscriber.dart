import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/string_topic.dart';

abstract class StringSubscriber extends Subscriber {
  @override
  StringTopic get topic;

  String get([String? defaultValue]);

  (DateTime timestamp, String value)? getAtomic([String? defaultValue]);

  List<(DateTime timestamp, String value)> readQueue();

  List<String> readQueueValues();
}
