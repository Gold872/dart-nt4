import 'dart:typed_data';

import 'package:nt4/src/subscriber/subscriber.dart';
import 'package:nt4/src/topic/raw_topic.dart';

abstract class RawSubscriber extends Subscriber {
  @override
  RawTopic get topic;

  Uint8List get([Uint8List? defaultValue]);

  (DateTime timestamp, Uint8List value)? getAtomic([Uint8List? defaultValue]);

  List<(DateTime timestamp, Uint8List value)> readQueue();

  List<Uint8List> readQueueValues();
}
