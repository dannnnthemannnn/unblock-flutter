///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

const UserLevel$json = const {
  '1': 'UserLevel',
  '2': const [
    const {'1': 'LEVEL_UNSPECIFIED', '2': 0},
    const {'1': 'DEFAULT', '2': 1},
    const {'1': 'ADMIN', '2': 2},
  ],
};

const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.com.unblock.proto.CreateUserRequest.CreateUserInfo', '10': 'info'},
  ],
  '3': const [CreateUserRequest_CreateUserInfo$json],
};

const CreateUserRequest_CreateUserInfo$json = const {
  '1': 'CreateUserInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'level', '3': 4, '4': 1, '5': 14, '6': '.com.unblock.proto.UserLevel', '10': 'level'},
  ],
};

const ListUsersResponse$json = const {
  '1': 'ListUsersResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.com.unblock.proto.User', '10': 'users'},
  ],
};

const UpdateUserInfoRequest$json = const {
  '1': 'UpdateUserInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateUserInfoRequest.UpdateUserInfo', '10': 'info'},
  ],
  '3': const [UpdateUserInfoRequest_UpdateUserInfo$json],
};

const UpdateUserInfoRequest_UpdateUserInfo$json = const {
  '1': 'UpdateUserInfo',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'level', '3': 3, '4': 1, '5': 14, '6': '.com.unblock.proto.UserLevel', '10': 'level'},
  ],
};

const UpdateUserPasswordRequest$json = const {
  '1': 'UpdateUserPasswordRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateUserPasswordRequest.UpdateUserInfo', '10': 'info'},
  ],
  '3': const [UpdateUserPasswordRequest_UpdateUserInfo$json],
};

const UpdateUserPasswordRequest_UpdateUserInfo$json = const {
  '1': 'UpdateUserInfo',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'level', '3': 4, '4': 1, '5': 14, '6': '.com.unblock.proto.UserLevel', '10': 'level'},
  ],
};

