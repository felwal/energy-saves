import Toybox.Activity;
import Toybox.Lang;
import Toybox.Time;
import Toybox.WatchUi;

class EnergySavesView extends WatchUi.SimpleDataField {

    function initialize() {
        SimpleDataField.initialize();
        label = rez(Rez.Strings.lbl_title);
    }

    function compute(info as Activity.Info) {
        var whPerDay = 600f; // 75W for 8h
        var whPerKm = 425; // depends on vehicle

        var start = info.startLocation;
        var here = info.currentLocation;

        //var kmOffset = start == null || here == null
        //    ? 0f
        //    : distanceBetween(start, here) / 1000f;
        var kmOffset = info.elapsedDistance == null
            ? 0f
            : info.elapsedDistance / 1000f;

        var days = kmOffset * whPerKm / whPerDay;
        var wholeDays = Math.floor(days).toNumber();
        var hours = (days - wholeDays) * 8;

        //var value = days.format("%.2f") + " (" + kmOffset.format("%.3f") + ")";
        var value = wholeDays + "d, " + hours.format("%.1f") + "h";

        return value;
    }

}
