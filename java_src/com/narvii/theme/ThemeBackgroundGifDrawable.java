package com.narvii.theme;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;

/* loaded from: classes3.dex */
public class ThemeBackgroundGifDrawable extends WrapGifDrawable {
    private boolean clipPageBackgroundForActionbar;
    public boolean invalidateDirectly;

    public ThemeBackgroundGifDrawable(NVGifDrawable nVGifDrawable, boolean z) {
        super(nVGifDrawable);
        this.clipPageBackgroundForActionbar = z;
    }

    @Override // com.narvii.util.drawables.WrapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        float intrinsicWidth = ((NVGifDrawable) this.wrapped).getIntrinsicWidth();
        float intrinsicHeight = ((NVGifDrawable) this.wrapped).getIntrinsicHeight();
        float fMax = Math.max((bounds.width() * 1.0f) / intrinsicWidth, (bounds.height() * 1.0f) / intrinsicHeight);
        float f = ((intrinsicWidth * fMax) - intrinsicWidth) / 2.0f;
        ((NVGifDrawable) this.wrapped).setBounds(bounds.left - Math.round(f), 0, bounds.right + Math.round(f), Math.round(intrinsicHeight * fMax));
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
