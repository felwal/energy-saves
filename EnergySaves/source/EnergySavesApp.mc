import Toybox.Application;
import Toybox.Lang;

class EnergySavesApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function onStart(state as Dictionary?) {
    }

    function onStop(state as Dictionary?) {
    }

    function getInitialView() {
        return [ new EnergySavesView() ];
    }

}

function getApp() {
    return Application.getApp();
}
