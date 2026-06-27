package com.narvii.util.text;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: classes3.dex */
public class TextViewFixTouchConsume extends TextView {
    boolean hit;

    @Override // android.view.View
    public boolean hasFocusable() {
        return false;
    }

    public TextViewFixTouchConsume(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setMovementMethod(LinkTouchMovementMethod.getInstance());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.hit = false;
        }
        super.onTouchEvent(motionEvent);
        return this.hit;
    }
}
