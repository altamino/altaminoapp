package com.narvii.util.drawables.webp;

import android.graphics.Bitmap;
import com.narvii.util.drawables.DistCallback;
import com.narvii.util.drawables.WrapDrawable;

/* JADX INFO: loaded from: classes10.dex */
public class WrapWebPDrawable extends WrapDrawable<NVWebPDrawable> {
    public Bitmap draw() {
        return ((NVWebPDrawable) this.wrapped).draw();
    }

    @Override // com.narvii.util.drawables.WrapDrawable
    protected void setupDistCallback() {
        DistCallback distCallback;
        T t5 = this.wrapped;
        if (((NVWebPDrawable) t5).callback instanceof DistCallback) {
            distCallback = (DistCallback) ((NVWebPDrawable) t5).callback;
        } else {
            distCallback = new DistCallback();
            ((NVWebPDrawable) this.wrapped).setCallback(distCallback);
            ((NVWebPDrawable) this.wrapped).callback = distCallback;
        }
        distCallback.add(this);
    }

    public WrapWebPDrawable(NVWebPDrawable nVWebPDrawable) {
        super(nVWebPDrawable);
    }
}
