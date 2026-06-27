package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;

/* loaded from: classes3.dex */
public class SmoothProgressBar extends ProgressBar {
    long duration;
    int from;
    DecelerateInterpolator it;
    OnProgressFinishListener onProgressFinishListener;
    long startTime;
    int to;

    public interface OnProgressFinishListener {
        void onProgressFinish();
    }

    public void setOnProgressFinishListener(OnProgressFinishListener onProgressFinishListener) {
        this.onProgressFinishListener = onProgressFinishListener;
    }

    public SmoothProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.it = new DecelerateInterpolator();
        this.duration = 600L;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        this.from = getProgress();
        this.to = i;
        if (i < this.from) {
            super.setProgress(i);
            this.from = i;
            this.to = i;
            this.startTime = 0L;
        } else {
            this.startTime = SystemClock.uptimeMillis();
            invalidate();
        }
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getProgress() < this.to) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.startTime;
            float f = 1.0f;
            if (jUptimeMillis < 0) {
                f = 0.0f;
            } else if (jUptimeMillis <= this.duration) {
                f = (jUptimeMillis * 1.0f) / this.duration;
            }
            int interpolation = this.from + ((int) (this.it.getInterpolation(f) * (this.to - this.from)));
            super.setProgress(interpolation);
            if (interpolation == getMax() && this.onProgressFinishListener != null) {
                this.onProgressFinishListener.onProgressFinish();
            }
            invalidate();
        }
    }
}
