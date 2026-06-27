package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class RadiusLayout extends FrameLayout {
    private boolean hasStroke;
    private int lb;
    private int lt;
    private int rb;
    private int rt;
    private boolean shownStroke;
    private Paint strokePaint;

    public RadiusLayout(Context context) {
        this(context, null);
    }

    public RadiusLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadiusLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.shownStroke = true;
        this.hasStroke = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadiusLayout, i, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_layout_corner_radius, 0);
        int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_layout_corner_radius_left_top, dimensionPixelOffset);
        int dimensionPixelOffset3 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_layout_corner_radius_right_top, dimensionPixelOffset);
        int dimensionPixelOffset4 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_layout_corner_radius_left_bottom, dimensionPixelOffset);
        int dimensionPixelOffset5 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_layout_corner_radius_right_bottom, dimensionPixelOffset);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.RadiusLayout_radius_stroke_color, ViewCompat.MEASURED_STATE_MASK);
        int dimensionPixelOffset6 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_radius_stroke_width, 0);
        int dimensionPixelOffset7 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_radius_stroke_dash_width, 0);
        int dimensionPixelOffset8 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RadiusLayout_radius_stroke_dash_gap_width, 0);
        setRadius(dimensionPixelOffset2, dimensionPixelOffset3, dimensionPixelOffset4, dimensionPixelOffset5);
        setStroke(color, dimensionPixelOffset6, dimensionPixelOffset7, dimensionPixelOffset8);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setRadius(int i, int i2, int i3, int i4) {
        this.lt = i;
        this.rt = i2;
        this.lb = i3;
        this.rb = i4;
    }

    public void setStroke(int i, int i2, int i3, int i4) {
        this.strokePaint = new Paint();
        this.strokePaint.setAntiAlias(true);
        this.strokePaint.setColor(i);
        this.strokePaint.setStyle(Paint.Style.STROKE);
        if (i3 != 0 && i4 != 0) {
            this.strokePaint.setPathEffect(new DashPathEffect(new float[]{i3, i4}, 0.0f));
        }
        this.strokePaint.setStrokeWidth(i2);
        if ((i & ViewCompat.MEASURED_STATE_MASK) == 0 || i2 == 0) {
            this.hasStroke = false;
        } else {
            this.hasStroke = true;
        }
    }

    public void setStrokeVisible(boolean z) {
        this.shownStroke = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        clipRound(canvas);
        super.dispatchDraw(canvas);
        if (this.hasStroke && this.shownStroke) {
            drawStroke(canvas);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        clipRound(canvas);
        super.draw(canvas);
    }

    private void clipRound(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 18) {
            Path path = new Path();
            if (Utils.isRtl()) {
                RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
                int i = this.rt;
                int i2 = this.lt;
                int i3 = this.lb;
                int i4 = this.rb;
                path.addRoundRect(rectF, new float[]{i, i, i2, i2, i3, i3, i4, i4}, Path.Direction.CW);
            } else {
                RectF rectF2 = new RectF(0.0f, 0.0f, getWidth(), getHeight());
                int i5 = this.lt;
                int i6 = this.rt;
                int i7 = this.rb;
                int i8 = this.lb;
                path.addRoundRect(rectF2, new float[]{i5, i5, i6, i6, i7, i7, i8, i8}, Path.Direction.CW);
            }
            canvas.clipPath(path);
            return;
        }
        canvas.clipRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()));
    }

    private void drawStroke(Canvas canvas) {
        if (this.strokePaint == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            Path path = new Path();
            if (Utils.isRtl()) {
                RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
                int i = this.rt;
                int i2 = this.lt;
                int i3 = this.lb;
                int i4 = this.rb;
                path.addRoundRect(rectF, new float[]{i, i, i2, i2, i3, i3, i4, i4}, Path.Direction.CW);
            } else {
                RectF rectF2 = new RectF(0.0f, 0.0f, getWidth(), getHeight());
                int i5 = this.lt;
                int i6 = this.rt;
                int i7 = this.rb;
                int i8 = this.lb;
                path.addRoundRect(rectF2, new float[]{i5, i5, i6, i6, i7, i7, i8, i8}, Path.Direction.CW);
            }
            canvas.drawPath(path, this.strokePaint);
            return;
        }
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.strokePaint);
    }
}
