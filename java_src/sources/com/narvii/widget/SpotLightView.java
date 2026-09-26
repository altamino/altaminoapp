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
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public class SpotLightView extends View {
    private int blurRadius;
    private Bitmap cache;
    private int color;
    private Paint paint;
    private Rect rect;

    public void setSpotRect(Rect rect) {
        if (rect == null) {
            setSpotRect(0, 0, 0, 0);
        } else {
            setSpotRect(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    private static Bitmap generate(int i10, int i11, int i12, int i13) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        int i14 = i13 * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10 + i14, i14 + i11, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(i12);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        float f = i13;
        paint.setMaskFilter(new BlurMaskFilter(f, BlurMaskFilter.Blur.NORMAL));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        RectF rectF = new RectF();
        rectF.left = f;
        rectF.top = f;
        rectF.right = i10 + i13;
        rectF.bottom = i11 + i13;
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

    public void setSpotBlurRadius(int i10) {
        this.blurRadius = i10;
        invalidate();
    }

    public void setSpotShadowColor(int i10) {
        this.color = i10;
        invalidate();
    }

    public SpotLightView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.SpotLightView;
        int i10 = R.style.SpotLightView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
        this.blurRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SpotLightView_spotBlurRadius, 20);
        this.color = typedArrayObtainStyledAttributes.getColor(R.styleable.SpotLightView_spotShadowColor, -432852173);
        typedArrayObtainStyledAttributes.recycle();
        this.paint = new Paint();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Rect rect = this.rect;
        if (rect != null && rect.width() > 0 && this.rect.height() > 0) {
            this.paint.setColor(this.color);
            int width = getWidth();
            int height = getHeight();
            int i10 = this.blurRadius;
            float f = height;
            canvas.drawRect(0.0f, 0.0f, this.rect.left - i10, f, this.paint);
            Rect rect2 = this.rect;
            canvas.drawRect(rect2.left - i10, 0.0f, rect2.right + i10, rect2.top - i10, this.paint);
            canvas.drawRect(this.rect.right + i10, 0.0f, width, f, this.paint);
            Rect rect3 = this.rect;
            canvas.drawRect(rect3.left - i10, rect3.bottom + i10, rect3.right + i10, f, this.paint);
            this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            Bitmap bitmapPrepare = prepare();
            Rect rect4 = this.rect;
            canvas.drawBitmap(bitmapPrepare, rect4.left - i10, rect4.top - i10, this.paint);
        }
    }

    public void setSpotRect(int i10, int i11, int i12, int i13) {
        if (i10 == i12 && i11 == i13) {
            this.rect = null;
        } else {
            if (this.rect == null) {
                this.rect = new Rect();
            }
            this.rect.set(i10, i11, i12, i13);
        }
        invalidate();
    }
}
