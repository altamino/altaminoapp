package com.codemonkeylabs.fpslibrary.ui;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class DancerTouchListener implements View.OnTouchListener {
    private GestureDetector gestureDetector;
    private float initialTouchX;
    private float initialTouchY;
    private int initialX;
    private int initialY;
    private WindowManager.LayoutParams paramsF;
    private WindowManager windowManager;

    public DancerTouchListener(WindowManager.LayoutParams layoutParams, WindowManager windowManager, GestureDetector gestureDetector) {
        this.windowManager = windowManager;
        this.paramsF = layoutParams;
        this.gestureDetector = gestureDetector;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.gestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            WindowManager.LayoutParams layoutParams = this.paramsF;
            this.initialX = layoutParams.x;
            this.initialY = layoutParams.y;
            this.initialTouchX = motionEvent.getRawX();
            this.initialTouchY = motionEvent.getRawY();
            return false;
        }
        if (action == 1 || action != 2) {
            return false;
        }
        this.paramsF.x = this.initialX + ((int) (motionEvent.getRawX() - this.initialTouchX));
        this.paramsF.y = this.initialY + ((int) (motionEvent.getRawY() - this.initialTouchY));
        this.windowManager.updateViewLayout(view, this.paramsF);
        return false;
    }
}
