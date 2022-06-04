import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class iot830App extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        return [ new iot830View(), new iot830Delegate() ] as Array<Views or InputDelegates>;
    }

}

function getApp() as iot830App {
    return Application.getApp() as iot830App;
}