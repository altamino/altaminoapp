package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class GradientView extends View {
    int bgColor;
    Paint bgPaint;
    private RectF boundRect;
    int color1;
    int color2;
    private float endXPercent;
    private float endYPercent;
    Path mPath;
    int overlayColor;
    Paint overlayPaint;
    Paint paint;
    int pressedColor1;
    int pressedColor2;
    float radius;
    float[] radiusArray;
    private float startXPercent;
    private float startYPercent;

    public void setRadius(float f) {
        this.radius = f;
        invalidate();
    }

    public void allowPress() {
        setPressedColor(Utils.darkColor(this.color1), Utils.darkColor(this.color2));
    }

    public void setBgColor(int i10) {
        this.bgColor = i10;
        invalidate();
    }

    public void setColor(int i10, int i11) {
        this.color1 = i10;
        this.color2 = i11;
        invalidate();
    }

    public void setGradientLine(float f, float f6, float f7, float f10) {
        this.startXPercent = f;
        this.startYPercent = f6;
        this.endXPercent = f7;
        this.endYPercent = f10;
        invalidate();
    }

    public void setOverlayColor(int i10) {
        this.overlayColor = i10;
        invalidate();
    }

    public void setPressedColor(int i10, int i11) {
        this.pressedColor1 = i10;
        this.pressedColor2 = i11;
        invalidate();
    }

    public void setRadius(float[] fArr) {
        this.radiusArray = fArr;
        invalidate();
    }

    public GradientView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPath = new Path();
        this.boundRect = new RectF();
        this.startXPercent = 0.0f;
        this.startYPercent = 0.0f;
        this.endXPercent = 1.0f;
        this.endYPercent = 1.0f;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.overlayPaint = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.bgPaint = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        int i11;
        super.onDraw(canvas);
        if (this.color1 != 0 || this.color2 != 0) {
            float width = getWidth();
            float height = getHeight();
            this.boundRect.set(0.0f, 0.0f, width, height);
            if (this.color1 == this.color2) {
                this.paint.setDither(true);
                this.paint.setShader(null);
                this.paint.setColor(this.color1);
            } else {
                if (!isPressed() || (i10 = this.pressedColor1) == 0) {
                    i10 = this.color1;
                }
                int i12 = i10;
                if (!isPressed() || (i11 = this.pressedColor2) == 0) {
                    i11 = this.color2;
                }
                LinearGradient linearGradient = new LinearGradient(this.startXPercent * width, this.startYPercent * height, this.endXPercent * width, this.endYPercent * height, i12, i11, Shader.TileMode.CLAMP);
                this.paint.setDither(true);
                this.paint.setShader(linearGradient);
            }
            this.bgPaint.setColor(this.bgColor);
            this.overlayPaint.setColor(this.overlayColor);
            if (this.radiusArray != null) {
                this.mPath.reset();
                this.mPath.addRoundRect(this.boundRect, this.radiusArray, Path.Direction.CW);
                if (this.bgColor != 0) {
                    canvas.drawPath(this.mPath, this.bgPaint);
                }
                canvas.drawPath(this.mPath, this.paint);
                if (this.overlayColor != 0) {
                    canvas.drawPath(this.mPath, this.overlayPaint);
                    return;
                }
                return;
            }
            if (this.bgColor != 0) {
                RectF rectF = this.boundRect;
                float f = this.radius;
                canvas.drawRoundRect(rectF, f, f, this.bgPaint);
            }
            RectF rectF2 = this.boundRect;
            float f6 = this.radius;
            canvas.drawRoundRect(rectF2, f6, f6, this.paint);
            if (this.overlayColor != 0) {
                RectF rectF3 = this.boundRect;
                float f7 = this.radius;
                canvas.drawRoundRect(rectF3, f7, f7, this.overlayPaint);
            }
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
        if (this.pressedColor1 != 0 && this.pressedColor2 != 0) {
            invalidate();
        }
    }
}
