///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'block.pb.dart';

import 'neighborhood.pbenum.dart';

export 'neighborhood.pbenum.dart';

class CreateNeighborhoodRequest_CreateNeighborhoodInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateNeighborhoodRequest_CreateNeighborhoodInfo')
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  CreateNeighborhoodRequest_CreateNeighborhoodInfo() : super();
  CreateNeighborhoodRequest_CreateNeighborhoodInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateNeighborhoodRequest_CreateNeighborhoodInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateNeighborhoodRequest_CreateNeighborhoodInfo clone() => new CreateNeighborhoodRequest_CreateNeighborhoodInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateNeighborhoodRequest_CreateNeighborhoodInfo create() => new CreateNeighborhoodRequest_CreateNeighborhoodInfo();
  static PbList<CreateNeighborhoodRequest_CreateNeighborhoodInfo> createRepeated() => new PbList<CreateNeighborhoodRequest_CreateNeighborhoodInfo>();
  static CreateNeighborhoodRequest_CreateNeighborhoodInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateNeighborhoodRequest_CreateNeighborhoodInfo();
    return _defaultInstance;
  }
  static CreateNeighborhoodRequest_CreateNeighborhoodInfo _defaultInstance;
  static void $checkItem(CreateNeighborhoodRequest_CreateNeighborhoodInfo v) {
    if (v is! CreateNeighborhoodRequest_CreateNeighborhoodInfo) checkItemFailed(v, 'CreateNeighborhoodRequest_CreateNeighborhoodInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class _ReadonlyCreateNeighborhoodRequest_CreateNeighborhoodInfo extends CreateNeighborhoodRequest_CreateNeighborhoodInfo with ReadonlyMessageMixin {}

class CreateNeighborhoodRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateNeighborhoodRequest')
    ..aOS(1, 'cityId')
    ..a<CreateNeighborhoodRequest_CreateNeighborhoodInfo>(2, 'info', PbFieldType.OM, CreateNeighborhoodRequest_CreateNeighborhoodInfo.getDefault, CreateNeighborhoodRequest_CreateNeighborhoodInfo.create)
    ..hasRequiredFields = false
  ;

  CreateNeighborhoodRequest() : super();
  CreateNeighborhoodRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateNeighborhoodRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateNeighborhoodRequest clone() => new CreateNeighborhoodRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateNeighborhoodRequest create() => new CreateNeighborhoodRequest();
  static PbList<CreateNeighborhoodRequest> createRepeated() => new PbList<CreateNeighborhoodRequest>();
  static CreateNeighborhoodRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateNeighborhoodRequest();
    return _defaultInstance;
  }
  static CreateNeighborhoodRequest _defaultInstance;
  static void $checkItem(CreateNeighborhoodRequest v) {
    if (v is! CreateNeighborhoodRequest) checkItemFailed(v, 'CreateNeighborhoodRequest');
  }

  String get cityId => $_getS(0, '');
  set cityId(String v) { $_setString(0, v); }
  bool hasCityId() => $_has(0);
  void clearCityId() => clearField(1);

  CreateNeighborhoodRequest_CreateNeighborhoodInfo get info => $_getN(1);
  set info(CreateNeighborhoodRequest_CreateNeighborhoodInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyCreateNeighborhoodRequest extends CreateNeighborhoodRequest with ReadonlyMessageMixin {}

class ListNeighborhoodsResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListNeighborhoodsResponse')
    ..pp<Neighborhood>(1, 'neighborhoods', PbFieldType.PM, Neighborhood.$checkItem, Neighborhood.create)
    ..hasRequiredFields = false
  ;

  ListNeighborhoodsResponse() : super();
  ListNeighborhoodsResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListNeighborhoodsResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListNeighborhoodsResponse clone() => new ListNeighborhoodsResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListNeighborhoodsResponse create() => new ListNeighborhoodsResponse();
  static PbList<ListNeighborhoodsResponse> createRepeated() => new PbList<ListNeighborhoodsResponse>();
  static ListNeighborhoodsResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListNeighborhoodsResponse();
    return _defaultInstance;
  }
  static ListNeighborhoodsResponse _defaultInstance;
  static void $checkItem(ListNeighborhoodsResponse v) {
    if (v is! ListNeighborhoodsResponse) checkItemFailed(v, 'ListNeighborhoodsResponse');
  }

  List<Neighborhood> get neighborhoods => $_getList(0);
}

class _ReadonlyListNeighborhoodsResponse extends ListNeighborhoodsResponse with ReadonlyMessageMixin {}

class UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo')
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo() : super();
  UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo clone() => new UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo create() => new UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo();
  static PbList<UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo> createRepeated() => new PbList<UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo>();
  static UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo();
    return _defaultInstance;
  }
  static UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo _defaultInstance;
  static void $checkItem(UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo v) {
    if (v is! UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo) checkItemFailed(v, 'UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class _ReadonlyUpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo extends UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo with ReadonlyMessageMixin {}

class UpdateNeighborhoodInfoRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateNeighborhoodInfoRequest')
    ..aOS(1, 'id')
    ..a<UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo>(2, 'info', PbFieldType.OM, UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo.getDefault, UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateNeighborhoodInfoRequest() : super();
  UpdateNeighborhoodInfoRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateNeighborhoodInfoRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateNeighborhoodInfoRequest clone() => new UpdateNeighborhoodInfoRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateNeighborhoodInfoRequest create() => new UpdateNeighborhoodInfoRequest();
  static PbList<UpdateNeighborhoodInfoRequest> createRepeated() => new PbList<UpdateNeighborhoodInfoRequest>();
  static UpdateNeighborhoodInfoRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateNeighborhoodInfoRequest();
    return _defaultInstance;
  }
  static UpdateNeighborhoodInfoRequest _defaultInstance;
  static void $checkItem(UpdateNeighborhoodInfoRequest v) {
    if (v is! UpdateNeighborhoodInfoRequest) checkItemFailed(v, 'UpdateNeighborhoodInfoRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo get info => $_getN(1);
  set info(UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyUpdateNeighborhoodInfoRequest extends UpdateNeighborhoodInfoRequest with ReadonlyMessageMixin {}

class UpdateNeighborhoodStatusRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateNeighborhoodStatusRequest')
    ..aOS(1, 'id')
    ..e<NeighborhoodStatus>(2, 'status', PbFieldType.OE, NeighborhoodStatus.NEIGHBORHOOD_STATUS_UNSPECIFIED, NeighborhoodStatus.valueOf, NeighborhoodStatus.values)
    ..hasRequiredFields = false
  ;

  UpdateNeighborhoodStatusRequest() : super();
  UpdateNeighborhoodStatusRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateNeighborhoodStatusRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateNeighborhoodStatusRequest clone() => new UpdateNeighborhoodStatusRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateNeighborhoodStatusRequest create() => new UpdateNeighborhoodStatusRequest();
  static PbList<UpdateNeighborhoodStatusRequest> createRepeated() => new PbList<UpdateNeighborhoodStatusRequest>();
  static UpdateNeighborhoodStatusRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateNeighborhoodStatusRequest();
    return _defaultInstance;
  }
  static UpdateNeighborhoodStatusRequest _defaultInstance;
  static void $checkItem(UpdateNeighborhoodStatusRequest v) {
    if (v is! UpdateNeighborhoodStatusRequest) checkItemFailed(v, 'UpdateNeighborhoodStatusRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  NeighborhoodStatus get status => $_getN(1);
  set status(NeighborhoodStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class _ReadonlyUpdateNeighborhoodStatusRequest extends UpdateNeighborhoodStatusRequest with ReadonlyMessageMixin {}

class AssignNeighborhoodToCityRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AssignNeighborhoodToCityRequest')
    ..aOS(1, 'id')
    ..aOS(2, 'cityId')
    ..hasRequiredFields = false
  ;

  AssignNeighborhoodToCityRequest() : super();
  AssignNeighborhoodToCityRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AssignNeighborhoodToCityRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AssignNeighborhoodToCityRequest clone() => new AssignNeighborhoodToCityRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AssignNeighborhoodToCityRequest create() => new AssignNeighborhoodToCityRequest();
  static PbList<AssignNeighborhoodToCityRequest> createRepeated() => new PbList<AssignNeighborhoodToCityRequest>();
  static AssignNeighborhoodToCityRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAssignNeighborhoodToCityRequest();
    return _defaultInstance;
  }
  static AssignNeighborhoodToCityRequest _defaultInstance;
  static void $checkItem(AssignNeighborhoodToCityRequest v) {
    if (v is! AssignNeighborhoodToCityRequest) checkItemFailed(v, 'AssignNeighborhoodToCityRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get cityId => $_getS(1, '');
  set cityId(String v) { $_setString(1, v); }
  bool hasCityId() => $_has(1);
  void clearCityId() => clearField(2);
}

class _ReadonlyAssignNeighborhoodToCityRequest extends AssignNeighborhoodToCityRequest with ReadonlyMessageMixin {}

class Neighborhood extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Neighborhood')
    ..aOS(1, 'id')
    ..e<NeighborhoodStatus>(2, 'status', PbFieldType.OE, NeighborhoodStatus.NEIGHBORHOOD_STATUS_UNSPECIFIED, NeighborhoodStatus.valueOf, NeighborhoodStatus.values)
    ..aOS(3, 'cityId')
    ..aOS(4, 'name')
    ..pp<Block>(5, 'blocks', PbFieldType.PM, Block.$checkItem, Block.create)
    ..hasRequiredFields = false
  ;

  Neighborhood() : super();
  Neighborhood.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Neighborhood.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Neighborhood clone() => new Neighborhood()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Neighborhood create() => new Neighborhood();
  static PbList<Neighborhood> createRepeated() => new PbList<Neighborhood>();
  static Neighborhood getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyNeighborhood();
    return _defaultInstance;
  }
  static Neighborhood _defaultInstance;
  static void $checkItem(Neighborhood v) {
    if (v is! Neighborhood) checkItemFailed(v, 'Neighborhood');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  NeighborhoodStatus get status => $_getN(1);
  set status(NeighborhoodStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);

  String get cityId => $_getS(2, '');
  set cityId(String v) { $_setString(2, v); }
  bool hasCityId() => $_has(2);
  void clearCityId() => clearField(3);

  String get name => $_getS(3, '');
  set name(String v) { $_setString(3, v); }
  bool hasName() => $_has(3);
  void clearName() => clearField(4);

  List<Block> get blocks => $_getList(4);
}

class _ReadonlyNeighborhood extends Neighborhood with ReadonlyMessageMixin {}

