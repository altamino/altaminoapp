package com.narvii.theme;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class TitlebarGifDrawable extends WrapGifDrawable {
    public boolean invalidateDirectly;

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.invalidateDirectly && (getCallback() instanceof View)) {
            ((View) getCallback()).invalidate();
        } else {
            super.invalidateSelf();
        }
    }

    public TitlebarGifDrawable(NVGifDrawable nVGifDrawable) {
        super(nVGifDrawable);
    }

    @Override // com.narvii.util.drawables.WrapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int intrinsicHeight = (int) (((((NVGifDrawable) this.wrapped).getIntrinsicHeight() * 1.0f) / ((NVGifDrawable) this.wrapped).getIntrinsicWidth()) * bounds.width());
        int iHeight = bounds.height();
        NVGifDrawable nVGifDrawable = (NVGifDrawable) this.wrapped;
        int i10 = bounds.left;
        int i11 = bounds.top;
        int i12 = (iHeight - intrinsicHeight) / 2;
        int iMin = Math.min(i11, i11 + i12);
        int i13 = bounds.right;
        int i14 = bounds.bottom;
        nVGifDrawable.setBounds(i10, iMin, i13, Math.max(i14, i14 - i12));
        ((NVGifDrawable) this.wrapped).draw(canvas);
    }
}
