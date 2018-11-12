///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'point.pb.dart';

class GooglePlace extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GooglePlace')
    ..aOS(1, 'placeId')
    ..aOS(2, 'name')
    ..a<Point>(3, 'location', PbFieldType.OM, Point.getDefault, Point.create)
    ..aOS(4, 'photoUrl')
    ..aOS(5, 'googleUrl')
    ..aOS(6, 'website')
    ..hasRequiredFields = false
  ;

  GooglePlace() : super();
  GooglePlace.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GooglePlace.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GooglePlace clone() => new GooglePlace()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GooglePlace create() => new GooglePlace();
  static PbList<GooglePlace> createRepeated() => new PbList<GooglePlace>();
  static GooglePlace getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGooglePlace();
    return _defaultInstance;
  }
  static GooglePlace _defaultInstance;
  static void $checkItem(GooglePlace v) {
    if (v is! GooglePlace) checkItemFailed(v, 'GooglePlace');
  }

  String get placeId => $_getS(0, '');
  set placeId(String v) { $_setString(0, v); }
  bool hasPlaceId() => $_has(0);
  void clearPlaceId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  Point get location => $_getN(2);
  set location(Point v) { setField(3, v); }
  bool hasLocation() => $_has(2);
  void clearLocation() => clearField(3);

  String get photoUrl => $_getS(3, '');
  set photoUrl(String v) { $_setString(3, v); }
  bool hasPhotoUrl() => $_has(3);
  void clearPhotoUrl() => clearField(4);

  String get googleUrl => $_getS(4, '');
  set googleUrl(String v) { $_setString(4, v); }
  bool hasGoogleUrl() => $_has(4);
  void clearGoogleUrl() => clearField(5);

  String get website => $_getS(5, '');
  set website(String v) { $_setString(5, v); }
  bool hasWebsite() => $_has(5);
  void clearWebsite() => clearField(6);
}

class _ReadonlyGooglePlace extends GooglePlace with ReadonlyMessageMixin {}

