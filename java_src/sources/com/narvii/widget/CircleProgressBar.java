package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
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

    public CircleProgressBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setMax(int i10) {
        this.max = i10;
        invalidate();
    }

    public void setProgress(int i10) {
        this.progress = i10;
        invalidate();
    }

    public void setSwipeGradientColor(boolean z6, boolean z10, int i10, int i11) {
        this.reverseSwipe = z6;
        this.gradient = z10;
        this.gradientFromColor = i10;
        this.gradientEndColor = i11;
        invalidate();
    }

    public CircleProgressBar(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
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
        int i10;
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int iMin = (int) (Math.min(width, height) - (this.roundWidth / 2.0f));
        this.paint.setShader(null);
        boolean z6 = true;
        this.paint.setAntiAlias(true);
        if (this.progressStyle != 1) {
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(this.roundWidth);
        } else {
            this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
        }
        this.paint.setColor(this.roundBackgroundColor);
        float f = width;
        float f6 = height;
        canvas.drawCircle(f, f6, iMin, this.paint);
        this.paint.setColor(this.roundProgressColor);
        RectF rectF = new RectF(width - iMin, height - iMin, width + iMin, height + iMin);
        if (this.gradientFromColor != 0 && this.mSweepGradient != null) {
            this.gradientMatrix.setRotate(this.startAngle, f, f6);
            this.mSweepGradient.setLocalMatrix(this.gradientMatrix);
            this.paint.setShader(this.mSweepGradient);
        }
        int i11 = this.progress;
        if (i11 != 0) {
            float f7 = this.startAngle;
            if (this.reverseSwipe) {
                i10 = -1;
            } else {
                i10 = 1;
            }
            float f10 = ((i10 * 360) * i11) / this.max;
            if (this.progressStyle != 1) {
                z6 = false;
            }
            canvas.drawArc(rectF, f7, f10, z6, this.paint);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.gradient) {
            this.mSweepGradient = new SweepGradient(getWidth() / 2, getHeight() / 2, this.gradientFromColor, this.gradientEndColor);
        }
    }
}
