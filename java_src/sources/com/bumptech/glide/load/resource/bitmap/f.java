package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class f implements com.bumptech.glide.load.engine.v<Bitmap>, com.bumptech.glide.load.engine.r {
    private final Bitmap bitmap;
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<Bitmap> b() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Bitmap get() {
        return this.bitmap;
    }

    @Nullable
    public static f d(@Nullable Bitmap bitmap, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        if (bitmap == null) {
            return null;
        }
        return new f(bitmap, dVar);
    }

    @Override // com.bumptech.glide.load.engine.v
    public void a() {
        this.bitmapPool.c(this.bitmap);
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return com.bumptech.glide.util.k.g(this.bitmap);
    }

    @Override // com.bumptech.glide.load.engine.r
    public void initialize() {
        this.bitmap.prepareToDraw();
    }

    public f(@NonNull Bitmap bitmap, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        this.bitmap = (Bitmap) com.bumptech.glide.util.j.e(bitmap, "Bitmap must not be null");
        this.bitmapPool = (com.bumptech.glide.load.engine.bitmap_recycle.d) com.bumptech.glide.util.j.e(dVar, "BitmapPool must not be null");
    }
}
