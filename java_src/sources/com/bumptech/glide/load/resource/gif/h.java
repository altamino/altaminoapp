package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.k;

/* JADX INFO: loaded from: classes7.dex */
public final class h implements k<com.bumptech.glide.gifdecoder.a, Bitmap> {
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull com.bumptech.glide.gifdecoder.a aVar, @NonNull com.bumptech.glide.load.i iVar) {
        return true;
    }

    public h(com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        this.bitmapPool = dVar;
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public v<Bitmap> b(@NonNull com.bumptech.glide.gifdecoder.a aVar, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return com.bumptech.glide.load.resource.bitmap.f.d(aVar.e(), this.bitmapPool);
    }
}
