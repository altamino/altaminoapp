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

/* loaded from: classes3.dex */
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

    public JoinCommunityProgressLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.it = new DecelerateInterpolator();
        this.duration = 600L;
        this.rectf = new RectF();
        this.paint = new Paint();
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(Color.argb(102, 0, 0, 0));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.JoinCommunityProgressLayout);
        this.topOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setProgress(int i) {
        if (this.to == i) {
            return;
        }
        this.from = this.current;
        this.to = i;
        if (i < this.from) {
            this.current = i;
            this.from = i;
            this.to = i;
            this.startTime = 0L;
        } else {
            this.startTime = SystemClock.uptimeMillis();
        }
        invalidate();
    }

    public void setCurPressed(boolean z) {
        this.isCurPressed = z;
        setPressed(this.isCurPressed);
    }

    @Override // com.narvii.widget.PushButton, android.view.View
    public void setPressed(boolean z) {
        if (this.isCurPressed) {
            super.setPressed(true);
        }
        super.setPressed(z);
    }

    public void cancelProgress() {
        this.current = 0;
        this.to = 0;
        this.from = 0;
        this.startTime = 0L;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i = this.from;
        if (i == this.to && i == 0) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.narvii.widget.PushButton, android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        int i = this.from;
        if (i == this.to && i == 0) {
            return super.drawChild(canvas, view, j);
        }
        if (this.current < this.to) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.startTime;
            float f = 1.0f;
            if (jUptimeMillis < 0) {
                f = 0.0f;
            } else {
                long j2 = this.duration;
                if (jUptimeMillis <= j2) {
                    f = (jUptimeMillis * 1.0f) / j2;
                }
            }
            this.current = this.from + ((int) (this.it.getInterpolation(f) * (this.to - this.from)));
            invalidate();
            z = true;
        } else {
            z = false;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j) | z;
        canvas.save();
        canvas.clipRect(0, 0, (getWidth() * this.current) / 100, getHeight());
        this.rectf.left = view.getLeft();
        this.rectf.top = view.getTop() + this.topOffset;
        this.rectf.right = view.getRight();
        this.rectf.bottom = view.getBottom() + this.topOffset;
        RectF rectF = this.rectf;
        float f2 = this.cornerRadius;
        canvas.drawRoundRect(rectF, f2, f2, this.paint);
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
}
