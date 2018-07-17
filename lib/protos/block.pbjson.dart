///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

const BlockStatus$json = const {
  '1': 'BlockStatus',
  '2': const [
    const {'1': 'BLOCK_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'BLOCK_LIVE', '2': 1},
    const {'1': 'BLOCK_DISABLED', '2': 2},
  ],
};

const CreateBlockRequest$json = const {
  '1': 'CreateBlockRequest',
  '2': const [
    const {'1': 'neighborhoodId', '3': 1, '4': 1, '5': 9, '10': 'neighborhoodId'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.CreateBlockRequest.CreateBlockInfo', '10': 'info'},
  ],
  '3': const [CreateBlockRequest_CreateBlockInfo$json],
};

const CreateBlockRequest_CreateBlockInfo$json = const {
  '1': 'CreateBlockInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'bounds', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.Bounds', '10': 'bounds'},
  ],
};

const ListBlocksResponse$json = const {
  '1': 'ListBlocksResponse',
  '2': const [
    const {'1': 'blocks', '3': 1, '4': 3, '5': 11, '6': '.com.unblock.proto.Block', '10': 'blocks'},
  ],
};

const UpdateBlockInfoRequest$json = const {
  '1': 'UpdateBlockInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateBlockInfoRequest.UpdateBlockInfo', '10': 'info'},
  ],
  '3': const [UpdateBlockInfoRequest_UpdateBlockInfo$json],
};

const UpdateBlockInfoRequest_UpdateBlockInfo$json = const {
  '1': 'UpdateBlockInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const UpdateBlockStatusRequest$json = const {
  '1': 'UpdateBlockStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.BlockStatus', '10': 'status'},
  ],
};

const UpdateBlockBoundsRequest$json = const {
  '1': 'UpdateBlockBoundsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'update', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateBlockBoundsRequest.UpdateBlockBounds', '10': 'update'},
  ],
  '3': const [UpdateBlockBoundsRequest_UpdateBlockBounds$json],
};

const UpdateBlockBoundsRequest_UpdateBlockBounds$json = const {
  '1': 'UpdateBlockBounds',
  '2': const [
    const {'1': 'bounds', '3': 1, '4': 1, '5': 11, '6': '.com.unblock.proto.Bounds', '10': 'bounds'},
  ],
};

const AssignBlockToNeighborhoodRequest$json = const {
  '1': 'AssignBlockToNeighborhoodRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'neighborhoodId', '3': 2, '4': 1, '5': 9, '10': 'neighborhoodId'},
  ],
};

const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.BlockStatus', '10': 'status'},
    const {'1': 'neighborhoodId', '3': 3, '4': 1, '5': 9, '10': 'neighborhoodId'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'bounds', '3': 5, '4': 1, '5': 11, '6': '.com.unblock.proto.Bounds', '10': 'bounds'},
    const {'1': 'attractions', '3': 6, '4': 3, '5': 11, '6': '.com.unblock.proto.Attraction', '10': 'attractions'},
  ],
};

