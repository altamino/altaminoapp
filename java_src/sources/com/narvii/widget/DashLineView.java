package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
public class DashLineView extends View {
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    private final float dashGap;
    private final float dashWidth;
    private final int orientation;
    private final Paint paint;
    private final Path path;
    private final int strokeColor;
    private final float strokeWidth;

    public DashLineView(Context context) {
        this(context, null);
    }

    public DashLineView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setUpPaint() {
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setColor(this.strokeColor);
        this.paint.setStrokeWidth(this.strokeWidth);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setPathEffect(new DashPathEffect(new float[]{this.dashWidth, this.dashGap}, 0.0f));
    }

    public DashLineView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DashLineView);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.DashLineView_stroke_width, Utils.dpToPx(getContext(), 2.0f));
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.DashLineView_stroke_color, -1);
        this.orientation = typedArrayObtainStyledAttributes.getInt(R.styleable.DashLineView_orientation, 0);
        this.dashWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.DashLineView_dash_width, Utils.dpToPx(getContext(), 2.0f));
        this.dashGap = typedArrayObtainStyledAttributes.getDimension(R.styleable.DashLineView_dash_gap, Utils.dpToPx(getContext(), 2.0f));
        typedArrayObtainStyledAttributes.recycle();
        this.paint = new Paint();
        this.path = new Path();
        setUpPaint();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i10 = this.orientation;
        if (i10 == 1) {
            int width = getWidth() / 2;
            int height = getHeight();
            float f = width;
            this.path.moveTo(f, 0.0f);
            this.path.lineTo(f, height);
        } else if (i10 == 0) {
            int width2 = getWidth();
            float height2 = getHeight() / 2;
            this.path.moveTo(0.0f, height2);
            this.path.lineTo(width2, height2);
        }
        canvas.drawPath(this.path, this.paint);
    }
}
