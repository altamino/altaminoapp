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
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.narvii.util.crashlytics.OomHelper;

/* loaded from: classes3.dex */
public class ShinyTitle extends LinearLayout {
    Bitmap cache;
    Paint paint;

    public ShinyTitle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        Bitmap bitmap = this.cache;
        if (bitmap != null && bitmap.getWidth() == i5 && this.cache.getHeight() == i6) {
            return;
        }
        Bitmap bitmap2 = this.cache;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.cache = null;
        }
        try {
            this.cache = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
        } catch (Throwable th) {
            OomHelper.test(th);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        float height = getHeight();
        int i = (int) (1.5f * height);
        int i2 = (i * 2) + width;
        float fUptimeMillis = ((SystemClock.uptimeMillis() % 2200) * 1.8f) / 2200.0f;
        Bitmap bitmap = this.cache;
        if (bitmap == null || fUptimeMillis >= 1.0f) {
            super.dispatchDraw(canvas);
        } else {
            int i3 = (int) (fUptimeMillis * i2);
            Canvas canvas2 = new Canvas(bitmap);
            this.cache.eraseColor(0);
            super.dispatchDraw(canvas2);
            this.paint.setShader(new RadialGradient(i3, r2 / 2, i, 1627389951, -1, Shader.TileMode.CLAMP));
            this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            canvas2.drawRect(0.0f, 0.0f, width, height, this.paint);
            this.paint.setShader(null);
            this.paint.setXfermode(null);
            canvas.drawBitmap(this.cache, 0.0f, 0.0f, this.paint);
        }
        invalidate();
    }
}
