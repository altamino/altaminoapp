package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes8.dex */
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

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        float f;
        OnProgressFinishListener onProgressFinishListener;
        try {
            super.onDraw(canvas);
            if (getProgress() < this.to) {
                long jUptimeMillis = SystemClock.uptimeMillis() - this.startTime;
                if (jUptimeMillis < 0) {
                    f = 0.0f;
                } else {
                    long j6 = this.duration;
                    f = jUptimeMillis > j6 ? 1.0f : (jUptimeMillis * 1.0f) / j6;
                }
                int interpolation = this.from + ((int) (this.it.getInterpolation(f) * (this.to - this.from)));
                super.setProgress(interpolation);
                if (interpolation == getMax() && (onProgressFinishListener = this.onProgressFinishListener) != null) {
                    onProgressFinishListener.onProgressFinish();
                }
                invalidate();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setDuration(int i10) {
        this.duration = i10;
    }

    public void setOnProgressFinishListener(OnProgressFinishListener onProgressFinishListener) {
        this.onProgressFinishListener = onProgressFinishListener;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i10) {
        try {
            int progress = getProgress();
            this.from = progress;
            this.to = i10;
            if (i10 < progress) {
                super.setProgress(i10);
                this.from = i10;
                this.to = i10;
                this.startTime = 0L;
            } else {
                this.startTime = SystemClock.uptimeMillis();
                invalidate();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public SmoothProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.it = new DecelerateInterpolator();
        this.duration = 600L;
    }
}
