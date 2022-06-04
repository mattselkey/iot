using Toybox.WatchUi;
using Toybox.Communications as Comm;
using Toybox.Sensor;
using Toybox.Graphics;
using Toybox.System;
using Toybox.Lang;
using Toybox.Time;
using Toybox.Time.Gregorian;
using Toybox.Sensor;
using Toybox.Application;
using Toybox.Position;
using Toybox.Timer;
using Toybox.Cryptography;

class iot830View extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        
        //Get and show the current time
        var ClockTime = System.getClockTime();
        // The Lang module contains Monkey C language basic types, and provides a method for formatting Strings.
        // https://developer.garmin.com/connect-iq/api-docs/Toybox/Lang.html
        var clockTimeformat = Lang.format("$1$:$2$", [ClockTime.hour, ClockTime.min.format("%02d")]);
        //var myTime = System.getClockTime(); // ClockTime object

        // findDrawableById = Method
        // A common use for this method is to get layout information to format dynamic content, such as a string that updates at runtime.
        // https://developer.garmin.com/connect-iq/api-docs/Toybox/WatchUi/View.html#findDrawableById-instance_function
        View.findDrawableById("TimeLabel").setText(clockTimeformat);



        // Call the parent onupdate function to redarw the layout
        View.onUpdate(dc);

        System.println(
            ClockTime.hour.format("%02d") + ":" +
            ClockTime.min.format("%02d") + ":" +
            ClockTime.sec.format("%02d")
        );

        //System.println("view updating");

	dc.clear();
        // Call the parent onUpdate function to redraw the layout
        dispField1 = new WatchUi.Text({
            :text=>status,
            :color=>Graphics.COLOR_BLACK,
            :font=>Graphics.FONT_LARGE,
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>30,
            :justification=>Graphics.TEXT_JUSTIFY_CENTER
        });
        dispField2 = new WatchUi.Text({
            :text=>field2,
            :color=>Graphics.COLOR_BLACK,
            :font=>Graphics.FONT_LARGE,
            :locX =>60,
            :locY=>110,
            :justification=>Graphics.TEXT_JUSTIFY_CENTER
        });
        dispField3 = new WatchUi.Text({
            :text=>field3,
            :color=>Graphics.COLOR_BLACK,
            :font=>Graphics.FONT_LARGE,
            :locX =>180,
            :locY=>110,
            :justification=>Graphics.TEXT_JUSTIFY_CENTER
        });
        dispField4 = new WatchUi.Text({
            :text=>field4,
            :color=>Graphics.COLOR_BLACK,
            :font=>Graphics.FONT_LARGE,
            :locX =>WatchUi.LAYOUT_HALIGN_CENTER,
            :locY=>190,
            :justification=>Graphics.TEXT_JUSTIFY_CENTER
        });
       dispField1.draw(dc);
       dispField2.draw(dc);
       dispField3.draw(dc);
       dispField4.draw(dc);
        








    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}
