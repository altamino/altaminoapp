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

/* loaded from: classes3.dex */
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

    public GradientView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPath = new Path();
        this.boundRect = new RectF();
        this.startXPercent = 0.0f;
        this.startYPercent = 0.0f;
        this.endXPercent = 1.0f;
        this.endYPercent = 1.0f;
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.overlayPaint = new Paint();
        this.overlayPaint.setAntiAlias(true);
        this.bgPaint = new Paint();
        this.bgPaint.setAntiAlias(true);
    }

    public void setColor(int i, int i2) {
        this.color1 = i;
        this.color2 = i2;
        invalidate();
    }

    public void setPressedColor(int i, int i2) {
        this.pressedColor1 = i;
        this.pressedColor2 = i2;
        invalidate();
    }

    public void allowPress() {
        setPressedColor(Utils.darkColor(this.color1), Utils.darkColor(this.color2));
    }

    public void setOverlayColor(int i) {
        this.overlayColor = i;
        invalidate();
    }

    public void setBgColor(int i) {
        this.bgColor = i;
        invalidate();
    }

    public void setRadius(float f) {
        this.radius = f;
        invalidate();
    }

    public void setRadius(float[] fArr) {
        this.radiusArray = fArr;
        invalidate();
    }

    public void setGradientLine(float f, float f2, float f3, float f4) {
        this.startXPercent = f;
        this.startYPercent = f2;
        this.endXPercent = f3;
        this.endYPercent = f4;
        invalidate();
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        if (this.pressedColor1 == 0 || this.pressedColor2 == 0) {
            return;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        super.onDraw(canvas);
        if (this.color1 == 0 && this.color2 == 0) {
            return;
        }
        float width = getWidth();
        float height = getHeight();
        this.boundRect.set(0.0f, 0.0f, width, height);
        if (this.color1 == this.color2) {
            this.paint.setDither(true);
            this.paint.setShader(null);
            this.paint.setColor(this.color1);
        } else {
            if (!isPressed() || (i = this.pressedColor1) == 0) {
                i = this.color1;
            }
            int i3 = i;
            if (!isPressed() || (i2 = this.pressedColor2) == 0) {
                i2 = this.color2;
            }
            LinearGradient linearGradient = new LinearGradient(this.startXPercent * width, this.startYPercent * height, this.endXPercent * width, this.endYPercent * height, i3, i2, Shader.TileMode.CLAMP);
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
        float f2 = this.radius;
        canvas.drawRoundRect(rectF2, f2, f2, this.paint);
        if (this.overlayColor != 0) {
            RectF rectF3 = this.boundRect;
            float f3 = this.radius;
            canvas.drawRoundRect(rectF3, f3, f3, this.overlayPaint);
        }
    }
}
