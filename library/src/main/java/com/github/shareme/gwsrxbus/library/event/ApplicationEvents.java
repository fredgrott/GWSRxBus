package com.github.shareme.gwsrxbus.library.event;

/**
 * ApplicationEvents, the idea is to decouple the listening for Application System events, ie those
 * triggered by the android framework. Only to be used in the extended Application class.
 * No instances set-up as I want to enforce its  use in the extended application class.
 *
 * Created by fgrott on 10/7/2015.
 */
@SuppressWarnings("unused")
public class ApplicationEvents {

    private ApplicationEvents() {
        throw new AssertionError("No instances");
    }
}
