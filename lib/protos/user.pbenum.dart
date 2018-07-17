///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class UserLevel extends ProtobufEnum {
  static const UserLevel LEVEL_UNSPECIFIED = const UserLevel._(0, 'LEVEL_UNSPECIFIED');
  static const UserLevel DEFAULT = const UserLevel._(1, 'DEFAULT');
  static const UserLevel ADMIN = const UserLevel._(2, 'ADMIN');

  static const List<UserLevel> values = const <UserLevel> [
    LEVEL_UNSPECIFIED,
    DEFAULT,
    ADMIN,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static UserLevel valueOf(int value) => _byValue[value] as UserLevel;
  static void $checkItem(UserLevel v) {
    if (v is! UserLevel) checkItemFailed(v, 'UserLevel');
  }

  const UserLevel._(int v, String n) : super(v, n);
}

