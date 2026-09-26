package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class RadiusLayout extends FrameLayout {
    private boolean hasStroke;
    private int lb;
    private int lt;
    private int rb;
    private int rt;
    private boolean shownStroke;
    private Paint strokePaint;

    public RadiusLayout(@NonNull Context context) {
        this(context, null);
    }

    public void setRadius(int i10, int i11, int i12, int i13) {
        this.lt = i10;
        this.rt = i11;
        this.lb = i12;
        this.rb = i13;
    }

    public void setStrokeVisible(boolean z6) {
        this.shownStroke = z6;
    }

    public RadiusLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void clipRound(Canvas canvas) {
        Path path = new Path();
        if (Utils.isRtl()) {
            RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
            int i10 = this.rt;
            int i11 = this.lt;
            int i12 = this.lb;
            int i13 = this.rb;
            path.addRoundRect(rectF, new float[]{i10, i10, i11, i11, i12, i12, i13, i13}, Path.Direction.CW);
        } else {
            RectF rectF2 = new RectF(0.0f, 0.0f, getWidth(), getHeight());
            int i14 = this.lt;
            int i15 = this.rt;
            int i16 = this.rb;
            int i17 = this.lb;
            path.addRoundRect(rectF2, new float[]{i14, i14, i15, i15, i16, i16, i17, i17}, Path.Direction.CW);
        }
        canvas.clipPath(path);
    }

    private void drawStroke(Canvas canvas) {
        if (this.strokePaint == null) {
            return;
        }
        Path path = new Path();
        if (Utils.isRtl()) {
            RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
            int i10 = this.rt;
            int i11 = this.lt;
            int i12 = this.lb;
            int i13 = this.rb;
            path.addRoundRect(rectF, new float[]{i10, i10, i11, i11, i12, i12, i13, i13}, Path.Direction.CW);
        } else {
            RectF rectF2 = new RectF(0.0f, 0.0f, getWidth(), getHeight());
            int i14 = this.lt;
            int i15 = this.rt;
            int i16 = this.rb;
            int i17 = this.lb;
            path.addRoundRect(rectF2, new float[]{i14, i14, i15, i15, i16, i16, i17, i17}, Path.Direction.CW);
        }
        canvas.drawPath(path, this.strokePaint);
    }

    public void setStroke(int i10, int i11, int i12, int i13) {
        Paint paint = new Paint();
        this.strokePaint = paint;
        paint.setAntiAlias(true);
        this.strokePaint.setColor(i10);
        this.strokePaint.setStyle(Paint.Style.STROKE);
        if (i12 != 0 && i13 != 0) {
            this.strokePaint.setPathEffect(new DashPathEffect(new float[]{i12, i13}, 0.0f));
        }
        this.strokePaint.setStrokeWidth(i11);
        if ((i10 & ViewCompat.MEASURED_STATE_MASK) == 0 || i11 == 0) {
            this.hasStroke = false;
        } else {
            this.hasStroke = true;
        }
    }

    public RadiusLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.shownStroke = true;
        this.hasStroke = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadiusLayout, i10, 0);
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
}
