package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.narvii.drawer.DrawerLayout;
import com.narvii.widget.recycleview.NVRecyclerView;

/* loaded from: classes3.dex */
public class HorizontalRecyclerView extends NVRecyclerView {
    public boolean disableTouch;
    boolean disallowed;

    public HorizontalRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.v7.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (zOnInterceptTouchEvent && motionEvent.getAction() == 2) {
            this.disallowed = true;
            requestDisallowInterceptTouchEvent(true);
        }
        if (motionEvent.getAction() == 0) {
            DrawerLayout.disallowIntercept = true;
        }
        return zOnInterceptTouchEvent;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.disableTouch) {
            return true;
        }
        int action = motionEvent.getAction();
        if ((action == 1 || action == 3) && this.disallowed) {
            this.disallowed = false;
            requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
