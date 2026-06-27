package com.narvii.util.drawables.webp;

import android.graphics.Bitmap;
import com.narvii.util.drawables.DistCallback;
import com.narvii.util.drawables.WrapDrawable;

/* loaded from: classes3.dex */
public class WrapWebPDrawable extends WrapDrawable<NVWebPDrawable> {
    public WrapWebPDrawable(NVWebPDrawable nVWebPDrawable) {
        super(nVWebPDrawable);
    }

    @Override // com.narvii.util.drawables.WrapDrawable
    protected void setupDistCallback() {
        DistCallback distCallback;
        T t = this.wrapped;
        if (((NVWebPDrawable) t).callback instanceof DistCallback) {
            distCallback = (DistCallback) ((NVWebPDrawable) t).callback;
        } else {
            distCallback = new DistCallback();
            ((NVWebPDrawable) this.wrapped).setCallback(distCallback);
            ((NVWebPDrawable) this.wrapped).callback = distCallback;
        }
        distCallback.add(this);
    }

    public Bitmap draw() {
        return ((NVWebPDrawable) this.wrapped).draw();
    }
}
