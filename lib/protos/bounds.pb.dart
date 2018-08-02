///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'point.pb.dart';

class Bounds extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Bounds')
    ..pp<Point>(1, 'points', PbFieldType.PM, Point.$checkItem, Point.create)
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

  List<Point> get points => $_getList(0);
}

class _ReadonlyBounds extends Bounds with ReadonlyMessageMixin {}

