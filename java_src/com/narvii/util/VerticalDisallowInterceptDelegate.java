package com.narvii.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes3.dex */
public class VerticalDisallowInterceptDelegate {
    private boolean confirmed;
    private float initialMotionX;
    private float initialMotionY;
    private float touchSlop;
    private View view;

    public VerticalDisallowInterceptDelegate(View view) {
        this.view = view;
        if (view != null) {
            this.touchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        }
    }

    public void dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.view == null) {
            return;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.initialMotionX = motionEvent.getX();
            this.initialMotionY = motionEvent.getY();
            this.confirmed = false;
            if (this.view.getParent() != null) {
                this.view.getParent().requestDisallowInterceptTouchEvent(true);
                return;
            }
            return;
        }
        if (action != 1) {
            if (action == 2) {
                if (this.confirmed) {
                    return;
                }
                float fAbs = Math.abs(motionEvent.getX() - this.initialMotionX);
                float fAbs2 = Math.abs(motionEvent.getY() - this.initialMotionY);
                float f = this.touchSlop;
                if (fAbs >= f || fAbs2 >= f) {
                    this.confirmed = true;
                    this.view.getParent().requestDisallowInterceptTouchEvent(fAbs2 > fAbs);
                    return;
                }
                return;
            }
            if (action != 3) {
                return;
            }
        }
        if (this.view.getParent() != null) {
            this.view.getParent().requestDisallowInterceptTouchEvent(false);
        }
    }
}
