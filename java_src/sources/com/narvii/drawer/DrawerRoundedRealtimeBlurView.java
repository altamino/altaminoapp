package com.narvii.drawer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import com.narvii.amino.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
public class DrawerRoundedRealtimeBlurView extends DrawerRealtimeBlurView {
    private Paint colorPaint;
    Path mPath;
    private RectF mRectDst;
    private Matrix matrix;
    private Paint paint;
    private int radius;
    float[] radiusArray;
    private BitmapShader shader;
    private WeakReference<Bitmap> shaderBitmapRef;

    @Override // com.narvii.widget.RoundedRealtimeBlurView, com.github.mmin18.widget.RealtimeBlurView
    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i10) {
        if (this.radius == 0 && this.radiusArray == null) {
            super.drawBlurredBitmap(canvas, bitmap, i10);
            return;
        }
        this.mRectDst = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        WeakReference<Bitmap> weakReference = this.shaderBitmapRef;
        if ((weakReference == null ? null : weakReference.get()) != bitmap) {
            this.shader = null;
            this.shaderBitmapRef = null;
        }
        if (bitmap != null) {
            this.matrix.setScale(getWidth() / bitmap.getWidth(), getHeight() / bitmap.getHeight());
            if (this.shader == null) {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.shader = new BitmapShader(bitmap, tileMode, tileMode);
                this.shaderBitmapRef = new WeakReference<>(bitmap);
            }
            this.shader.setLocalMatrix(this.matrix);
            this.paint.setShader(this.shader);
            if (this.radiusArray != null) {
                this.mPath.reset();
                this.mPath.addRoundRect(this.mRectDst, this.radiusArray, Path.Direction.CW);
                canvas.drawPath(this.mPath, this.paint);
            } else {
                RectF rectF = this.mRectDst;
                int i11 = this.radius;
                canvas.drawRoundRect(rectF, i11, i11, this.paint);
            }
        }
        this.colorPaint.setColor(i10);
        if (this.radiusArray != null) {
            this.mPath.reset();
            this.mPath.addRoundRect(this.mRectDst, this.radiusArray, Path.Direction.CW);
            canvas.drawPath(this.mPath, this.colorPaint);
        } else {
            RectF rectF2 = this.mRectDst;
            int i12 = this.radius;
            canvas.drawRoundRect(rectF2, i12, i12, this.colorPaint);
        }
    }

    @Override // com.narvii.widget.RoundedRealtimeBlurView
    public void setRadiusArray(float[] fArr) {
        this.radiusArray = fArr;
        invalidate();
    }

    public DrawerRoundedRealtimeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRectDst = new RectF();
        this.mPath = new Path();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DrawerRoundedRealtimeBlurView);
        this.radius = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.paint = new Paint(3);
        this.colorPaint = new Paint(1);
        this.matrix = new Matrix();
    }
}
