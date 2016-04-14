function teamLocation(team) {
    var teamInfo = getTeamInfo(team);
    tm = teamInfo[0]
    latlon = teamInfo[1];
    var logo = teamInfo[2];
    var clr = teamInfo[4];
    var logoPath = teamInfo[5];

    //SET UP MAP
    mapholder = document.getElementById('mapholder')
    mapholder.style.height = '250px';
    mapholder.style.width = '500px';

    var myOptions = {
        center: latlon,
        zoom: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        mapTypeControl: false,
        navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL }
    }

    var map = new google.maps.Map(document.getElementById("mapholder"), myOptions);

    //TEAM LOGO/STAR
    if (logoPath == '../img/mapIcons/default.png') {
        var star = {
            path: 'M 125,5 155,90 245,90 175,145 200,230 125,180 50,230 75,145 5,90 95,90 z',
            fillColor: 'rgb(' + clr + ')',
            fillOpacity: 0.8,
            scale: 0.1,
            strokeColor: 'black',
            strokeWeight: 1
        };
        var team = new google.maps.Marker({ position: latlon, icon: star, map: map });
    }
    else {
        var team = new google.maps.Marker({ position: latlon, map: map, title: tm, icon: logo });
    }

    //SET MAP BOUNDS
    //var bounds = new google.maps.LatLngBounds();
    //bounds.extend(latlon1);
    //map.fitBounds(bounds);
    //map.panToBounds(bounds);

    //SET BACKGROUND COLOR OF ENTIRE DOCUMENT
    document.body.style.backgroundColor = 'rgb(' + clr + ')';
}



function showPosition(team1, team2, stadium) {
    //TEAM 1
    var team1Info = getTeamInfo(team1);
    tm1 = team1Info[0]
    latlon1 = team1Info[1];
    var logo1 = team1Info[2];

    //TEAM 2
    var team2Info = getTeamInfo(team2);
    tm2 = team2Info[0]
    latlon2 = team2Info[1];
    var logo2 = team2Info[2];

    //GAME LOCATION (IF NEUTRAL COURT)
    //var stadiumInfo = getTeamInfo(team2);
    //loc = team2Info[0]
    //latlon3 = team2Info[1];
    var stadiumInfo = getStadiumInfo(stadium)
    loc = stadiumInfo[0];
    latlon3 = stadiumInfo[1];

    cntr = new google.maps.LatLng(40, -98.5)
    mapholder = document.getElementById('mapholder')
    mapholder.style.height = '250px';
    mapholder.style.width = '500px';

    var myOptions = {
        center: cntr,
        zoom: 4,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        mapTypeControl: false,
        navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL }
    }

    //SET MARKERS FOR TEAMS/STADIUM
    var map = new google.maps.Map(document.getElementById("mapholder"), myOptions);
    var team1 = new google.maps.Marker({ position: latlon1, map: map, title: tm1, icon: logo1 });

    var team2 = new google.maps.Marker({ position: latlon2, map: map, title: tm2, icon: logo2 });
    var loc = new google.maps.Marker({ position: latlon3, map: map, title: loc });

    //SET MAP BOUNDS
    var bounds = new google.maps.LatLngBounds();
    bounds.extend(latlon1);
    bounds.extend(latlon2);
    bounds.extend(latlon3);
    map.fitBounds(bounds);
    map.panToBounds(bounds);

    //DISTANCE FROM TEAM 1 TO GAME
    var path1Coords = [latlon1, latlon3];
    var path1 = new google.maps.Polyline({
        path: path1Coords,
        geodesic: false,
        strokeColor: '#FF0000',
        strokeOpacity: 1.0,
        strokeWeight: 2
    });
    var length1InMiles = google.maps.geometry.spherical.computeLength(path1.getPath()) * 0.000621371;
    path1.setMap(map);

    //DISTANCE FROM TEAM 2 TO GAME
    var path2Coords = [latlon2, latlon3];
    var path2 = new google.maps.Polyline({
        path: path2Coords,
        geodesic: false,
        strokeColor: '#FF0000',
        strokeOpacity: 1.0,
        strokeWeight: 2
    });
    var length2InMiles = google.maps.geometry.spherical.computeLength(path2.getPath()) * 0.000621371;
    path2.setMap(map);
}