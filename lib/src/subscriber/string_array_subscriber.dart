import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/string_array_topic.dart';

abstract class StringArraySubscriber extends Subscriber {
  @override
  StringArrayTopic get topic;

  List<String> get([List<String>? defaultValue]);

  (DateTime timestamp, List<String> value)? getAtomic(
      [List<String>? defaultValue]);

  List<(DateTime timestamp, List<String> value)> readQueue();

  List<List<String>> readQueueValues();
}
