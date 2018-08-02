///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'point.pb.dart';

import 'attraction.pbenum.dart';

export 'attraction.pbenum.dart';

class CreateAttractionRequest_CreateAttractionInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateAttractionRequest_CreateAttractionInfo')
    ..aOS(1, 'name')
    ..a<Point>(2, 'location', PbFieldType.OM, Point.getDefault, Point.create)
    ..aOS(3, 'description')
    ..aOS(4, 'googlePlaceId')
    ..hasRequiredFields = false
  ;

  CreateAttractionRequest_CreateAttractionInfo() : super();
  CreateAttractionRequest_CreateAttractionInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateAttractionRequest_CreateAttractionInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateAttractionRequest_CreateAttractionInfo clone() => new CreateAttractionRequest_CreateAttractionInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateAttractionRequest_CreateAttractionInfo create() => new CreateAttractionRequest_CreateAttractionInfo();
  static PbList<CreateAttractionRequest_CreateAttractionInfo> createRepeated() => new PbList<CreateAttractionRequest_CreateAttractionInfo>();
  static CreateAttractionRequest_CreateAttractionInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateAttractionRequest_CreateAttractionInfo();
    return _defaultInstance;
  }
  static CreateAttractionRequest_CreateAttractionInfo _defaultInstance;
  static void $checkItem(CreateAttractionRequest_CreateAttractionInfo v) {
    if (v is! CreateAttractionRequest_CreateAttractionInfo) checkItemFailed(v, 'CreateAttractionRequest_CreateAttractionInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  Point get location => $_getN(1);
  set location(Point v) { setField(2, v); }
  bool hasLocation() => $_has(1);
  void clearLocation() => clearField(2);

  String get description => $_getS(2, '');
  set description(String v) { $_setString(2, v); }
  bool hasDescription() => $_has(2);
  void clearDescription() => clearField(3);

  String get googlePlaceId => $_getS(3, '');
  set googlePlaceId(String v) { $_setString(3, v); }
  bool hasGooglePlaceId() => $_has(3);
  void clearGooglePlaceId() => clearField(4);
}

class _ReadonlyCreateAttractionRequest_CreateAttractionInfo extends CreateAttractionRequest_CreateAttractionInfo with ReadonlyMessageMixin {}

class CreateAttractionRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateAttractionRequest')
    ..aOS(1, 'blockId')
    ..a<CreateAttractionRequest_CreateAttractionInfo>(2, 'info', PbFieldType.OM, CreateAttractionRequest_CreateAttractionInfo.getDefault, CreateAttractionRequest_CreateAttractionInfo.create)
    ..hasRequiredFields = false
  ;

  CreateAttractionRequest() : super();
  CreateAttractionRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateAttractionRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateAttractionRequest clone() => new CreateAttractionRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateAttractionRequest create() => new CreateAttractionRequest();
  static PbList<CreateAttractionRequest> createRepeated() => new PbList<CreateAttractionRequest>();
  static CreateAttractionRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateAttractionRequest();
    return _defaultInstance;
  }
  static CreateAttractionRequest _defaultInstance;
  static void $checkItem(CreateAttractionRequest v) {
    if (v is! CreateAttractionRequest) checkItemFailed(v, 'CreateAttractionRequest');
  }

  String get blockId => $_getS(0, '');
  set blockId(String v) { $_setString(0, v); }
  bool hasBlockId() => $_has(0);
  void clearBlockId() => clearField(1);

  CreateAttractionRequest_CreateAttractionInfo get info => $_getN(1);
  set info(CreateAttractionRequest_CreateAttractionInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyCreateAttractionRequest extends CreateAttractionRequest with ReadonlyMessageMixin {}

class ListAttractionsResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListAttractionsResponse')
    ..pp<Attraction>(1, 'attractions', PbFieldType.PM, Attraction.$checkItem, Attraction.create)
    ..hasRequiredFields = false
  ;

  ListAttractionsResponse() : super();
  ListAttractionsResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListAttractionsResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListAttractionsResponse clone() => new ListAttractionsResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListAttractionsResponse create() => new ListAttractionsResponse();
  static PbList<ListAttractionsResponse> createRepeated() => new PbList<ListAttractionsResponse>();
  static ListAttractionsResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListAttractionsResponse();
    return _defaultInstance;
  }
  static ListAttractionsResponse _defaultInstance;
  static void $checkItem(ListAttractionsResponse v) {
    if (v is! ListAttractionsResponse) checkItemFailed(v, 'ListAttractionsResponse');
  }

  List<Attraction> get attractions => $_getList(0);
}

class _ReadonlyListAttractionsResponse extends ListAttractionsResponse with ReadonlyMessageMixin {}

class UpdateAttractionInfoRequest_UpdateAttractionInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateAttractionInfoRequest_UpdateAttractionInfo')
    ..aOS(1, 'name')
    ..aOS(2, 'description')
    ..hasRequiredFields = false
  ;

  UpdateAttractionInfoRequest_UpdateAttractionInfo() : super();
  UpdateAttractionInfoRequest_UpdateAttractionInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateAttractionInfoRequest_UpdateAttractionInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateAttractionInfoRequest_UpdateAttractionInfo clone() => new UpdateAttractionInfoRequest_UpdateAttractionInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateAttractionInfoRequest_UpdateAttractionInfo create() => new UpdateAttractionInfoRequest_UpdateAttractionInfo();
  static PbList<UpdateAttractionInfoRequest_UpdateAttractionInfo> createRepeated() => new PbList<UpdateAttractionInfoRequest_UpdateAttractionInfo>();
  static UpdateAttractionInfoRequest_UpdateAttractionInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateAttractionInfoRequest_UpdateAttractionInfo();
    return _defaultInstance;
  }
  static UpdateAttractionInfoRequest_UpdateAttractionInfo _defaultInstance;
  static void $checkItem(UpdateAttractionInfoRequest_UpdateAttractionInfo v) {
    if (v is! UpdateAttractionInfoRequest_UpdateAttractionInfo) checkItemFailed(v, 'UpdateAttractionInfoRequest_UpdateAttractionInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get description => $_getS(1, '');
  set description(String v) { $_setString(1, v); }
  bool hasDescription() => $_has(1);
  void clearDescription() => clearField(2);
}

class _ReadonlyUpdateAttractionInfoRequest_UpdateAttractionInfo extends UpdateAttractionInfoRequest_UpdateAttractionInfo with ReadonlyMessageMixin {}

class UpdateAttractionInfoRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateAttractionInfoRequest')
    ..aOS(1, 'id')
    ..a<UpdateAttractionInfoRequest_UpdateAttractionInfo>(2, 'info', PbFieldType.OM, UpdateAttractionInfoRequest_UpdateAttractionInfo.getDefault, UpdateAttractionInfoRequest_UpdateAttractionInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateAttractionInfoRequest() : super();
  UpdateAttractionInfoRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateAttractionInfoRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateAttractionInfoRequest clone() => new UpdateAttractionInfoRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateAttractionInfoRequest create() => new UpdateAttractionInfoRequest();
  static PbList<UpdateAttractionInfoRequest> createRepeated() => new PbList<UpdateAttractionInfoRequest>();
  static UpdateAttractionInfoRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateAttractionInfoRequest();
    return _defaultInstance;
  }
  static UpdateAttractionInfoRequest _defaultInstance;
  static void $checkItem(UpdateAttractionInfoRequest v) {
    if (v is! UpdateAttractionInfoRequest) checkItemFailed(v, 'UpdateAttractionInfoRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateAttractionInfoRequest_UpdateAttractionInfo get info => $_getN(1);
  set info(UpdateAttractionInfoRequest_UpdateAttractionInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyUpdateAttractionInfoRequest extends UpdateAttractionInfoRequest with ReadonlyMessageMixin {}

class UpdateAttractionLocationRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateAttractionLocationRequest')
    ..aOS(1, 'id')
    ..a<Point>(2, 'location', PbFieldType.OM, Point.getDefault, Point.create)
    ..hasRequiredFields = false
  ;

  UpdateAttractionLocationRequest() : super();
  UpdateAttractionLocationRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateAttractionLocationRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateAttractionLocationRequest clone() => new UpdateAttractionLocationRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateAttractionLocationRequest create() => new UpdateAttractionLocationRequest();
  static PbList<UpdateAttractionLocationRequest> createRepeated() => new PbList<UpdateAttractionLocationRequest>();
  static UpdateAttractionLocationRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateAttractionLocationRequest();
    return _defaultInstance;
  }
  static UpdateAttractionLocationRequest _defaultInstance;
  static void $checkItem(UpdateAttractionLocationRequest v) {
    if (v is! UpdateAttractionLocationRequest) checkItemFailed(v, 'UpdateAttractionLocationRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Point get location => $_getN(1);
  set location(Point v) { setField(2, v); }
  bool hasLocation() => $_has(1);
  void clearLocation() => clearField(2);
}

class _ReadonlyUpdateAttractionLocationRequest extends UpdateAttractionLocationRequest with ReadonlyMessageMixin {}

class AssignAttractionToBlockRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AssignAttractionToBlockRequest')
    ..aOS(1, 'id')
    ..aOS(2, 'blockId')
    ..hasRequiredFields = false
  ;

  AssignAttractionToBlockRequest() : super();
  AssignAttractionToBlockRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AssignAttractionToBlockRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AssignAttractionToBlockRequest clone() => new AssignAttractionToBlockRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AssignAttractionToBlockRequest create() => new AssignAttractionToBlockRequest();
  static PbList<AssignAttractionToBlockRequest> createRepeated() => new PbList<AssignAttractionToBlockRequest>();
  static AssignAttractionToBlockRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAssignAttractionToBlockRequest();
    return _defaultInstance;
  }
  static AssignAttractionToBlockRequest _defaultInstance;
  static void $checkItem(AssignAttractionToBlockRequest v) {
    if (v is! AssignAttractionToBlockRequest) checkItemFailed(v, 'AssignAttractionToBlockRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get blockId => $_getS(1, '');
  set blockId(String v) { $_setString(1, v); }
  bool hasBlockId() => $_has(1);
  void clearBlockId() => clearField(2);
}

class _ReadonlyAssignAttractionToBlockRequest extends AssignAttractionToBlockRequest with ReadonlyMessageMixin {}

class UpdateAttractionStatusRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateAttractionStatusRequest')
    ..aOS(1, 'id')
    ..e<AttractionStatus>(2, 'status', PbFieldType.OE, AttractionStatus.ATTRACTION_STATUS_UNSPECIFIED, AttractionStatus.valueOf, AttractionStatus.values)
    ..hasRequiredFields = false
  ;

  UpdateAttractionStatusRequest() : super();
  UpdateAttractionStatusRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateAttractionStatusRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateAttractionStatusRequest clone() => new UpdateAttractionStatusRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateAttractionStatusRequest create() => new UpdateAttractionStatusRequest();
  static PbList<UpdateAttractionStatusRequest> createRepeated() => new PbList<UpdateAttractionStatusRequest>();
  static UpdateAttractionStatusRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateAttractionStatusRequest();
    return _defaultInstance;
  }
  static UpdateAttractionStatusRequest _defaultInstance;
  static void $checkItem(UpdateAttractionStatusRequest v) {
    if (v is! UpdateAttractionStatusRequest) checkItemFailed(v, 'UpdateAttractionStatusRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  AttractionStatus get status => $_getN(1);
  set status(AttractionStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class _ReadonlyUpdateAttractionStatusRequest extends UpdateAttractionStatusRequest with ReadonlyMessageMixin {}

class Attraction extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Attraction')
    ..aOS(1, 'id')
    ..e<AttractionStatus>(2, 'status', PbFieldType.OE, AttractionStatus.ATTRACTION_STATUS_UNSPECIFIED, AttractionStatus.valueOf, AttractionStatus.values)
    ..aOS(3, 'blockId')
    ..aOS(4, 'name')
    ..aOS(5, 'description')
    ..a<Point>(6, 'location', PbFieldType.OM, Point.getDefault, Point.create)
    ..aOS(7, 'googlePlaceId')
    ..hasRequiredFields = false
  ;

  Attraction() : super();
  Attraction.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Attraction.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Attraction clone() => new Attraction()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Attraction create() => new Attraction();
  static PbList<Attraction> createRepeated() => new PbList<Attraction>();
  static Attraction getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAttraction();
    return _defaultInstance;
  }
  static Attraction _defaultInstance;
  static void $checkItem(Attraction v) {
    if (v is! Attraction) checkItemFailed(v, 'Attraction');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  AttractionStatus get status => $_getN(1);
  set status(AttractionStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);

  String get blockId => $_getS(2, '');
  set blockId(String v) { $_setString(2, v); }
  bool hasBlockId() => $_has(2);
  void clearBlockId() => clearField(3);

  String get name => $_getS(3, '');
  set name(String v) { $_setString(3, v); }
  bool hasName() => $_has(3);
  void clearName() => clearField(4);

  String get description => $_getS(4, '');
  set description(String v) { $_setString(4, v); }
  bool hasDescription() => $_has(4);
  void clearDescription() => clearField(5);

  Point get location => $_getN(5);
  set location(Point v) { setField(6, v); }
  bool hasLocation() => $_has(5);
  void clearLocation() => clearField(6);

  String get googlePlaceId => $_getS(6, '');
  set googlePlaceId(String v) { $_setString(6, v); }
  bool hasGooglePlaceId() => $_has(6);
  void clearGooglePlaceId() => clearField(7);
}

class _ReadonlyAttraction extends Attraction with ReadonlyMessageMixin {}

