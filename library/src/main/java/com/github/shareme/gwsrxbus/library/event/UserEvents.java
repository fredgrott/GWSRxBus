package com.github.shareme.gwsrxbus.library.event;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.TextView;

import rx.Observable;
import rx.subjects.BehaviorSubject;
import rx.subjects.PublishSubject;

/**
 * UserEvents
 * Created by fgrott on 10/7/2015.
 */
@SuppressWarnings("unused")
public class UserEvents {

    private UserEvents(){
        throw new AssertionError("No instances");
    }

    /**
     * Creates a subject to emit events for the current text and every text change event.
     * @param view the Text view
     * @return the subject
     */
    public static Observable<String> text(TextView view) {
        String currentText = String.valueOf(view.getText());
        final BehaviorSubject<String> subject = BehaviorSubject.create(currentText);
        view.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) { }

            @Override public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) { }

            @Override public void afterTextChanged(Editable editable) {
                subject.onNext(editable.toString());
            }
        });
        return subject;
    }

    /*
     * Creates a subject that emits events for each click on view
     */
    public static Observable<Object> click(View view) {
        final PublishSubject<Object> subject = PublishSubject.create();
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                subject.onNext(new Object());
            }
        });
        return subject;
    }


    /*
     * Creates a subject that emits events for item clicks of list views
     */
    public static Observable<Integer> itemClick(AbsListView view) {
        final PublishSubject<Integer> subject = PublishSubject.create();
        view.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
                subject.onNext(position);
            }
        });
        return subject;
    }


}
