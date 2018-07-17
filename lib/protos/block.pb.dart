///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'bounds.pb.dart';
import 'attraction.pb.dart';

import 'block.pbenum.dart';

export 'block.pbenum.dart';

class CreateBlockRequest_CreateBlockInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateBlockRequest_CreateBlockInfo')
    ..aOS(1, 'name')
    ..a<Bounds>(2, 'bounds', PbFieldType.OM, Bounds.getDefault, Bounds.create)
    ..hasRequiredFields = false
  ;

  CreateBlockRequest_CreateBlockInfo() : super();
  CreateBlockRequest_CreateBlockInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateBlockRequest_CreateBlockInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateBlockRequest_CreateBlockInfo clone() => new CreateBlockRequest_CreateBlockInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateBlockRequest_CreateBlockInfo create() => new CreateBlockRequest_CreateBlockInfo();
  static PbList<CreateBlockRequest_CreateBlockInfo> createRepeated() => new PbList<CreateBlockRequest_CreateBlockInfo>();
  static CreateBlockRequest_CreateBlockInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateBlockRequest_CreateBlockInfo();
    return _defaultInstance;
  }
  static CreateBlockRequest_CreateBlockInfo _defaultInstance;
  static void $checkItem(CreateBlockRequest_CreateBlockInfo v) {
    if (v is! CreateBlockRequest_CreateBlockInfo) checkItemFailed(v, 'CreateBlockRequest_CreateBlockInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  Bounds get bounds => $_getN(1);
  set bounds(Bounds v) { setField(2, v); }
  bool hasBounds() => $_has(1);
  void clearBounds() => clearField(2);
}

class _ReadonlyCreateBlockRequest_CreateBlockInfo extends CreateBlockRequest_CreateBlockInfo with ReadonlyMessageMixin {}

class CreateBlockRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateBlockRequest')
    ..aOS(1, 'neighborhoodId')
    ..a<CreateBlockRequest_CreateBlockInfo>(2, 'info', PbFieldType.OM, CreateBlockRequest_CreateBlockInfo.getDefault, CreateBlockRequest_CreateBlockInfo.create)
    ..hasRequiredFields = false
  ;

  CreateBlockRequest() : super();
  CreateBlockRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateBlockRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateBlockRequest clone() => new CreateBlockRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateBlockRequest create() => new CreateBlockRequest();
  static PbList<CreateBlockRequest> createRepeated() => new PbList<CreateBlockRequest>();
  static CreateBlockRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateBlockRequest();
    return _defaultInstance;
  }
  static CreateBlockRequest _defaultInstance;
  static void $checkItem(CreateBlockRequest v) {
    if (v is! CreateBlockRequest) checkItemFailed(v, 'CreateBlockRequest');
  }

  String get neighborhoodId => $_getS(0, '');
  set neighborhoodId(String v) { $_setString(0, v); }
  bool hasNeighborhoodId() => $_has(0);
  void clearNeighborhoodId() => clearField(1);

  CreateBlockRequest_CreateBlockInfo get info => $_getN(1);
  set info(CreateBlockRequest_CreateBlockInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyCreateBlockRequest extends CreateBlockRequest with ReadonlyMessageMixin {}

class ListBlocksResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListBlocksResponse')
    ..pp<Block>(1, 'blocks', PbFieldType.PM, Block.$checkItem, Block.create)
    ..hasRequiredFields = false
  ;

  ListBlocksResponse() : super();
  ListBlocksResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListBlocksResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListBlocksResponse clone() => new ListBlocksResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListBlocksResponse create() => new ListBlocksResponse();
  static PbList<ListBlocksResponse> createRepeated() => new PbList<ListBlocksResponse>();
  static ListBlocksResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListBlocksResponse();
    return _defaultInstance;
  }
  static ListBlocksResponse _defaultInstance;
  static void $checkItem(ListBlocksResponse v) {
    if (v is! ListBlocksResponse) checkItemFailed(v, 'ListBlocksResponse');
  }

  List<Block> get blocks => $_getList(0);
}

class _ReadonlyListBlocksResponse extends ListBlocksResponse with ReadonlyMessageMixin {}

class UpdateBlockInfoRequest_UpdateBlockInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateBlockInfoRequest_UpdateBlockInfo')
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  UpdateBlockInfoRequest_UpdateBlockInfo() : super();
  UpdateBlockInfoRequest_UpdateBlockInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateBlockInfoRequest_UpdateBlockInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateBlockInfoRequest_UpdateBlockInfo clone() => new UpdateBlockInfoRequest_UpdateBlockInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateBlockInfoRequest_UpdateBlockInfo create() => new UpdateBlockInfoRequest_UpdateBlockInfo();
  static PbList<UpdateBlockInfoRequest_UpdateBlockInfo> createRepeated() => new PbList<UpdateBlockInfoRequest_UpdateBlockInfo>();
  static UpdateBlockInfoRequest_UpdateBlockInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateBlockInfoRequest_UpdateBlockInfo();
    return _defaultInstance;
  }
  static UpdateBlockInfoRequest_UpdateBlockInfo _defaultInstance;
  static void $checkItem(UpdateBlockInfoRequest_UpdateBlockInfo v) {
    if (v is! UpdateBlockInfoRequest_UpdateBlockInfo) checkItemFailed(v, 'UpdateBlockInfoRequest_UpdateBlockInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class _ReadonlyUpdateBlockInfoRequest_UpdateBlockInfo extends UpdateBlockInfoRequest_UpdateBlockInfo with ReadonlyMessageMixin {}

class UpdateBlockInfoRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateBlockInfoRequest')
    ..aOS(1, 'id')
    ..a<UpdateBlockInfoRequest_UpdateBlockInfo>(2, 'info', PbFieldType.OM, UpdateBlockInfoRequest_UpdateBlockInfo.getDefault, UpdateBlockInfoRequest_UpdateBlockInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateBlockInfoRequest() : super();
  UpdateBlockInfoRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateBlockInfoRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateBlockInfoRequest clone() => new UpdateBlockInfoRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateBlockInfoRequest create() => new UpdateBlockInfoRequest();
  static PbList<UpdateBlockInfoRequest> createRepeated() => new PbList<UpdateBlockInfoRequest>();
  static UpdateBlockInfoRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateBlockInfoRequest();
    return _defaultInstance;
  }
  static UpdateBlockInfoRequest _defaultInstance;
  static void $checkItem(UpdateBlockInfoRequest v) {
    if (v is! UpdateBlockInfoRequest) checkItemFailed(v, 'UpdateBlockInfoRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateBlockInfoRequest_UpdateBlockInfo get info => $_getN(1);
  set info(UpdateBlockInfoRequest_UpdateBlockInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyUpdateBlockInfoRequest extends UpdateBlockInfoRequest with ReadonlyMessageMixin {}

class UpdateBlockStatusRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateBlockStatusRequest')
    ..aOS(1, 'id')
    ..e<BlockStatus>(2, 'status', PbFieldType.OE, BlockStatus.BLOCK_STATUS_UNSPECIFIED, BlockStatus.valueOf, BlockStatus.values)
    ..hasRequiredFields = false
  ;

  UpdateBlockStatusRequest() : super();
  UpdateBlockStatusRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateBlockStatusRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateBlockStatusRequest clone() => new UpdateBlockStatusRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateBlockStatusRequest create() => new UpdateBlockStatusRequest();
  static PbList<UpdateBlockStatusRequest> createRepeated() => new PbList<UpdateBlockStatusRequest>();
  static UpdateBlockStatusRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateBlockStatusRequest();
    return _defaultInstance;
  }
  static UpdateBlockStatusRequest _defaultInstance;
  static void $checkItem(UpdateBlockStatusRequest v) {
    if (v is! UpdateBlockStatusRequest) checkItemFailed(v, 'UpdateBlockStatusRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  BlockStatus get status => $_getN(1);
  set status(BlockStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class _ReadonlyUpdateBlockStatusRequest extends UpdateBlockStatusRequest with ReadonlyMessageMixin {}

class UpdateBlockBoundsRequest_UpdateBlockBounds extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateBlockBoundsRequest_UpdateBlockBounds')
    ..a<Bounds>(1, 'bounds', PbFieldType.OM, Bounds.getDefault, Bounds.create)
    ..hasRequiredFields = false
  ;

  UpdateBlockBoundsRequest_UpdateBlockBounds() : super();
  UpdateBlockBoundsRequest_UpdateBlockBounds.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateBlockBoundsRequest_UpdateBlockBounds.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateBlockBoundsRequest_UpdateBlockBounds clone() => new UpdateBlockBoundsRequest_UpdateBlockBounds()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateBlockBoundsRequest_UpdateBlockBounds create() => new UpdateBlockBoundsRequest_UpdateBlockBounds();
  static PbList<UpdateBlockBoundsRequest_UpdateBlockBounds> createRepeated() => new PbList<UpdateBlockBoundsRequest_UpdateBlockBounds>();
  static UpdateBlockBoundsRequest_UpdateBlockBounds getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateBlockBoundsRequest_UpdateBlockBounds();
    return _defaultInstance;
  }
  static UpdateBlockBoundsRequest_UpdateBlockBounds _defaultInstance;
  static void $checkItem(UpdateBlockBoundsRequest_UpdateBlockBounds v) {
    if (v is! UpdateBlockBoundsRequest_UpdateBlockBounds) checkItemFailed(v, 'UpdateBlockBoundsRequest_UpdateBlockBounds');
  }

  Bounds get bounds => $_getN(0);
  set bounds(Bounds v) { setField(1, v); }
  bool hasBounds() => $_has(0);
  void clearBounds() => clearField(1);
}

class _ReadonlyUpdateBlockBoundsRequest_UpdateBlockBounds extends UpdateBlockBoundsRequest_UpdateBlockBounds with ReadonlyMessageMixin {}

class UpdateBlockBoundsRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateBlockBoundsRequest')
    ..aOS(1, 'id')
    ..a<UpdateBlockBoundsRequest_UpdateBlockBounds>(2, 'update', PbFieldType.OM, UpdateBlockBoundsRequest_UpdateBlockBounds.getDefault, UpdateBlockBoundsRequest_UpdateBlockBounds.create)
    ..hasRequiredFields = false
  ;

  UpdateBlockBoundsRequest() : super();
  UpdateBlockBoundsRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateBlockBoundsRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateBlockBoundsRequest clone() => new UpdateBlockBoundsRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateBlockBoundsRequest create() => new UpdateBlockBoundsRequest();
  static PbList<UpdateBlockBoundsRequest> createRepeated() => new PbList<UpdateBlockBoundsRequest>();
  static UpdateBlockBoundsRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateBlockBoundsRequest();
    return _defaultInstance;
  }
  static UpdateBlockBoundsRequest _defaultInstance;
  static void $checkItem(UpdateBlockBoundsRequest v) {
    if (v is! UpdateBlockBoundsRequest) checkItemFailed(v, 'UpdateBlockBoundsRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateBlockBoundsRequest_UpdateBlockBounds get update => $_getN(1);
  set update(UpdateBlockBoundsRequest_UpdateBlockBounds v) { setField(2, v); }
  bool hasUpdate() => $_has(1);
  void clearUpdate() => clearField(2);
}

class _ReadonlyUpdateBlockBoundsRequest extends UpdateBlockBoundsRequest with ReadonlyMessageMixin {}

class AssignBlockToNeighborhoodRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AssignBlockToNeighborhoodRequest')
    ..aOS(1, 'id')
    ..aOS(2, 'neighborhoodId')
    ..hasRequiredFields = false
  ;

  AssignBlockToNeighborhoodRequest() : super();
  AssignBlockToNeighborhoodRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AssignBlockToNeighborhoodRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AssignBlockToNeighborhoodRequest clone() => new AssignBlockToNeighborhoodRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AssignBlockToNeighborhoodRequest create() => new AssignBlockToNeighborhoodRequest();
  static PbList<AssignBlockToNeighborhoodRequest> createRepeated() => new PbList<AssignBlockToNeighborhoodRequest>();
  static AssignBlockToNeighborhoodRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAssignBlockToNeighborhoodRequest();
    return _defaultInstance;
  }
  static AssignBlockToNeighborhoodRequest _defaultInstance;
  static void $checkItem(AssignBlockToNeighborhoodRequest v) {
    if (v is! AssignBlockToNeighborhoodRequest) checkItemFailed(v, 'AssignBlockToNeighborhoodRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get neighborhoodId => $_getS(1, '');
  set neighborhoodId(String v) { $_setString(1, v); }
  bool hasNeighborhoodId() => $_has(1);
  void clearNeighborhoodId() => clearField(2);
}

class _ReadonlyAssignBlockToNeighborhoodRequest extends AssignBlockToNeighborhoodRequest with ReadonlyMessageMixin {}

class Block extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Block')
    ..aOS(1, 'id')
    ..e<BlockStatus>(2, 'status', PbFieldType.OE, BlockStatus.BLOCK_STATUS_UNSPECIFIED, BlockStatus.valueOf, BlockStatus.values)
    ..aOS(3, 'neighborhoodId')
    ..aOS(4, 'name')
    ..a<Bounds>(5, 'bounds', PbFieldType.OM, Bounds.getDefault, Bounds.create)
    ..pp<Attraction>(6, 'attractions', PbFieldType.PM, Attraction.$checkItem, Attraction.create)
    ..hasRequiredFields = false
  ;

  Block() : super();
  Block.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Block.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Block clone() => new Block()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Block create() => new Block();
  static PbList<Block> createRepeated() => new PbList<Block>();
  static Block getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyBlock();
    return _defaultInstance;
  }
  static Block _defaultInstance;
  static void $checkItem(Block v) {
    if (v is! Block) checkItemFailed(v, 'Block');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  BlockStatus get status => $_getN(1);
  set status(BlockStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);

  String get neighborhoodId => $_getS(2, '');
  set neighborhoodId(String v) { $_setString(2, v); }
  bool hasNeighborhoodId() => $_has(2);
  void clearNeighborhoodId() => clearField(3);

  String get name => $_getS(3, '');
  set name(String v) { $_setString(3, v); }
  bool hasName() => $_has(3);
  void clearName() => clearField(4);

  Bounds get bounds => $_getN(4);
  set bounds(Bounds v) { setField(5, v); }
  bool hasBounds() => $_has(4);
  void clearBounds() => clearField(5);

  List<Attraction> get attractions => $_getList(5);
}

class _ReadonlyBlock extends Block with ReadonlyMessageMixin {}

