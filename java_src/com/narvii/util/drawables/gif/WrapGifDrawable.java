package com.narvii.util.drawables.gif;

import android.graphics.Bitmap;
import com.narvii.util.drawables.DistCallback;
import com.narvii.util.drawables.WrapDrawable;

/* loaded from: classes3.dex */
public class WrapGifDrawable extends WrapDrawable<NVGifDrawable> {
    public WrapGifDrawable(NVGifDrawable nVGifDrawable) {
        super(nVGifDrawable);
    }

    @Override // com.narvii.util.drawables.WrapDrawable
    protected void setupDistCallback() {
        DistCallback distCallback;
        T t = this.wrapped;
        if (((NVGifDrawable) t).callback instanceof DistCallback) {
            distCallback = (DistCallback) ((NVGifDrawable) t).callback;
        } else {
            distCallback = new DistCallback();
            ((NVGifDrawable) this.wrapped).setCallback(distCallback);
            ((NVGifDrawable) this.wrapped).callback = distCallback;
        }
        distCallback.add(this);
    }

    public Bitmap draw() {
        return ((NVGifDrawable) this.wrapped).draw();
    }
}
