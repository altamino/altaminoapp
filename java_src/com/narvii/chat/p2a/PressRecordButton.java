package com.narvii.chat.p2a;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.narvii.chat.video.CameraRenderer;

/* loaded from: classes2.dex */
public class PressRecordButton extends View {
    public CameraRenderer cameraRenderer;
    private Paint paint;
    private boolean pressed;
    public PressListener pressedListener;
    private long prevTime;
    private float progress;
    private final RectF rectF;

    public interface PressListener {
        boolean onPress(boolean z);
    }

    private float c(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public PressRecordButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.rectF = new RectF();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (motionEvent.getY() <= getHeight() / 2) {
                return false;
            }
            PressListener pressListener = this.pressedListener;
            if (pressListener != null) {
                this.pressed = pressListener.onPress(true);
            }
            invalidate();
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.pressedListener.onPress(false);
            this.pressed = false;
            invalidate();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j = this.prevTime;
        float fMin = (j == 0 || jCurrentAnimationTimeMillis - j < 20) ? 1.0f : Math.min(3.0f, ((jCurrentAnimationTimeMillis - j) * 1.0f) / 16.667f);
        int width = getWidth();
        int height = getHeight();
        float fApplyDimension = TypedValue.applyDimension(1, c(3.0f, 5.0f, this.progress), getResources().getDisplayMetrics());
        if (this.pressed) {
            float f = this.progress;
            if (f < 1.0f) {
                float f2 = 1.0f - f;
                this.progress = Math.min(1.0f, f + (((f2 * f2 * 0.26f) + 0.02f) * fMin));
            }
        }
        if (!this.pressed) {
            float f3 = this.progress;
            if (f3 > 0.0f) {
                this.progress = Math.max(0.0f, f3 - (fMin * 0.1f));
            }
        }
        this.paint.setColor(-1437166);
        this.paint.setStyle(Paint.Style.FILL);
        float f4 = width / 2;
        float f5 = height;
        canvas.drawCircle(f4, c(0.75f, 0.5f, this.progress) * f5, (c(0.25f, 0.38f, this.progress) * f5) - (1.5f * fApplyDimension), this.paint);
        float fC = c(0.75f, 0.5f, this.progress) * f5;
        float fC2 = (f5 * c(0.25f, 0.5f, this.progress)) - (fApplyDimension / 2.0f);
        this.paint.setColor(16777215 | (((int) (c(1.0f, 0.25f, this.progress) * 255.0f)) << 24));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(fApplyDimension);
        canvas.drawCircle(f4, fC, fC2, this.paint);
        CameraRenderer cameraRenderer = this.cameraRenderer;
        float recordTime = (cameraRenderer == null || cameraRenderer.getRecordDuration() <= 0) ? 0.0f : (this.cameraRenderer.getRecordTime() * 1.0f) / this.cameraRenderer.getRecordDuration();
        RectF rectF = this.rectF;
        rectF.left = f4 - fC2;
        rectF.right = f4 + fC2;
        rectF.top = fC - fC2;
        rectF.bottom = fC + fC2;
        this.paint.setColor(-1);
        canvas.drawArc(this.rectF, 270.0f, 360.0f * recordTime, false, this.paint);
        float f6 = this.progress;
        if (f6 == 0.0f || f6 == 1.0f) {
            this.prevTime = 0L;
        }
        if (this.progress != 0.0f) {
            invalidate();
        }
    }
}
