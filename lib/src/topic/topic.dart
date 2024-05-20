import 'dart:convert';

import 'package:nt4/src/network_table_instance.dart';
import 'package:nt4/src/network_table_type.dart';
import 'package:nt4/src/topic/topic_info.dart';

class Topic {
  final NetworkTableInstance instance;
  final TopicInfo info;
  final Map<String, dynamic> properties = {};

  Topic(this.instance, this.info);

  int get handle => info.handle;

  String get name => info.name;

  bool get isValid => handle != 0;

  NetworkTableType get type => info.type;

  String get typeString => type.valueStr;

  void setPersistent(bool persistent) {
    properties['persistent'] = persistent;
  }

  bool get isPersistent => properties['persistent'] ?? false;

  void setRetained(bool retained) {
    properties['retained'] = retained;
  }

  bool get isRetained => properties['retained'] ?? false;

  void setCached(bool cached) {
    // TODO
  }

  bool get iscached => false; // TODO

  String getProperties() {
    return jsonEncode(properties);
  }

  void setProperties(String propertiesStr) {
    Map<String, dynamic> props = jsonDecode(propertiesStr);

    properties.clear();
    for (String key in props.keys) {
      props[key] = props[key];
    }
  }

  @override
  bool operator ==(Object other) {
    return other is Topic &&
        other.runtimeType == runtimeType &&
        info.handle == other.handle;
  }

  @override
  int get hashCode => handle;
}
