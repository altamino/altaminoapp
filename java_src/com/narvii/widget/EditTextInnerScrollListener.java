package com.narvii.widget;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes3.dex */
public class EditTextInnerScrollListener implements View.OnTouchListener {
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view.canScrollVertically(1) || view.canScrollVertically(-1)) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
        }
        int action = motionEvent.getAction() & 255;
        if (action == 1 || action == 3) {
            view.getParent().requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }
}
