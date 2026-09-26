package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.File;

/* JADX INFO: loaded from: classes11.dex */
public class b implements com.bumptech.glide.load.l<BitmapDrawable> {
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final com.bumptech.glide.load.l<Bitmap> encoder;

    @Override // com.bumptech.glide.load.l
    @NonNull
    public com.bumptech.glide.load.c b(@NonNull com.bumptech.glide.load.i iVar) {
        return this.encoder.b(iVar);
    }

    @Override // com.bumptech.glide.load.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull com.bumptech.glide.load.engine.v<BitmapDrawable> vVar, @NonNull File file, @NonNull com.bumptech.glide.load.i iVar) {
        return this.encoder.a((Bitmap) new f(vVar.get().getBitmap(), this.bitmapPool), file, iVar);
    }

    public b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.load.l<Bitmap> lVar) {
        this.bitmapPool = dVar;
        this.encoder = lVar;
    }
}
