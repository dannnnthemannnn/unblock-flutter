///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class AttractionStatus extends ProtobufEnum {
  static const AttractionStatus ATTRACTION_STATUS_UNSPECIFIED = const AttractionStatus._(0, 'ATTRACTION_STATUS_UNSPECIFIED');
  static const AttractionStatus ATTRACTION_LIVE = const AttractionStatus._(1, 'ATTRACTION_LIVE');
  static const AttractionStatus ATTRACTION_DISABLED = const AttractionStatus._(2, 'ATTRACTION_DISABLED');

  static const List<AttractionStatus> values = const <AttractionStatus> [
    ATTRACTION_STATUS_UNSPECIFIED,
    ATTRACTION_LIVE,
    ATTRACTION_DISABLED,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static AttractionStatus valueOf(int value) => _byValue[value] as AttractionStatus;
  static void $checkItem(AttractionStatus v) {
    if (v is! AttractionStatus) checkItemFailed(v, 'AttractionStatus');
  }

  const AttractionStatus._(int v, String n) : super(v, n);
}

