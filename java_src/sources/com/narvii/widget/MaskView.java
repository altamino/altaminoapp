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

/* JADX INFO: loaded from: classes10.dex */
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

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        this.path.reset();
        RectF rectF = rectf;
        rectF.left = 0.0f;
        rectF.right = getWidth();
        rectF.top = 0.0f;
        rectF.bottom = getHeight();
        if (this.shape == 1) {
            this.path.addRect(rectF, Path.Direction.CCW);
        } else {
            this.path.addOval(rectF, Path.Direction.CCW);
        }
        canvas.save();
        try {
            try {
                canvas.clipPath(this.path);
                int i10 = this.placeholderColor;
                if (i10 != 0) {
                    canvas.drawColor(i10);
                }
                super.dispatchDraw(canvas);
            } catch (Exception unused) {
                super.dispatchDraw(canvas);
            }
            canvas.restore();
            if (this.strokeWidth > 0.0f) {
                if (this.paint == null) {
                    Paint paint = new Paint();
                    this.paint = paint;
                    paint.setAntiAlias(true);
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
}
