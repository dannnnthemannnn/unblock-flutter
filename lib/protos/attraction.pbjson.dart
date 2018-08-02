///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

const AttractionStatus$json = const {
  '1': 'AttractionStatus',
  '2': const [
    const {'1': 'ATTRACTION_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'ATTRACTION_LIVE', '2': 1},
    const {'1': 'ATTRACTION_DISABLED', '2': 2},
  ],
};

const CreateAttractionRequest$json = const {
  '1': 'CreateAttractionRequest',
  '2': const [
    const {'1': 'blockId', '3': 1, '4': 1, '5': 9, '10': 'blockId'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.CreateAttractionRequest.CreateAttractionInfo', '10': 'info'},
  ],
  '3': const [CreateAttractionRequest_CreateAttractionInfo$json],
};

const CreateAttractionRequest_CreateAttractionInfo$json = const {
  '1': 'CreateAttractionInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.Point', '10': 'location'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'googlePlaceId', '3': 4, '4': 1, '5': 9, '10': 'googlePlaceId'},
  ],
};

const ListAttractionsResponse$json = const {
  '1': 'ListAttractionsResponse',
  '2': const [
    const {'1': 'attractions', '3': 1, '4': 3, '5': 11, '6': '.com.unblock.proto.Attraction', '10': 'attractions'},
  ],
};

const UpdateAttractionInfoRequest$json = const {
  '1': 'UpdateAttractionInfoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'info', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.UpdateAttractionInfoRequest.UpdateAttractionInfo', '10': 'info'},
  ],
  '3': const [UpdateAttractionInfoRequest_UpdateAttractionInfo$json],
};

const UpdateAttractionInfoRequest_UpdateAttractionInfo$json = const {
  '1': 'UpdateAttractionInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

const UpdateAttractionLocationRequest$json = const {
  '1': 'UpdateAttractionLocationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.com.unblock.proto.Point', '10': 'location'},
  ],
};

const AssignAttractionToBlockRequest$json = const {
  '1': 'AssignAttractionToBlockRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'blockId', '3': 2, '4': 1, '5': 9, '10': 'blockId'},
  ],
};

const UpdateAttractionStatusRequest$json = const {
  '1': 'UpdateAttractionStatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.AttractionStatus', '10': 'status'},
  ],
};

const Attraction$json = const {
  '1': 'Attraction',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.com.unblock.proto.AttractionStatus', '10': 'status'},
    const {'1': 'blockId', '3': 3, '4': 1, '5': 9, '10': 'blockId'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'location', '3': 6, '4': 1, '5': 11, '6': '.com.unblock.proto.Point', '10': 'location'},
    const {'1': 'googlePlaceId', '3': 7, '4': 1, '5': 9, '10': 'googlePlaceId'},
  ],
};

