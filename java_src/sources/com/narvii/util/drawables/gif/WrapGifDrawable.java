package com.narvii.util.drawables.gif;

import android.graphics.Bitmap;
import com.narvii.util.drawables.DistCallback;
import com.narvii.util.drawables.WrapDrawable;

/* JADX INFO: loaded from: classes8.dex */
public class WrapGifDrawable extends WrapDrawable<NVGifDrawable> {
    public Bitmap draw() {
        return ((NVGifDrawable) this.wrapped).draw();
    }

    @Override // com.narvii.util.drawables.WrapDrawable
    protected void setupDistCallback() {
        DistCallback distCallback;
        T t5 = this.wrapped;
        if (((NVGifDrawable) t5).callback instanceof DistCallback) {
            distCallback = (DistCallback) ((NVGifDrawable) t5).callback;
        } else {
            distCallback = new DistCallback();
            ((NVGifDrawable) this.wrapped).setCallback(distCallback);
            ((NVGifDrawable) this.wrapped).callback = distCallback;
        }
        distCallback.add(this);
    }

    public WrapGifDrawable(NVGifDrawable nVGifDrawable) {
        super(nVGifDrawable);
    }
}
