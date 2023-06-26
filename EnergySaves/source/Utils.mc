using Toybox.Application;
using Toybox.Math;

function rez(rezId) {
    return Application.loadResource(rezId);
}

//! Radians to meters
function distanceBetween(loc1, loc2) {
    var R = 6371000;

    var latLon1 = loc1.toRadians();
    var latLon2 = loc2.toRadians();

    var phi1 = latLon1[0] - Math.PI / 2;
    var phi2 = latLon2[0] - Math.PI / 2;

    var x1 = R * Math.sin(phi1) * Math.cos(latLon1[1]);
    var y1 = R * Math.sin(phi1) * Math.sin(latLon1[1]);
    var z1 = R * Math.cos(phi1);

    var x2 = R * Math.sin(phi2) * Math.cos(latLon2[1]);
    var y2 = R * Math.sin(phi2) * Math.sin(latLon2[1]);
    var z2 = R * Math.cos(phi2);

    var dx = x2 - x1;
    var dy = y2 - y1;
    var dz = z2 - z1;

    var distance = Math.sqrt(dx * dx + dy * dy + dz * dz);

    return distance;
}
