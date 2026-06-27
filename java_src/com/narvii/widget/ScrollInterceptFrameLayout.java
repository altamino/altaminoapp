package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class ScrollInterceptFrameLayout extends FrameLayout {
    GestureDetector gestureDetector;

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public ScrollInterceptFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.narvii.widget.ScrollInterceptFrameLayout.1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return false;
            }
        });
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.gestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
