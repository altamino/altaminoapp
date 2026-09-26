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
import com.codemonkeylabs.fpslibrary.f;
import com.codemonkeylabs.fpslibrary.g;
import java.util.AbstractMap;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class c {
    private com.codemonkeylabs.fpslibrary.b fpsConfig;
    private View meterView;
    private final WindowManager windowManager;
    private int shortAnimationDuration = 200;
    private int longAnimationDuration = 700;
    private GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new a();

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            c.this.e(false);
            return super.onDoubleTap(motionEvent);
        }
    }

    class b implements Animator.AnimatorListener {
        final /* synthetic */ boolean val$remove;

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        b(boolean z6) {
            this.val$remove = z6;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c.this.meterView.setVisibility(8);
            if (this.val$remove) {
                c.this.windowManager.removeView(c.this.meterView);
            }
        }
    }

    public void d() {
        this.meterView.setOnTouchListener(null);
        e(true);
    }

    public void e(boolean z6) {
        this.meterView.animate().alpha(0.0f).setDuration(this.shortAnimationDuration).setListener(new b(z6));
    }

    public void f() {
        this.meterView.setAlpha(0.0f);
        this.meterView.setVisibility(0);
        this.meterView.animate().alpha(1.0f).setDuration(this.longAnimationDuration).setListener(null);
    }

    public c(Application application, com.codemonkeylabs.fpslibrary.b bVar) {
        this.fpsConfig = bVar;
        View viewInflate = LayoutInflater.from(application).inflate(g.meter_view, (ViewGroup) null);
        this.meterView = viewInflate;
        ((TextView) viewInflate).setText(((int) this.fpsConfig.refreshRate) + "");
        this.windowManager = (WindowManager) this.meterView.getContext().getSystemService("window");
        c(this.meterView);
    }

    private void c(View view) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, com.codemonkeylabs.fpslibrary.ui.b.a(), 8, -3);
        com.codemonkeylabs.fpslibrary.b bVar = this.fpsConfig;
        if (bVar.xOrYSpecified) {
            layoutParams.x = bVar.startingXPosition;
            layoutParams.y = bVar.startingYPosition;
            layoutParams.gravity = com.codemonkeylabs.fpslibrary.b.DEFAULT_GRAVITY;
        } else if (bVar.gravitySpecified) {
            layoutParams.x = 0;
            layoutParams.y = 0;
            layoutParams.gravity = bVar.startingGravity;
        } else {
            layoutParams.gravity = com.codemonkeylabs.fpslibrary.b.DEFAULT_GRAVITY;
            layoutParams.x = bVar.startingXPosition;
            layoutParams.y = bVar.startingYPosition;
        }
        this.windowManager.addView(view, layoutParams);
        view.setOnTouchListener(new com.codemonkeylabs.fpslibrary.ui.a(layoutParams, this.windowManager, new GestureDetector(view.getContext(), this.simpleOnGestureListener)));
        view.setHapticFeedbackEnabled(false);
        f();
    }

    public void g(com.codemonkeylabs.fpslibrary.b bVar, List<Long> list) {
        AbstractMap.SimpleEntry<com.codemonkeylabs.fpslibrary.a.EnumC0144a, Long> simpleEntryA = com.codemonkeylabs.fpslibrary.a.a(bVar, list, com.codemonkeylabs.fpslibrary.a.c(bVar, list));
        if (simpleEntryA.getKey() == com.codemonkeylabs.fpslibrary.a.EnumC0144a.BAD) {
            this.meterView.setBackgroundResource(f.fpsmeterring_bad);
        } else if (simpleEntryA.getKey() == com.codemonkeylabs.fpslibrary.a.EnumC0144a.MEDIUM) {
            this.meterView.setBackgroundResource(f.fpsmeterring_medium);
        } else {
            this.meterView.setBackgroundResource(f.fpsmeterring_good);
        }
        ((TextView) this.meterView).setText(simpleEntryA.getValue() + "");
    }
}
