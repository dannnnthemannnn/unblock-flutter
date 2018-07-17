///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

import 'user.pbenum.dart';

export 'user.pbenum.dart';

class CreateUserRequest_CreateUserInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateUserRequest_CreateUserInfo')
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..aOS(3, 'email')
    ..e<UserLevel>(4, 'level', PbFieldType.OE, UserLevel.LEVEL_UNSPECIFIED, UserLevel.valueOf, UserLevel.values)
    ..hasRequiredFields = false
  ;

  CreateUserRequest_CreateUserInfo() : super();
  CreateUserRequest_CreateUserInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateUserRequest_CreateUserInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateUserRequest_CreateUserInfo clone() => new CreateUserRequest_CreateUserInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateUserRequest_CreateUserInfo create() => new CreateUserRequest_CreateUserInfo();
  static PbList<CreateUserRequest_CreateUserInfo> createRepeated() => new PbList<CreateUserRequest_CreateUserInfo>();
  static CreateUserRequest_CreateUserInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateUserRequest_CreateUserInfo();
    return _defaultInstance;
  }
  static CreateUserRequest_CreateUserInfo _defaultInstance;
  static void $checkItem(CreateUserRequest_CreateUserInfo v) {
    if (v is! CreateUserRequest_CreateUserInfo) checkItemFailed(v, 'CreateUserRequest_CreateUserInfo');
  }

  String get username => $_getS(0, '');
  set username(String v) { $_setString(0, v); }
  bool hasUsername() => $_has(0);
  void clearUsername() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);

  String get email => $_getS(2, '');
  set email(String v) { $_setString(2, v); }
  bool hasEmail() => $_has(2);
  void clearEmail() => clearField(3);

  UserLevel get level => $_getN(3);
  set level(UserLevel v) { setField(4, v); }
  bool hasLevel() => $_has(3);
  void clearLevel() => clearField(4);
}

class _ReadonlyCreateUserRequest_CreateUserInfo extends CreateUserRequest_CreateUserInfo with ReadonlyMessageMixin {}

class CreateUserRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('CreateUserRequest')
    ..a<CreateUserRequest_CreateUserInfo>(1, 'info', PbFieldType.OM, CreateUserRequest_CreateUserInfo.getDefault, CreateUserRequest_CreateUserInfo.create)
    ..hasRequiredFields = false
  ;

  CreateUserRequest() : super();
  CreateUserRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateUserRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateUserRequest clone() => new CreateUserRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static CreateUserRequest create() => new CreateUserRequest();
  static PbList<CreateUserRequest> createRepeated() => new PbList<CreateUserRequest>();
  static CreateUserRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCreateUserRequest();
    return _defaultInstance;
  }
  static CreateUserRequest _defaultInstance;
  static void $checkItem(CreateUserRequest v) {
    if (v is! CreateUserRequest) checkItemFailed(v, 'CreateUserRequest');
  }

  CreateUserRequest_CreateUserInfo get info => $_getN(0);
  set info(CreateUserRequest_CreateUserInfo v) { setField(1, v); }
  bool hasInfo() => $_has(0);
  void clearInfo() => clearField(1);
}

class _ReadonlyCreateUserRequest extends CreateUserRequest with ReadonlyMessageMixin {}

class ListUsersResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListUsersResponse')
    ..pp<User>(1, 'users', PbFieldType.PM, User.$checkItem, User.create)
    ..hasRequiredFields = false
  ;

  ListUsersResponse() : super();
  ListUsersResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListUsersResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListUsersResponse clone() => new ListUsersResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListUsersResponse create() => new ListUsersResponse();
  static PbList<ListUsersResponse> createRepeated() => new PbList<ListUsersResponse>();
  static ListUsersResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyListUsersResponse();
    return _defaultInstance;
  }
  static ListUsersResponse _defaultInstance;
  static void $checkItem(ListUsersResponse v) {
    if (v is! ListUsersResponse) checkItemFailed(v, 'ListUsersResponse');
  }

  List<User> get users => $_getList(0);
}

class _ReadonlyListUsersResponse extends ListUsersResponse with ReadonlyMessageMixin {}

class UpdateUserInfoRequest_UpdateUserInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateUserInfoRequest_UpdateUserInfo')
    ..aOS(1, 'username')
    ..aOS(2, 'email')
    ..e<UserLevel>(3, 'level', PbFieldType.OE, UserLevel.LEVEL_UNSPECIFIED, UserLevel.valueOf, UserLevel.values)
    ..hasRequiredFields = false
  ;

  UpdateUserInfoRequest_UpdateUserInfo() : super();
  UpdateUserInfoRequest_UpdateUserInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateUserInfoRequest_UpdateUserInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateUserInfoRequest_UpdateUserInfo clone() => new UpdateUserInfoRequest_UpdateUserInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateUserInfoRequest_UpdateUserInfo create() => new UpdateUserInfoRequest_UpdateUserInfo();
  static PbList<UpdateUserInfoRequest_UpdateUserInfo> createRepeated() => new PbList<UpdateUserInfoRequest_UpdateUserInfo>();
  static UpdateUserInfoRequest_UpdateUserInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateUserInfoRequest_UpdateUserInfo();
    return _defaultInstance;
  }
  static UpdateUserInfoRequest_UpdateUserInfo _defaultInstance;
  static void $checkItem(UpdateUserInfoRequest_UpdateUserInfo v) {
    if (v is! UpdateUserInfoRequest_UpdateUserInfo) checkItemFailed(v, 'UpdateUserInfoRequest_UpdateUserInfo');
  }

  String get username => $_getS(0, '');
  set username(String v) { $_setString(0, v); }
  bool hasUsername() => $_has(0);
  void clearUsername() => clearField(1);

  String get email => $_getS(1, '');
  set email(String v) { $_setString(1, v); }
  bool hasEmail() => $_has(1);
  void clearEmail() => clearField(2);

  UserLevel get level => $_getN(2);
  set level(UserLevel v) { setField(3, v); }
  bool hasLevel() => $_has(2);
  void clearLevel() => clearField(3);
}

class _ReadonlyUpdateUserInfoRequest_UpdateUserInfo extends UpdateUserInfoRequest_UpdateUserInfo with ReadonlyMessageMixin {}

class UpdateUserInfoRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateUserInfoRequest')
    ..aOS(1, 'id')
    ..a<UpdateUserInfoRequest_UpdateUserInfo>(2, 'info', PbFieldType.OM, UpdateUserInfoRequest_UpdateUserInfo.getDefault, UpdateUserInfoRequest_UpdateUserInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateUserInfoRequest() : super();
  UpdateUserInfoRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateUserInfoRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateUserInfoRequest clone() => new UpdateUserInfoRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateUserInfoRequest create() => new UpdateUserInfoRequest();
  static PbList<UpdateUserInfoRequest> createRepeated() => new PbList<UpdateUserInfoRequest>();
  static UpdateUserInfoRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateUserInfoRequest();
    return _defaultInstance;
  }
  static UpdateUserInfoRequest _defaultInstance;
  static void $checkItem(UpdateUserInfoRequest v) {
    if (v is! UpdateUserInfoRequest) checkItemFailed(v, 'UpdateUserInfoRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateUserInfoRequest_UpdateUserInfo get info => $_getN(1);
  set info(UpdateUserInfoRequest_UpdateUserInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyUpdateUserInfoRequest extends UpdateUserInfoRequest with ReadonlyMessageMixin {}

class UpdateUserPasswordRequest_UpdateUserInfo extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateUserPasswordRequest_UpdateUserInfo')
    ..aOS(1, 'password')
    ..hasRequiredFields = false
  ;

  UpdateUserPasswordRequest_UpdateUserInfo() : super();
  UpdateUserPasswordRequest_UpdateUserInfo.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateUserPasswordRequest_UpdateUserInfo.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateUserPasswordRequest_UpdateUserInfo clone() => new UpdateUserPasswordRequest_UpdateUserInfo()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateUserPasswordRequest_UpdateUserInfo create() => new UpdateUserPasswordRequest_UpdateUserInfo();
  static PbList<UpdateUserPasswordRequest_UpdateUserInfo> createRepeated() => new PbList<UpdateUserPasswordRequest_UpdateUserInfo>();
  static UpdateUserPasswordRequest_UpdateUserInfo getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateUserPasswordRequest_UpdateUserInfo();
    return _defaultInstance;
  }
  static UpdateUserPasswordRequest_UpdateUserInfo _defaultInstance;
  static void $checkItem(UpdateUserPasswordRequest_UpdateUserInfo v) {
    if (v is! UpdateUserPasswordRequest_UpdateUserInfo) checkItemFailed(v, 'UpdateUserPasswordRequest_UpdateUserInfo');
  }

  String get password => $_getS(0, '');
  set password(String v) { $_setString(0, v); }
  bool hasPassword() => $_has(0);
  void clearPassword() => clearField(1);
}

class _ReadonlyUpdateUserPasswordRequest_UpdateUserInfo extends UpdateUserPasswordRequest_UpdateUserInfo with ReadonlyMessageMixin {}

class UpdateUserPasswordRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('UpdateUserPasswordRequest')
    ..aOS(1, 'id')
    ..a<UpdateUserPasswordRequest_UpdateUserInfo>(2, 'info', PbFieldType.OM, UpdateUserPasswordRequest_UpdateUserInfo.getDefault, UpdateUserPasswordRequest_UpdateUserInfo.create)
    ..hasRequiredFields = false
  ;

  UpdateUserPasswordRequest() : super();
  UpdateUserPasswordRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateUserPasswordRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateUserPasswordRequest clone() => new UpdateUserPasswordRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static UpdateUserPasswordRequest create() => new UpdateUserPasswordRequest();
  static PbList<UpdateUserPasswordRequest> createRepeated() => new PbList<UpdateUserPasswordRequest>();
  static UpdateUserPasswordRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUpdateUserPasswordRequest();
    return _defaultInstance;
  }
  static UpdateUserPasswordRequest _defaultInstance;
  static void $checkItem(UpdateUserPasswordRequest v) {
    if (v is! UpdateUserPasswordRequest) checkItemFailed(v, 'UpdateUserPasswordRequest');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  UpdateUserPasswordRequest_UpdateUserInfo get info => $_getN(1);
  set info(UpdateUserPasswordRequest_UpdateUserInfo v) { setField(2, v); }
  bool hasInfo() => $_has(1);
  void clearInfo() => clearField(2);
}

class _ReadonlyUpdateUserPasswordRequest extends UpdateUserPasswordRequest with ReadonlyMessageMixin {}

class User extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('User')
    ..aOS(1, 'id')
    ..aOS(2, 'username')
    ..aOS(3, 'email')
    ..e<UserLevel>(4, 'level', PbFieldType.OE, UserLevel.LEVEL_UNSPECIFIED, UserLevel.valueOf, UserLevel.values)
    ..hasRequiredFields = false
  ;

  User() : super();
  User.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  User.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  User clone() => new User()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static User create() => new User();
  static PbList<User> createRepeated() => new PbList<User>();
  static User getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyUser();
    return _defaultInstance;
  }
  static User _defaultInstance;
  static void $checkItem(User v) {
    if (v is! User) checkItemFailed(v, 'User');
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get username => $_getS(1, '');
  set username(String v) { $_setString(1, v); }
  bool hasUsername() => $_has(1);
  void clearUsername() => clearField(2);

  String get email => $_getS(2, '');
  set email(String v) { $_setString(2, v); }
  bool hasEmail() => $_has(2);
  void clearEmail() => clearField(3);

  UserLevel get level => $_getN(3);
  set level(UserLevel v) { setField(4, v); }
  bool hasLevel() => $_has(3);
  void clearLevel() => clearField(4);
}

class _ReadonlyUser extends User with ReadonlyMessageMixin {}

