/*
 * Copyright (C) 2015 Fred Grott(aka shareme GrottWorkShop)
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 *
 * http:;//www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and limitations under License.
 */
package com.github.shareme.gwsrxbus.library;

import rx.Observable;
import rx.subjects.PublishSubject;
import rx.subjects.SerializedSubject;
import rx.subjects.Subject;

/**
 * RxBus, thread safe version. See RxBusProvider to get Singleton.
 * The power would come from doing such things as an ApplicationEvent
 * object, ActivityEvent object, and an FragmentEvent object and integrate
 * the lifecycle(both system and user) from using those event objects.
 *
 *
 *
 * Created by fgrott on 10/6/2015.
 */
@SuppressWarnings("unused")
public class RxBus {







    /**
     * SerializedSubject allows us to make it safe for events to be emitted by multiple threads
     */
    private final Subject<Object, Object> bus = new SerializedSubject<>(PublishSubject.create());

    public void send(Object o) {
        bus.onNext(o);
    }

    public Observable<Object> toObserverable() {
        return bus;
    }


    /**
     * Allows to listen for dead events ie the boolean returned would be true for dead events
     * @return bus.Observers
     */
    public boolean hasObservers() {
        return bus.hasObservers();
    }

}
