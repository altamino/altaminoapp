package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class MaskView extends RelativeLayout {
    public static final int SHAPE_OVAL = 0;
    public static final int SHAPE_RECT = 1;
    private static final RectF rectf = new RectF();
    private Paint paint;
    private final Path path;
    protected int placeholderColor;
    private int shape;
    private int strokeColor;
    private float strokeWidth;

    public MaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.placeholderColor = 0;
        this.path = new Path();
        setLayerType(1, null);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaskView);
        this.shape = typedArrayObtainStyledAttributes.getInt(R.styleable.MaskView_maskShape, 0);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.MaskView_maskStrokeWidth, 0.0f);
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.MaskView_maskStrokeColor, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.path.reset();
        RectF rectF = rectf;
        rectF.left = 0.0f;
        rectF.right = getWidth();
        RectF rectF2 = rectf;
        rectF2.top = 0.0f;
        rectF2.bottom = getHeight();
        if (this.shape == 1) {
            this.path.addRect(rectf, Path.Direction.CCW);
        } else {
            this.path.addOval(rectf, Path.Direction.CCW);
        }
        canvas.save();
        try {
            try {
                canvas.clipPath(this.path);
                if (this.placeholderColor != 0) {
                    canvas.drawColor(this.placeholderColor);
                }
                super.dispatchDraw(canvas);
            } catch (Exception unused) {
                super.dispatchDraw(canvas);
            }
            canvas.restore();
            if (this.strokeWidth > 0.0f) {
                if (this.paint == null) {
                    this.paint = new Paint();
                    this.paint.setAntiAlias(true);
                    this.paint.setStyle(Paint.Style.STROKE);
                }
                this.paint.setColor(this.strokeColor);
                this.paint.setStrokeWidth(this.strokeWidth);
                canvas.drawPath(this.path, this.paint);
            }
        } catch (Throwable th) {
            canvas.restore();
            throw th;
        }
    }
}
