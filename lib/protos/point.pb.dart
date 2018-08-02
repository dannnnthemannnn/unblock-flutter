///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class Point extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Point')
    ..a<double>(1, 'x', PbFieldType.OF)
    ..a<double>(2, 'y', PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Point() : super();
  Point.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Point.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Point clone() => new Point()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Point create() => new Point();
  static PbList<Point> createRepeated() => new PbList<Point>();
  static Point getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyPoint();
    return _defaultInstance;
  }
  static Point _defaultInstance;
  static void $checkItem(Point v) {
    if (v is! Point) checkItemFailed(v, 'Point');
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

class _ReadonlyPoint extends Point with ReadonlyMessageMixin {}

