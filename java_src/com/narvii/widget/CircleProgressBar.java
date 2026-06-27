package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class CircleProgressBar extends View {
    private static final int STYLE_FILL = 1;
    private static final int STYLE_STROKE = 0;
    boolean gradient;
    int gradientEndColor;
    int gradientFromColor;
    Matrix gradientMatrix;
    SweepGradient mSweepGradient;
    private int max;
    private Paint paint;
    private int progress;
    private final int progressStyle;
    boolean reverseSwipe;
    private final int roundBackgroundColor;
    private final int roundProgressColor;
    private float roundWidth;
    private final int startAngle;

    public CircleProgressBar(Context context) {
        this(context, null);
    }

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.paint = new Paint();
        this.gradientMatrix = new Matrix();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleProgressBar);
        this.roundBackgroundColor = typedArrayObtainStyledAttributes.getColor(R.styleable.CircleProgressBar_roundBackgroundColor, ViewCompat.MEASURED_STATE_MASK);
        this.roundProgressColor = typedArrayObtainStyledAttributes.getColor(R.styleable.CircleProgressBar_roundProgressColor, SupportMenu.CATEGORY_MASK);
        this.roundWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.CircleProgressBar_roundWidth, 4.0f);
        this.progressStyle = typedArrayObtainStyledAttributes.getInt(R.styleable.CircleProgressBar_progressStyle, 0);
        this.max = typedArrayObtainStyledAttributes.getInteger(R.styleable.CircleProgressBar_max, 100);
        this.progress = typedArrayObtainStyledAttributes.getInteger(R.styleable.CircleProgressBar_progress, 0);
        this.startAngle = typedArrayObtainStyledAttributes.getInt(R.styleable.CircleProgressBar_startAngle, -90);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int iMin = (int) (Math.min(width, height) - (this.roundWidth / 2.0f));
        this.paint.setShader(null);
        this.paint.setAntiAlias(true);
        if (this.progressStyle != 1) {
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(this.roundWidth);
        } else {
            this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
        }
        this.paint.setColor(this.roundBackgroundColor);
        float f = width;
        float f2 = height;
        canvas.drawCircle(f, f2, iMin, this.paint);
        this.paint.setColor(this.roundProgressColor);
        RectF rectF = new RectF(width - iMin, height - iMin, width + iMin, height + iMin);
        if (this.gradientFromColor != 0 && this.mSweepGradient != null) {
            this.gradientMatrix.setRotate(this.startAngle, f, f2);
            this.mSweepGradient.setLocalMatrix(this.gradientMatrix);
            this.paint.setShader(this.mSweepGradient);
        }
        if (this.progress != 0) {
            canvas.drawArc(rectF, this.startAngle, (((this.reverseSwipe ? -1 : 1) * 360) * this.progress) / this.max, this.progressStyle == 1, this.paint);
        }
    }

    public void setSwipeGradientColor(boolean z, boolean z2, int i, int i2) {
        this.reverseSwipe = z;
        this.gradient = z2;
        this.gradientFromColor = i;
        this.gradientEndColor = i2;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.gradient) {
            this.mSweepGradient = new SweepGradient(getWidth() / 2, getHeight() / 2, this.gradientFromColor, this.gradientEndColor);
        }
    }

    public void setMax(int i) {
        this.max = i;
        invalidate();
    }

    public void setProgress(int i) {
        this.progress = i;
        invalidate();
    }
}
