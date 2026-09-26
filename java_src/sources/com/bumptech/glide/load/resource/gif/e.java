package com.bumptech.glide.load.resource.gif;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public class e extends com.bumptech.glide.load.resource.drawable.b<c> {
    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<c> b() {
        return c.class;
    }

    @Override // com.bumptech.glide.load.engine.v
    public void a() {
        ((c) this.drawable).stop();
        ((c) this.drawable).k();
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return ((c) this.drawable).i();
    }

    @Override // com.bumptech.glide.load.resource.drawable.b, com.bumptech.glide.load.engine.r
    public void initialize() {
        ((c) this.drawable).e().prepareToDraw();
    }

    public e(c cVar) {
        super(cVar);
    }
}
