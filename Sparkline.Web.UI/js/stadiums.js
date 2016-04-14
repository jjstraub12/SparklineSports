function getStadiumInfo(stadiumId) {

    var name, loc, lat, lon, sea, logo;

    switch (stadiumId) {
        case 'kfc-yum-center':
            name = "KFC Yum! Center";
            loc = "Louisville, KY";
            lat = 38.2575;
            lon = -85.7539;
            sea = 466;
            break;
        default:
            name = "Default";
            loc = "Default";
            lat = 40;
            lon = -98.5;
            break;
    }

    var stadiumInfo = [
        name + '/n' + loc,
        new google.maps.LatLng(lat, lon),
    ];

    return stadiumInfo;
}