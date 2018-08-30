import 'package:map_view/map_view.dart';
import 'package:unblock/common/map_data.dart';

class MapProviderService {
  static const mapsApiKey = 'AIzaSyC58Vw5LAsU1APbTdkQb3J14mMadVhx7Sc';

  static final StaticMapProvider mapProvider = StaticMapProvider(mapsApiKey);

  static String getMapUrl(MapData mapData) {
    return mapProvider.getStaticUri(
      Location(mapData.center.x, mapData.center.y),
      mapData.zoom,
      height: mapData.height,
      width: mapData.width,
      mapType: StaticMapViewType.roadmap,
      styles: [
        'feature:poi|visibility:off',
        'feature:administrative|visibility:off',
      ],
    ).toString();
  }
}