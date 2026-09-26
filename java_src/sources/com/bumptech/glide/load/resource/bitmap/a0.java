package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class a0 implements com.bumptech.glide.load.k<Uri, Bitmap> {
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final com.bumptech.glide.load.resource.drawable.d drawableDecoder;

    @Override // com.bumptech.glide.load.k
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull Uri uri, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        com.bumptech.glide.load.engine.v<Drawable> vVarB = this.drawableDecoder.b(uri, i10, i11, iVar);
        if (vVarB == null) {
            return null;
        }
        return q.a(this.bitmapPool, vVarB.get(), i10, i11);
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull Uri uri, @NonNull com.bumptech.glide.load.i iVar) {
        return "android.resource".equals(uri.getScheme());
    }

    public a0(com.bumptech.glide.load.resource.drawable.d dVar, com.bumptech.glide.load.engine.bitmap_recycle.d dVar2) {
        this.drawableDecoder = dVar;
        this.bitmapPool = dVar2;
    }
}
