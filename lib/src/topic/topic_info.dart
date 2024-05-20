import 'package:nt4/src/network_table_instance.dart';
import 'package:nt4/src/network_table_type.dart';
import 'package:nt4/src/topic/topic.dart';

class TopicInfo {
  final NetworkTableInstance instance;
  final int handle;
  final String name;
  final NetworkTableType type;
  final String typeStr;

  Topic? _topicObj;

  TopicInfo(this.instance, this.handle, this.name, int typeInt, this.typeStr)
      : type = NetworkTableType.getFromInt(typeInt);

  Topic getTopic() {
    _topicObj ??= Topic(instance, this);
    return _topicObj!;
  }
}
