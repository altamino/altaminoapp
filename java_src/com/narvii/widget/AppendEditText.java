package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.EditText;

/* loaded from: classes3.dex */
public class AppendEditText extends EditText {
    public AppendEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        setSelection(getText().length());
        return zOnTouchEvent;
    }
}
