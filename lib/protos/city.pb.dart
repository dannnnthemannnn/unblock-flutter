///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'neighborhood.pb.dart';

import 'city.pbenum.dart';

export 'city.pbenum.dart';

class CreateCityRequest_CreateCityInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateCityRequest_CreateCityInfo')
    ..aOS(1, 'name')
    ..aOS(2, 'imageFilename')
    ..hasRequiredFields = false
  ;

  CreateCityRequest_CreateCityInfo() : super();
  CreateCityRequest_CreateCityInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateCityRequest_CreateCityInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateCityRequest_CreateCityInfo clone() => new CreateCityRequest_CreateCityInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateCityRequest_CreateCityInfo create() => new CreateCityRequest_CreateCityInfo();
  static PbList<CreateCityRequest_CreateCityInfo> createRepeated() => new PbList<CreateCityRequest_CreateCityInfo>();
  static CreateCityRequest_CreateCityInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateCityRequest_CreateCityInfo();
    return _defaultInstance;
  }
  static CreateCityRequest_CreateCityInfo _defaultInstance;
  static void $checkItem(CreateCityRequest_CreateCityInfo v) {
    if (v is! CreateCityRequest_CreateCityInfo) checkItemFailed(v, 'CreateCityRequest_CreateCityInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get imageFilename => $_getS(1, '');
  set imageFilename(String v) { $_setString(1, v); }
  bool hasImageFilename() => $_has(1);
  void clearImageFilename() => clearField(2);
}

class _ReadonlyCreateCityRequest_CreateCityInfo extends CreateCityRequest_CreateCityInfo with ReadonlyMessageMixin {}

class CreateCityRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateCityRequest')
    ..a<CreateCityRequest_CreateCityInfo>(1, 'info', PbFieldType.OM, CreateCityRequest_CreateCityInfo.getDefault, CreateCityRequest_CreateCityInfo.create)
    ..hasRequiredFields = false
  ;

  CreateCityRequest() : super();
  CreateCityRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateCityRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateCityRequest clone() => new CreateCityRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateCityRequest create() => new CreateCityRequest();
  static PbList<CreateCityRequest> createRepeated() => new PbList<CreateCityRequest>();
  static CreateCityRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateCityRequest();
    return _defaultInstance;
  }
  static CreateCityRequest _defaultInstance;
  static void $checkItem(CreateCityRequest v) {
    if (v is! CreateCityRequest) checkItemFailed(v, 'CreateCityRequest');
  }

  CreateCityRequest_CreateCityInfo get info => $_getN(0);
  set info(CreateCityRequest_CreateCityInfo v) { setField(1, v); }
  bool hasInfo() => $_has(0);
  void clearInfo() => clearField(1);
}

class _ReadonlyCreateCityRequest extends CreateCityRequest with ReadonlyMessageMixin {}

class ListCitiesResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListCitiesResponse')
    ..pp<City>(1, 'cities', PbFieldType.PM, City.$checkItem, City.create)
    ..hasRequiredFields = false
  ;

  ListCitiesResponse() : super();
  ListCitiesResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListCitiesResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListCitiesResponse clone() => new ListCitiesResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListCitiesResponse create() => new ListCitiesResponse();
  static PbList<ListCitiesResponse> createRepeated() => new PbList<ListCitiesResponse>();
  static ListCitiesResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListCitiesResponse();
    return _defaultInstance;
  }
  static ListCitiesResponse _defaultInstance;
  static void $checkItem(ListCitiesResponse v) {
    if (v is! ListCitiesResponse) checkItemFailed(v, 'ListCitiesResponse');
  }

  List<City> get cities => $_getList(0);
}

class _ReadonlyListCitiesResponse extends ListCitiesResponse with ReadonlyMessageMixin {}

class UpdateCityInfoRequest_UpdateCityInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateCityInfoRequest_UpdateCityInfo')
    ..aOS(1, 'name')
    ..aOS(2, 'imageFilename')
    ..hasRequiredFields = false
  ;

  UpdateCityInfoRequest_UpdateCityInfo() : super();
  UpdateCityInfoRequest_UpdateCityInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateCityInfoRequest_UpdateCityInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateCityInfoRequest_UpdateCityInfo clone() => new UpdateCityInfoRequest_UpdateCityInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateCityInfoRequest_UpdateCityInfo create() => new UpdateCityInfoRequest_UpdateCityInfo();
  static PbList<UpdateCityInfoRequest_UpdateCityInfo> createRepeated() => new PbList<UpdateCityInfoRequest_UpdateCityInfo>();
  static UpdateCityInfoRequest_UpdateCityInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateCityInfoRequest_UpdateCityInfo();
    return _defaultInstance;
  }
  static UpdateCityInfoRequest_UpdateCityInfo _defaultInstance;
  static void $checkItem(UpdateCityInfoRequest_UpdateCityInfo v) {
    if (v is! UpdateCityInfoRequest_UpdateCityInfo) checkItemFailed(v, 'UpdateCityInfoRequest_UpdateCityInfo');
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get imageFilename => $_getS(1, '');
  set imageFilename(String v) { $_setString(1, v); }
  bool hasImageFilename() => $_has(1);
  void clearImageFilename() => clearField(2);
}

class _ReadonlyUpdateCityInfoRequest_UpdateCityInfo extends UpdateCityInfoRequest_UpdateCityInfo with ReadonlyMessageMixin {}

class UpdateCityInfoRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateCityInfoRequest')
    ..aOS(1, 'id')
    ..a<UpdateCityInfoRequest_UpdateCityInfo>(2, 'info', PbFieldType.OM, UpdateCityInfoRequest_UpdateCityInfo.getDefault, UpdateCityInfoRequest_UpdateCityInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateCityInfoRequest() : super();
  UpdateCityInfoRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateCityInfoRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateCityInfoRequest clone() => new UpdateCityInfoRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateCityInfoRequest create() => new UpdateCityInfoRequest();
  static PbList<UpdateCityInfoRequest> createRepeated() => new PbList<UpdateCityInfoRequest>();
  static UpdateCityInfoRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateCityInfoRequest();
    return _defaultInstance;
  }
  static UpdateCityInfoRequest _defaultInstance;
  static void $checkItem(UpdateCityInfoRequest v) {
    if (v is! UpdateCityInfoRequest) checkItemFailed(v, 'UpdateCityInfoRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateCityInfoRequest_UpdateCityInfo get info => $_getN(1);
  set info(UpdateCityInfoRequest_UpdateCityInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyUpdateCityInfoRequest extends UpdateCityInfoRequest with ReadonlyMessageMixin {}

class UpdateCityStatusRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateCityStatusRequest')
    ..aOS(1, 'id')
    ..e<CityStatus>(2, 'status', PbFieldType.OE, CityStatus.CITY_STATUS_UNSPECIFIED, CityStatus.valueOf, CityStatus.values)
    ..hasRequiredFields = false
  ;

  UpdateCityStatusRequest() : super();
  UpdateCityStatusRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateCityStatusRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateCityStatusRequest clone() => new UpdateCityStatusRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateCityStatusRequest create() => new UpdateCityStatusRequest();
  static PbList<UpdateCityStatusRequest> createRepeated() => new PbList<UpdateCityStatusRequest>();
  static UpdateCityStatusRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateCityStatusRequest();
    return _defaultInstance;
  }
  static UpdateCityStatusRequest _defaultInstance;
  static void $checkItem(UpdateCityStatusRequest v) {
    if (v is! UpdateCityStatusRequest) checkItemFailed(v, 'UpdateCityStatusRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  CityStatus get status => $_getN(1);
  set status(CityStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class _ReadonlyUpdateCityStatusRequest extends UpdateCityStatusRequest with ReadonlyMessageMixin {}

class City extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('City')
    ..aOS(1, 'id')
    ..e<CityStatus>(2, 'status', PbFieldType.OE, CityStatus.CITY_STATUS_UNSPECIFIED, CityStatus.valueOf, CityStatus.values)
    ..aOS(3, 'name')
    ..pp<Neighborhood>(4, 'neighborhoods', PbFieldType.PM, Neighborhood.$checkItem, Neighborhood.create)
    ..aOS(5, 'imageFilename')
    ..hasRequiredFields = false
  ;

  City() : super();
  City.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  City.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  City clone() => new City()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static City create() => new City();
  static PbList<City> createRepeated() => new PbList<City>();
  static City getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCity();
    return _defaultInstance;
  }
  static City _defaultInstance;
  static void $checkItem(City v) {
    if (v is! City) checkItemFailed(v, 'City');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  CityStatus get status => $_getN(1);
  set status(CityStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);

  String get name => $_getS(2, '');
  set name(String v) { $_setString(2, v); }
  bool hasName() => $_has(2);
  void clearName() => clearField(3);

  List<Neighborhood> get neighborhoods => $_getList(3);

  String get imageFilename => $_getS(4, '');
  set imageFilename(String v) { $_setString(4, v); }
  bool hasImageFilename() => $_has(4);
  void clearImageFilename() => clearField(5);
}

class _ReadonlyCity extends City with ReadonlyMessageMixin {}

