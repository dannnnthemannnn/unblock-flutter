///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class NeighborhoodStatus extends ProtobufEnum {
  static const NeighborhoodStatus NEIGHBORHOOD_STATUS_UNSPECIFIED = const NeighborhoodStatus._(0, 'NEIGHBORHOOD_STATUS_UNSPECIFIED');
  static const NeighborhoodStatus NEIGHBORHOOD_LIVE = const NeighborhoodStatus._(1, 'NEIGHBORHOOD_LIVE');
  static const NeighborhoodStatus NEIGHBORHOOD_DISABLED = const NeighborhoodStatus._(2, 'NEIGHBORHOOD_DISABLED');

  static const List<NeighborhoodStatus> values = const <NeighborhoodStatus> [
    NEIGHBORHOOD_STATUS_UNSPECIFIED,
    NEIGHBORHOOD_LIVE,
    NEIGHBORHOOD_DISABLED,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static NeighborhoodStatus valueOf(int value) => _byValue[value] as NeighborhoodStatus;
  static void $checkItem(NeighborhoodStatus v) {
    if (v is! NeighborhoodStatus) checkItemFailed(v, 'NeighborhoodStatus');
  }

  const NeighborhoodStatus._(int v, String n) : super(v, n);
}

