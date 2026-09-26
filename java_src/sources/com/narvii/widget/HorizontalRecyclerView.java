package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.narvii.drawer.DrawerLayout;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes7.dex */
public class HorizontalRecyclerView extends NVRecyclerView {
    public boolean disableTouch;
    boolean disallowed;

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

    public HorizontalRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
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
}
