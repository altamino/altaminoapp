package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.narvii.amino.R;

/* JADX INFO: loaded from: classes8.dex */
public class JoinCommunityProgressLayout extends PushButton {
    static final float SHADOW_ALPHA = 0.4f;
    int current;
    long duration;
    int from;
    private boolean isCurPressed;
    DecelerateInterpolator it;
    Paint paint;
    RectF rectf;
    long startTime;
    int to;
    private int topOffset;

    public void cancelProgress() {
        this.current = 0;
        this.to = 0;
        this.from = 0;
        this.startTime = 0L;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i10 = this.from;
        if (i10 == this.to && i10 == 0) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.narvii.widget.PushButton, android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        boolean z6;
        float f;
        int i10 = this.from;
        int i11 = this.to;
        if (i10 == i11 && i10 == 0) {
            return super.drawChild(canvas, view, j6);
        }
        if (this.current < i11) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.startTime;
            if (jUptimeMillis < 0) {
                f = 0.0f;
            } else {
                long j10 = this.duration;
                f = jUptimeMillis > j10 ? 1.0f : (jUptimeMillis * 1.0f) / j10;
            }
            this.current = this.from + ((int) (this.it.getInterpolation(f) * (this.to - this.from)));
            invalidate();
            z6 = true;
        } else {
            z6 = false;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j6) | z6;
        canvas.save();
        canvas.clipRect(0, 0, (getWidth() * this.current) / 100, getHeight());
        this.rectf.left = view.getLeft();
        this.rectf.top = view.getTop() + this.topOffset;
        this.rectf.right = view.getRight();
        this.rectf.bottom = view.getBottom() + this.topOffset;
        RectF rectF = this.rectf;
        float f6 = this.cornerRadius;
        canvas.drawRoundRect(rectF, f6, f6, this.paint);
        canvas.restore();
        return zDrawChild;
    }

    @Override // android.view.View
    public boolean isPressed() {
        if (this.isCurPressed) {
            return true;
        }
        return super.isPressed();
    }

    public void setCurPressed(boolean z6) {
        this.isCurPressed = z6;
        setPressed(z6);
    }

    @Override // com.narvii.widget.PushButton, android.view.View
    public void setPressed(boolean z6) {
        if (this.isCurPressed) {
            super.setPressed(true);
        }
        super.setPressed(z6);
    }

    public void setProgress(int i10) {
        if (this.to == i10) {
            return;
        }
        int i11 = this.current;
        this.from = i11;
        this.to = i10;
        if (i10 < i11) {
            this.current = i10;
            this.from = i10;
            this.to = i10;
            this.startTime = 0L;
        } else {
            this.startTime = SystemClock.uptimeMillis();
        }
        invalidate();
    }

    public JoinCommunityProgressLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.it = new DecelerateInterpolator();
        this.duration = 600L;
        this.rectf = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(Color.argb(102, 0, 0, 0));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.JoinCommunityProgressLayout);
        this.topOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }
}
