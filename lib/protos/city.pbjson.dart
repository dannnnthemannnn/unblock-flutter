///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

const CityStatus$json = const {
  '1': 'CityStatus',
  '2': const [
    const {'1': 'CITY_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'CITY_LIVE', '2': 1},
    const {'1': 'CITY_DISABLED', '2': 2},
  ],
};

const CreateCityRequest$json = const {
  '1': 'CreateCityRequest',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.com.unblock.proto.CreateCityRequest.CreateCityInfo', '10': 'info'},
  ],
  '3': const [CreateCityRequest_CreateCityInfo$json],
};

const CreateCityRequest_CreateCityInfo$json = const {
  '1': 'CreateCityInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ListCitiesResponse$json = const {
  '1': 'ListCitiesResponse',
  '2': const [
    const {'1': 'cities', '3': 1, '4': 3, '5': 11, '6': '.com.unblock.proto.City', '10': 'cities'},
  ],
};

const UpdateCityInfoRequest$json = const {
  '1': 'UpdateCityInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateCityInfoRequest.UpdateCityInfo', '10': 'info'},
  ],
  '3': const [UpdateCityInfoRequest_UpdateCityInfo$json],
};

const UpdateCityInfoRequest_UpdateCityInfo$json = const {
  '1': 'UpdateCityInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const UpdateCityStatusRequest$json = const {
  '1': 'UpdateCityStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.CityStatus', '10': 'status'},
  ],
};

const City$json = const {
  '1': 'City',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.CityStatus', '10': 'status'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'neighborhoods', '3': 4, '4': 3, '5': 11, '6': '.com.unblock.proto.Neighborhood', '10': 'neighborhoods'},
  ],
};

