///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart';

class BlockStatus extends ProtobufEnum {
  static const BlockStatus BLOCK_STATUS_UNSPECIFIED = const BlockStatus._(0, 'BLOCK_STATUS_UNSPECIFIED');
  static const BlockStatus BLOCK_LIVE = const BlockStatus._(1, 'BLOCK_LIVE');
  static const BlockStatus BLOCK_DISABLED = const BlockStatus._(2, 'BLOCK_DISABLED');

  static const List<BlockStatus> values = const <BlockStatus> [
    BLOCK_STATUS_UNSPECIFIED,
    BLOCK_LIVE,
    BLOCK_DISABLED,
  ];

  static final Map<int, dynamic> _byValue = ProtobufEnum.initByValue(values);
  static BlockStatus valueOf(int value) => _byValue[value] as BlockStatus;
  static void $checkItem(BlockStatus v) {
    if (v is! BlockStatus) checkItemFailed(v, 'BlockStatus');
  }

  const BlockStatus._(int v, String n) : super(v, n);
}

