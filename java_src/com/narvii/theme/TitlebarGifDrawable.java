package com.narvii.theme;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;

/* loaded from: classes3.dex */
public class TitlebarGifDrawable extends WrapGifDrawable {
    public boolean invalidateDirectly;

    public TitlebarGifDrawable(NVGifDrawable nVGifDrawable) {
        super(nVGifDrawable);
    }

    @Override // com.narvii.util.drawables.WrapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int iHeight = bounds.height();
        NVGifDrawable nVGifDrawable = (NVGifDrawable) this.wrapped;
        int i = bounds.left;
        int i2 = bounds.top;
        int intrinsicHeight = (iHeight - ((int) (((((NVGifDrawable) this.wrapped).getIntrinsicHeight() * 1.0f) / ((NVGifDrawable) this.wrapped).getIntrinsicWidth()) * bounds.width()))) / 2;
        int iMin = Math.min(i2, i2 + intrinsicHeight);
        int i3 = bounds.right;
        int i4 = bounds.bottom;
        nVGifDrawable.setBounds(i, iMin, i3, Math.max(i4, i4 - intrinsicHeight));
        ((NVGifDrawable) this.wrapped).draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.invalidateDirectly && (getCallback() instanceof View)) {
            ((View) getCallback()).invalidate();
        } else {
            super.invalidateSelf();
        }
    }
}
