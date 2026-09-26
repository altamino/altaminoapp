package com.narvii.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.narvii.util.crashlytics.OomHelper;

/* JADX INFO: loaded from: classes5.dex */
public class ShinyTitle extends LinearLayout {
    Bitmap cache;
    Paint paint;

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float f = height;
        int i10 = (int) (1.5f * f);
        int i11 = (i10 * 2) + width;
        float fUptimeMillis = ((SystemClock.uptimeMillis() % 2200) * 1.8f) / 2200.0f;
        if (this.cache == null || fUptimeMillis >= 1.0f) {
            super.dispatchDraw(canvas);
        } else {
            int i12 = (int) (fUptimeMillis * i11);
            Canvas canvas2 = new Canvas(this.cache);
            this.cache.eraseColor(0);
            super.dispatchDraw(canvas2);
            this.paint.setShader(new RadialGradient(i12, height / 2, i10, 1627389951, -1, Shader.TileMode.CLAMP));
            this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas2.drawRect(0.0f, 0.0f, width, f, this.paint);
            this.paint.setShader(null);
            this.paint.setXfermode(null);
            canvas.drawBitmap(this.cache, 0.0f, 0.0f, this.paint);
        }
        invalidate();
    }

    public ShinyTitle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        Bitmap bitmap = this.cache;
        if (bitmap == null || bitmap.getWidth() != i14 || this.cache.getHeight() != i15) {
            Bitmap bitmap2 = this.cache;
            if (bitmap2 != null) {
                bitmap2.recycle();
                this.cache = null;
            }
            try {
                this.cache = Bitmap.createBitmap(i14, i15, Bitmap.Config.ARGB_8888);
            } catch (Throwable th) {
                OomHelper.test(th);
            }
        }
    }
}
