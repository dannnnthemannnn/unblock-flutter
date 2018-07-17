///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class LoginRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('LoginRequest')
    ..aOS(1, 'usernameOrEmail')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  LoginRequest() : super();
  LoginRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LoginRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LoginRequest clone() => new LoginRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static LoginRequest create() => new LoginRequest();
  static PbList<LoginRequest> createRepeated() => new PbList<LoginRequest>();
  static LoginRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyLoginRequest();
    return _defaultInstance;
  }
  static LoginRequest _defaultInstance;
  static void $checkItem(LoginRequest v) {
    if (v is! LoginRequest) checkItemFailed(v, 'LoginRequest');
  }

  String get usernameOrEmail => $_getS(0, '');
  set usernameOrEmail(String v) { $_setString(0, v); }
  bool hasUsernameOrEmail() => $_has(0);
  void clearUsernameOrEmail() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);
}

class _ReadonlyLoginRequest extends LoginRequest with ReadonlyMessageMixin {}

