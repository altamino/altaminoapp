package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class ScrollDetectFrameLayout extends FrameLayout {
    final ViewConfiguration configuration;
    GestureDetector detector;
    ScrollDetectListener scrollDetectListener;

    public interface ScrollDetectListener {
        void onScrollChecked();
    }

    public void setScrollDetectListener(ScrollDetectListener scrollDetectListener) {
        this.scrollDetectListener = scrollDetectListener;
    }

    public ScrollDetectFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.configuration = ViewConfiguration.get(getContext());
        this.detector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.ScrollDetectFrameLayout.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (ScrollDetectFrameLayout.this.scrollDetectListener == null || Math.abs(f2) <= ScrollDetectFrameLayout.this.configuration.getScaledTouchSlop()) {
                    return true;
                }
                ScrollDetectFrameLayout.this.scrollDetectListener.onScrollChecked();
                return true;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.detector.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }
}
