package com.codemonkeylabs.fpslibrary.ui;

import android.animation.Animator;
import android.app.Application;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.codemonkeylabs.fpslibrary.Calculation;
import com.codemonkeylabs.fpslibrary.FPSConfig;
import com.codemonkeylabs.fpslibrary.R$drawable;
import com.codemonkeylabs.fpslibrary.R$layout;
import java.util.AbstractMap;
import java.util.List;

/* loaded from: classes.dex */
public class TinyCoach {
    private FPSConfig fpsConfig;
    private View meterView;
    private final WindowManager windowManager;
    private int shortAnimationDuration = 200;
    private int longAnimationDuration = 700;
    private GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.codemonkeylabs.fpslibrary.ui.TinyCoach.1
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            TinyCoach.this.hide(false);
            return super.onDoubleTap(motionEvent);
        }
    };

    public TinyCoach(Application application, FPSConfig fPSConfig) {
        this.fpsConfig = fPSConfig;
        this.meterView = LayoutInflater.from(application).inflate(R$layout.meter_view, (ViewGroup) null);
        ((TextView) this.meterView).setText(((int) this.fpsConfig.refreshRate) + "");
        this.windowManager = (WindowManager) this.meterView.getContext().getSystemService("window");
        addViewToWindow(this.meterView);
    }

    private void addViewToWindow(View view) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, PermissionCompat.getFlag(), 8, -3);
        FPSConfig fPSConfig = this.fpsConfig;
        if (fPSConfig.xOrYSpecified) {
            layoutParams.x = fPSConfig.startingXPosition;
            layoutParams.y = fPSConfig.startingYPosition;
            layoutParams.gravity = FPSConfig.DEFAULT_GRAVITY;
        } else if (fPSConfig.gravitySpecified) {
            layoutParams.x = 0;
            layoutParams.y = 0;
            layoutParams.gravity = fPSConfig.startingGravity;
        } else {
            layoutParams.gravity = FPSConfig.DEFAULT_GRAVITY;
            layoutParams.x = fPSConfig.startingXPosition;
            layoutParams.y = fPSConfig.startingYPosition;
        }
        this.windowManager.addView(view, layoutParams);
        view.setOnTouchListener(new DancerTouchListener(layoutParams, this.windowManager, new GestureDetector(view.getContext(), this.simpleOnGestureListener)));
        view.setHapticFeedbackEnabled(false);
        show();
    }

    public void showData(FPSConfig fPSConfig, List<Long> list) {
        AbstractMap.SimpleEntry<Calculation.Metric, Long> simpleEntryCalculateMetric = Calculation.calculateMetric(fPSConfig, list, Calculation.getDroppedSet(fPSConfig, list));
        if (simpleEntryCalculateMetric.getKey() == Calculation.Metric.BAD) {
            this.meterView.setBackgroundResource(R$drawable.fpsmeterring_bad);
        } else if (simpleEntryCalculateMetric.getKey() == Calculation.Metric.MEDIUM) {
            this.meterView.setBackgroundResource(R$drawable.fpsmeterring_medium);
        } else {
            this.meterView.setBackgroundResource(R$drawable.fpsmeterring_good);
        }
        ((TextView) this.meterView).setText(simpleEntryCalculateMetric.getValue() + "");
    }

    public void destroy() {
        this.meterView.setOnTouchListener(null);
        hide(true);
    }

    public void show() {
        this.meterView.setAlpha(0.0f);
        this.meterView.setVisibility(0);
        this.meterView.animate().alpha(1.0f).setDuration(this.longAnimationDuration).setListener(null);
    }

    public void hide(final boolean z) {
        this.meterView.animate().alpha(0.0f).setDuration(this.shortAnimationDuration).setListener(new Animator.AnimatorListener() { // from class: com.codemonkeylabs.fpslibrary.ui.TinyCoach.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TinyCoach.this.meterView.setVisibility(8);
                if (z) {
                    TinyCoach.this.windowManager.removeView(TinyCoach.this.meterView);
                }
            }
        });
    }
}
