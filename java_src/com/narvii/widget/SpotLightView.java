package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class SpotLightView extends View {
    private int blurRadius;
    private Bitmap cache;
    private int color;
    private Paint paint;
    private Rect rect;

    public SpotLightView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.SpotLightView;
        int i = R.style.SpotLightView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.blurRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SpotLightView_spotBlurRadius, 20);
        this.color = typedArrayObtainStyledAttributes.getColor(R.styleable.SpotLightView_spotShadowColor, -432852173);
        typedArrayObtainStyledAttributes.recycle();
        this.paint = new Paint();
    }

    public void setSpotRect(Rect rect) {
        if (rect == null) {
            setSpotRect(0, 0, 0, 0);
        } else {
            setSpotRect(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    public void setSpotRect(int i, int i2, int i3, int i4) {
        if (i == i3 && i2 == i4) {
            this.rect = null;
        } else {
            if (this.rect == null) {
                this.rect = new Rect();
            }
            this.rect.set(i, i2, i3, i4);
        }
        invalidate();
    }

    public void setSpotBlurRadius(int i) {
        this.blurRadius = i;
        invalidate();
    }

    public void setSpotShadowColor(int i) {
        this.color = i;
        invalidate();
    }

    private static Bitmap generate(int i, int i2, int i3, int i4) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        int i5 = i4 * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i + i5, i5 + i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(i3);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        float f = i4;
        paint.setMaskFilter(new BlurMaskFilter(f, BlurMaskFilter.Blur.NORMAL));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        RectF rectF = new RectF();
        rectF.left = f;
        rectF.top = f;
        rectF.right = i + i4;
        rectF.bottom = i2 + i4;
        canvas.drawOval(rectF, paint);
        return bitmapCreateBitmap;
    }

    private Bitmap prepare() {
        if (this.rect == null) {
            Bitmap bitmap = this.cache;
            if (bitmap != null) {
                bitmap.recycle();
                this.cache = null;
            }
        } else {
            Bitmap bitmap2 = this.cache;
            if (bitmap2 == null || bitmap2.getWidth() != this.rect.width() || this.cache.getHeight() != this.rect.height()) {
                Bitmap bitmap3 = this.cache;
                if (bitmap3 != null) {
                    bitmap3.recycle();
                }
                this.cache = generate(this.rect.width(), this.rect.height(), this.color, this.blurRadius);
            }
        }
        return this.cache;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Rect rect = this.rect;
        if (rect == null || rect.width() <= 0 || this.rect.height() <= 0) {
            return;
        }
        this.paint.setColor(this.color);
        int width = getWidth();
        int height = getHeight();
        int i = this.blurRadius;
        float f = height;
        canvas.drawRect(0.0f, 0.0f, this.rect.left - i, f, this.paint);
        Rect rect2 = this.rect;
        canvas.drawRect(rect2.left - i, 0.0f, rect2.right + i, rect2.top - i, this.paint);
        canvas.drawRect(this.rect.right + i, 0.0f, width, f, this.paint);
        Rect rect3 = this.rect;
        canvas.drawRect(rect3.left - i, rect3.bottom + i, rect3.right + i, f, this.paint);
        this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        Bitmap bitmapPrepare = prepare();
        Rect rect4 = this.rect;
        canvas.drawBitmap(bitmapPrepare, rect4.left - i, rect4.top - i, this.paint);
    }
}
