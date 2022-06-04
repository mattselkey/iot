import Toybox.Lang;
import Toybox.WatchUi;

class iot830Delegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new iot830MenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}