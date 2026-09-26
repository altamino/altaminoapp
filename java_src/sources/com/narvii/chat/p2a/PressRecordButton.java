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
import androidx.core.view.ViewCompat;
import com.narvii.chat.video.CameraRenderer;

/* JADX INFO: loaded from: classes5.dex */
public class PressRecordButton extends View {
    public CameraRenderer cameraRenderer;
    private Paint paint;
    private boolean pressed;
    public PressListener pressedListener;
    private long prevTime;
    private float progress;
    private final RectF rectF;

    public interface PressListener {
        boolean onPress(boolean z6);
    }

    private float c(float f, float f6, float f7) {
        return f + ((f6 - f) * f7);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j6 = this.prevTime;
        float fMin = (j6 == 0 || jCurrentAnimationTimeMillis - j6 < 20) ? 1.0f : Math.min(3.0f, ((jCurrentAnimationTimeMillis - j6) * 1.0f) / 16.667f);
        int width = getWidth();
        int height = getHeight();
        float fApplyDimension = TypedValue.applyDimension(1, c(3.0f, 5.0f, this.progress), getResources().getDisplayMetrics());
        if (this.pressed) {
            float f = this.progress;
            if (f < 1.0f) {
                float f6 = 1.0f - f;
                this.progress = Math.min(1.0f, f + (((f6 * f6 * 0.26f) + 0.02f) * fMin));
            }
        }
        if (!this.pressed) {
            float f7 = this.progress;
            if (f7 > 0.0f) {
                this.progress = Math.max(0.0f, f7 - (fMin * 0.1f));
            }
        }
        this.paint.setColor(-1437166);
        this.paint.setStyle(Paint.Style.FILL);
        float f10 = width / 2;
        float f11 = height;
        canvas.drawCircle(f10, c(0.75f, 0.5f, this.progress) * f11, (c(0.25f, 0.38f, this.progress) * f11) - (1.5f * fApplyDimension), this.paint);
        float fC = c(0.75f, 0.5f, this.progress) * f11;
        float fC2 = (f11 * c(0.25f, 0.5f, this.progress)) - (fApplyDimension / 2.0f);
        this.paint.setColor((((int) (c(1.0f, 0.25f, this.progress) * 255.0f)) << 24) | ViewCompat.MEASURED_SIZE_MASK);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(fApplyDimension);
        canvas.drawCircle(f10, fC, fC2, this.paint);
        CameraRenderer cameraRenderer = this.cameraRenderer;
        float recordTime = (cameraRenderer == null || cameraRenderer.getRecordDuration() <= 0) ? 0.0f : (this.cameraRenderer.getRecordTime() * 1.0f) / this.cameraRenderer.getRecordDuration();
        RectF rectF = this.rectF;
        rectF.left = f10 - fC2;
        rectF.right = f10 + fC2;
        rectF.top = fC - fC2;
        rectF.bottom = fC + fC2;
        this.paint.setColor(-1);
        canvas.drawArc(this.rectF, 270.0f, 360.0f * recordTime, false, this.paint);
        float f12 = this.progress;
        if (f12 == 0.0f || f12 == 1.0f) {
            this.prevTime = 0L;
        }
        if (f12 != 0.0f) {
            invalidate();
        }
    }

    public PressRecordButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
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
        if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
            return super.onTouchEvent(motionEvent);
        }
        this.pressedListener.onPress(false);
        this.pressed = false;
        invalidate();
        return true;
    }
}
