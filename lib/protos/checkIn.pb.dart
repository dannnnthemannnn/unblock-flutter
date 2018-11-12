///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

class CheckIn extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CheckIn')
    ..aOS(1, 'checkinId')
    ..aOS(2, 'attractionId')
    ..aInt64(3, 'createdTime')
    ..hasRequiredFields = false
  ;

  CheckIn() : super();
  CheckIn.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CheckIn.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CheckIn clone() => new CheckIn()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CheckIn create() => new CheckIn();
  static PbList<CheckIn> createRepeated() => new PbList<CheckIn>();
  static CheckIn getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCheckIn();
    return _defaultInstance;
  }
  static CheckIn _defaultInstance;
  static void $checkItem(CheckIn v) {
    if (v is! CheckIn) checkItemFailed(v, 'CheckIn');
  }

  String get checkinId => $_getS(0, '');
  set checkinId(String v) { $_setString(0, v); }
  bool hasCheckinId() => $_has(0);
  void clearCheckinId() => clearField(1);

  String get attractionId => $_getS(1, '');
  set attractionId(String v) { $_setString(1, v); }
  bool hasAttractionId() => $_has(1);
  void clearAttractionId() => clearField(2);

  Int64 get createdTime => $_getI64(2);
  set createdTime(Int64 v) { $_setInt64(2, v); }
  bool hasCreatedTime() => $_has(2);
  void clearCreatedTime() => clearField(3);
}

class _ReadonlyCheckIn extends CheckIn with ReadonlyMessageMixin {}

class ListCheckInsForUserResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListCheckInsForUserResponse')
    ..pp<CheckIn>(1, 'checkIns', PbFieldType.PM, CheckIn.$checkItem, CheckIn.create)
    ..hasRequiredFields = false
  ;

  ListCheckInsForUserResponse() : super();
  ListCheckInsForUserResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListCheckInsForUserResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListCheckInsForUserResponse clone() => new ListCheckInsForUserResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListCheckInsForUserResponse create() => new ListCheckInsForUserResponse();
  static PbList<ListCheckInsForUserResponse> createRepeated() => new PbList<ListCheckInsForUserResponse>();
  static ListCheckInsForUserResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListCheckInsForUserResponse();
    return _defaultInstance;
  }
  static ListCheckInsForUserResponse _defaultInstance;
  static void $checkItem(ListCheckInsForUserResponse v) {
    if (v is! ListCheckInsForUserResponse) checkItemFailed(v, 'ListCheckInsForUserResponse');
  }

  List<CheckIn> get checkIns => $_getList(0);
}

class _ReadonlyListCheckInsForUserResponse extends ListCheckInsForUserResponse with ReadonlyMessageMixin {}

class CreateCheckInRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateCheckInRequest')
    ..aOS(1, 'attractionId')
    ..hasRequiredFields = false
  ;

  CreateCheckInRequest() : super();
  CreateCheckInRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateCheckInRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateCheckInRequest clone() => new CreateCheckInRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateCheckInRequest create() => new CreateCheckInRequest();
  static PbList<CreateCheckInRequest> createRepeated() => new PbList<CreateCheckInRequest>();
  static CreateCheckInRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateCheckInRequest();
    return _defaultInstance;
  }
  static CreateCheckInRequest _defaultInstance;
  static void $checkItem(CreateCheckInRequest v) {
    if (v is! CreateCheckInRequest) checkItemFailed(v, 'CreateCheckInRequest');
  }

  String get attractionId => $_getS(0, '');
  set attractionId(String v) { $_setString(0, v); }
  bool hasAttractionId() => $_has(0);
  void clearAttractionId() => clearField(1);
}

class _ReadonlyCreateCheckInRequest extends CreateCheckInRequest with ReadonlyMessageMixin {}

class RemoveCheckInRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('RemoveCheckInRequest')
    ..aOS(1, 'checkinId')
    ..hasRequiredFields = false
  ;

  RemoveCheckInRequest() : super();
  RemoveCheckInRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RemoveCheckInRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RemoveCheckInRequest clone() => new RemoveCheckInRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static RemoveCheckInRequest create() => new RemoveCheckInRequest();
  static PbList<RemoveCheckInRequest> createRepeated() => new PbList<RemoveCheckInRequest>();
  static RemoveCheckInRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyRemoveCheckInRequest();
    return _defaultInstance;
  }
  static RemoveCheckInRequest _defaultInstance;
  static void $checkItem(RemoveCheckInRequest v) {
    if (v is! RemoveCheckInRequest) checkItemFailed(v, 'RemoveCheckInRequest');
  }

  String get checkinId => $_getS(0, '');
  set checkinId(String v) { $_setString(0, v); }
  bool hasCheckinId() => $_has(0);
  void clearCheckinId() => clearField(1);
}

class _ReadonlyRemoveCheckInRequest extends RemoveCheckInRequest with ReadonlyMessageMixin {}

