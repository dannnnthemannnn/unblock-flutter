///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class CityStatus extends ProtobufEnum {
  static const CityStatus CITY_STATUS_UNSPECIFIED = const CityStatus._(0, 'CITY_STATUS_UNSPECIFIED');
  static const CityStatus CITY_LIVE = const CityStatus._(1, 'CITY_LIVE');
  static const CityStatus CITY_DISABLED = const CityStatus._(2, 'CITY_DISABLED');

  static const List<CityStatus> values = const <CityStatus> [
    CITY_STATUS_UNSPECIFIED,
    CITY_LIVE,
    CITY_DISABLED,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static CityStatus valueOf(int value) => _byValue[value] as CityStatus;
  static void $checkItem(CityStatus v) {
    if (v is! CityStatus) checkItemFailed(v, 'CityStatus');
  }

  const CityStatus._(int v, String n) : super(v, n);
}

