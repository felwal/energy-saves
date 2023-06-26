import Toybox.Activity;
import Toybox.Lang;
import Toybox.Time;
import Toybox.WatchUi;

class EnergySavesView extends WatchUi.SimpleDataField {

    function initialize() {
        SimpleDataField.initialize();
        label = "My Label";
    }

    function compute(info as Activity.Info) {
        return 0.0;
    }

}
