package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.blur.NativeBlurProcess;

/* loaded from: classes3.dex */
public class BlurImageView extends ImageView {
    private int blurRadius;
    private Bitmap bmp;
    private Drawable drawable;
    private boolean ignoreResize;
    private int lightenColor;
    private int origHeight;
    private int origWidth;
    private Paint paint;

    public BlurImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.BlurImageView;
        int i = R.style.BlurImageView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.blurRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BlurImageView_blurRadius, 8);
        this.lightenColor = typedArrayObtainStyledAttributes.getColor(R.styleable.BlurImageView_lightenColor, 0);
        this.ignoreResize = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BlurImageView_ignoreResize, false);
        typedArrayObtainStyledAttributes.recycle();
        this.paint = new Paint();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        Bitmap bitmap = this.bmp;
        if (bitmap != null) {
            bitmap.recycle();
            this.bmp = null;
        }
    }

    public void setImageDrawable2(Drawable drawable) {
        if (drawable == null) {
            super.setImageDrawable(null);
        }
        if (drawable instanceof BitmapDrawable) {
            this.drawable = new BitmapDrawable(((BitmapDrawable) drawable).getBitmap());
        } else {
            this.drawable = drawable;
        }
        invalidate();
        Bitmap bitmap = this.bmp;
        if (bitmap != null) {
            bitmap.recycle();
            this.bmp = null;
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        Bitmap bitmap = this.bmp;
        if (bitmap != null) {
            bitmap.recycle();
            this.bmp = null;
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.ignoreResize || this.origWidth == 0) {
            this.origWidth = getWidth();
            this.origHeight = getHeight();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int intrinsicWidth;
        int intrinsicHeight;
        float f;
        float f2;
        float f3;
        Drawable drawable = this.drawable;
        if (drawable == null) {
            drawable = getDrawable();
        }
        if (this.blurRadius == 0 || drawable == null || drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            super.onDraw(canvas);
        } else {
            int paddingLeft = (((this.origWidth - getPaddingLeft()) - getPaddingRight()) + 1) / 2;
            int paddingTop = (((this.origHeight - getPaddingTop()) - getPaddingBottom()) + 1) / 2;
            Bitmap bitmap = this.bmp;
            if (bitmap == null || bitmap.getWidth() != paddingLeft || this.bmp.getHeight() != paddingTop) {
                try {
                    Bitmap bitmap2 = drawable instanceof BitmapDrawable ? ((BitmapDrawable) drawable).getBitmap() : null;
                    if (bitmap2 != null) {
                        intrinsicWidth = bitmap2.getWidth();
                        intrinsicHeight = bitmap2.getHeight();
                    } else {
                        intrinsicWidth = drawable.getIntrinsicWidth();
                        intrinsicHeight = drawable.getIntrinsicHeight();
                    }
                    if (intrinsicWidth * paddingTop > paddingLeft * intrinsicHeight) {
                        float f4 = paddingTop / intrinsicHeight;
                        f3 = (paddingLeft - (intrinsicWidth * f4)) * 0.5f;
                        f = f4;
                        f2 = 0.0f;
                    } else {
                        float f5 = paddingLeft / intrinsicWidth;
                        f = f5;
                        f2 = (paddingTop - (intrinsicHeight * f5)) * 0.5f;
                        f3 = 0.0f;
                    }
                    this.bmp = Bitmap.createBitmap(paddingLeft, paddingTop, Bitmap.Config.ARGB_8888);
                    this.bmp.eraseColor(-1);
                    Canvas canvas2 = new Canvas(this.bmp);
                    canvas2.translate(f3, f2);
                    canvas2.scale(f, f);
                    if (bitmap2 != null) {
                        this.paint.setColor(-1);
                        canvas2.drawBitmap(bitmap2, 0.0f, 0.0f, this.paint);
                    } else {
                        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                        drawable.draw(canvas2);
                    }
                    this.bmp = new NativeBlurProcess().blur(this.bmp, this.blurRadius);
                } catch (Throwable th) {
                    this.bmp = null;
                    Log.e("fail to process blur image", th);
                }
            }
        }
        if (this.bmp == null) {
            super.onDraw(canvas);
        } else {
            canvas.save();
            this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            int iMin = Math.min((getHeight() - this.origHeight) / 2, 0);
            canvas.translate(getPaddingLeft(), getPaddingTop());
            canvas.translate(0.0f, iMin);
            canvas.scale(2.0f, 2.0f);
            canvas.drawBitmap(this.bmp, 0.0f, 0.0f, this.paint);
            canvas.restore();
        }
        if (Color.alpha(this.lightenColor) > 0) {
            this.paint.setColor(this.lightenColor);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.paint);
        }
    }
}
