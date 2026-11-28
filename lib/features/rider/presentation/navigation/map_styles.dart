/// The night style for the navigation map.
///
/// By day the map is Google's own, untouched, so it looks exactly like the
/// Google Maps a rider already rides by. At night Google's default is a
/// bright white map, so this dark one stands in: shop pins and bus stops
/// hidden so the route is what the eye lands on, street names kept because a
/// rider reads them against the signs.
const String kNavMapStyleDark = '''
[
  {"elementType":"geometry","stylers":[{"color":"#1b1e19"}]},
  {"elementType":"labels.icon","stylers":[{"visibility":"off"}]},
  {"elementType":"labels.text.fill","stylers":[{"color":"#8d9387"}]},
  {"elementType":"labels.text.stroke","stylers":[{"color":"#1b1e19"}]},
  {"featureType":"administrative.land_parcel","stylers":[{"visibility":"off"}]},
  {"featureType":"poi","stylers":[{"visibility":"off"}]},
  {"featureType":"poi.park","elementType":"geometry","stylers":[{"visibility":"on"},{"color":"#22301b"}]},
  {"featureType":"road","elementType":"geometry","stylers":[{"color":"#2c3128"}]},
  {"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#353b30"}]},
  {"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#4a4234"}]},
  {"featureType":"road.local","elementType":"labels.text.fill","stylers":[{"color":"#6b7166"}]},
  {"featureType":"transit","stylers":[{"visibility":"off"}]},
  {"featureType":"water","elementType":"geometry","stylers":[{"color":"#10202a"}]}
]
''';
