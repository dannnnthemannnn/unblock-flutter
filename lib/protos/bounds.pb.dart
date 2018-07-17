///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class Bounds_Point extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Bounds_Point')
    ..a<double>(1, 'x', PbFieldType.OF)
    ..a<double>(2, 'y', PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Bounds_Point() : super();
  Bounds_Point.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Bounds_Point.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Bounds_Point clone() => new Bounds_Point()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Bounds_Point create() => new Bounds_Point();
  static PbList<Bounds_Point> createRepeated() => new PbList<Bounds_Point>();
  static Bounds_Point getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyBounds_Point();
    return _defaultInstance;
  }
  static Bounds_Point _defaultInstance;
  static void $checkItem(Bounds_Point v) {
    if (v is! Bounds_Point) checkItemFailed(v, 'Bounds_Point');
  }

  double get x => $_getN(0);
  set x(double v) { $_setFloat(0, v); }
  bool hasX() => $_has(0);
  void clearX() => clearField(1);

  double get y => $_getN(1);
  set y(double v) { $_setFloat(1, v); }
  bool hasY() => $_has(1);
  void clearY() => clearField(2);
}

class _ReadonlyBounds_Point extends Bounds_Point with ReadonlyMessageMixin {}

class Bounds extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Bounds')
    ..pp<Bounds_Point>(1, 'points', PbFieldType.PM, Bounds_Point.$checkItem, Bounds_Point.create)
    ..hasRequiredFields = false
  ;

  Bounds() : super();
  Bounds.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Bounds.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Bounds clone() => new Bounds()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Bounds create() => new Bounds();
  static PbList<Bounds> createRepeated() => new PbList<Bounds>();
  static Bounds getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyBounds();
    return _defaultInstance;
  }
  static Bounds _defaultInstance;
  static void $checkItem(Bounds v) {
    if (v is! Bounds) checkItemFailed(v, 'Bounds');
  }

  List<Bounds_Point> get points => $_getList(0);
}

class _ReadonlyBounds extends Bounds with ReadonlyMessageMixin {}

