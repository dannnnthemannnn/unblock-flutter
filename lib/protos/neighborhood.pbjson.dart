///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

const NeighborhoodStatus$json = const {
  '1': 'NeighborhoodStatus',
  '2': const [
    const {'1': 'NEIGHBORHOOD_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'NEIGHBORHOOD_LIVE', '2': 1},
    const {'1': 'NEIGHBORHOOD_DISABLED', '2': 2},
  ],
};

const CreateNeighborhoodRequest$json = const {
  '1': 'CreateNeighborhoodRequest',
  '2': const [
    const {'1': 'cityId', '3': 1, '4': 1, '5': 9, '10': 'cityId'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.CreateNeighborhoodRequest.CreateNeighborhoodInfo', '10': 'info'},
  ],
  '3': const [CreateNeighborhoodRequest_CreateNeighborhoodInfo$json],
};

const CreateNeighborhoodRequest_CreateNeighborhoodInfo$json = const {
  '1': 'CreateNeighborhoodInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ListNeighborhoodsResponse$json = const {
  '1': 'ListNeighborhoodsResponse',
  '2': const [
    const {'1': 'neighborhoods', '3': 1, '4': 3, '5': 11, '6': '.com.unblock.proto.Neighborhood', '10': 'neighborhoods'},
  ],
};

const UpdateNeighborhoodInfoRequest$json = const {
  '1': 'UpdateNeighborhoodInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateNeighborhoodInfoRequest.UpdateNeighborhoodInfo', '10': 'info'},
  ],
  '3': const [UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo$json],
};

const UpdateNeighborhoodInfoRequest_UpdateNeighborhoodInfo$json = const {
  '1': 'UpdateNeighborhoodInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const UpdateNeighborhoodStatusRequest$json = const {
  '1': 'UpdateNeighborhoodStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.NeighborhoodStatus', '10': 'status'},
  ],
};

const UpdateNeighborhoodBoundsRequest$json = const {
  '1': 'UpdateNeighborhoodBoundsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'update', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateNeighborhoodBoundsRequest.UpdateNeighborhoodBounds', '10': 'update'},
  ],
  '3': const [UpdateNeighborhoodBoundsRequest_UpdateNeighborhoodBounds$json],
};

const UpdateNeighborhoodBoundsRequest_UpdateNeighborhoodBounds$json = const {
  '1': 'UpdateNeighborhoodBounds',
  '2': const [
    const {'1': 'bounds', '3': 1, '4': 1, '5': 11, '6': '.com.unblock.proto.Bounds', '10': 'bounds'},
  ],
};

const AssignNeighborhoodToCityRequest$json = const {
  '1': 'AssignNeighborhoodToCityRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'cityId', '3': 2, '4': 1, '5': 9, '10': 'cityId'},
  ],
};

const Neighborhood$json = const {
  '1': 'Neighborhood',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.NeighborhoodStatus', '10': 'status'},
    const {'1': 'cityId', '3': 3, '4': 1, '5': 9, '10': 'cityId'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'blocks', '3': 5, '4': 3, '5': 11, '6': '.com.unblock.proto.Block', '10': 'blocks'},
    const {'1': 'bounds', '3': 6, '4': 1, '5': 11, '6': '.com.unblock.proto.Bounds', '10': 'bounds'},
  ],
};

