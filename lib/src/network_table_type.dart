enum NetworkTableType {
  kUnassigned(0, ''),
  kBoolean(0x01, 'boolean'),
  kDouble(0x02, 'double'),
  kString(0x04, 'string'),
  kRaw(0x08, 'raw'),
  kBooleanArray(0x10, 'boolean[]'),
  kDoubleArray(0x20, 'double[]'),
  kStringArray(0x40, 'string[]'),
  kInteger(0x100, 'int'),
  kFloat(0x200, 'float'),
  kIntegerArray(0x400, 'int[]'),
  kFloatArray(0x800, 'float[]');

  final int value;
  final String valueStr;

  const NetworkTableType(this.value, this.valueStr);

  static NetworkTableType getFromInt(int value) {
    return switch (value) {
      0x01 => NetworkTableType.kBoolean,
      0x02 => NetworkTableType.kDouble,
      0x04 => NetworkTableType.kString,
      0x08 => NetworkTableType.kRaw,
      0x10 => NetworkTableType.kBooleanArray,
      0x20 => NetworkTableType.kDoubleArray,
      0x40 => NetworkTableType.kStringArray,
      0x100 => NetworkTableType.kInteger,
      0x200 => NetworkTableType.kFloat,
      0x400 => NetworkTableType.kIntegerArray,
      0x800 => NetworkTableType.kFloatArray,
      _ => NetworkTableType.kUnassigned,
    };
  }

  static NetworkTableType getFromString(String typeString) {
    return switch (typeString) {
      'boolean' => NetworkTableType.kBoolean,
      'double' => NetworkTableType.kDouble,
      'string' => NetworkTableType.kString,
      'raw' => NetworkTableType.kRaw,
      'boolean[]' => NetworkTableType.kBooleanArray,
      'double[]' => NetworkTableType.kDoubleArray,
      'string[]' => NetworkTableType.kStringArray,
      'int' => NetworkTableType.kInteger,
      'float' => NetworkTableType.kFloat,
      'int[]' => NetworkTableType.kIntegerArray,
      'float[]' => NetworkTableType.kFloatArray,
      _ => NetworkTableType.kUnassigned,
    };
  }
}
