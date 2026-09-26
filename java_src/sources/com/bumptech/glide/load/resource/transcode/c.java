package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.i;

/* JADX INFO: loaded from: classes8.dex */
public final class c implements e<Drawable, byte[]> {
    private final e<Bitmap, byte[]> bitmapBytesTranscoder;
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final e<com.bumptech.glide.load.resource.gif.c, byte[]> gifDrawableBytesTranscoder;

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    private static v<com.bumptech.glide.load.resource.gif.c> b(@NonNull v<Drawable> vVar) {
        return vVar;
    }

    public c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.d dVar, @NonNull e<Bitmap, byte[]> eVar, @NonNull e<com.bumptech.glide.load.resource.gif.c, byte[]> eVar2) {
        this.bitmapPool = dVar;
        this.bitmapBytesTranscoder = eVar;
        this.gifDrawableBytesTranscoder = eVar2;
    }

    @Override // com.bumptech.glide.load.resource.transcode.e
    @Nullable
    public v<byte[]> a(@NonNull v<Drawable> vVar, @NonNull i iVar) {
        Drawable drawable = vVar.get();
        if (drawable instanceof BitmapDrawable) {
            return this.bitmapBytesTranscoder.a(com.bumptech.glide.load.resource.bitmap.f.d(((BitmapDrawable) drawable).getBitmap(), this.bitmapPool), iVar);
        }
        if (drawable instanceof com.bumptech.glide.load.resource.gif.c) {
            return this.gifDrawableBytesTranscoder.a(b(vVar), iVar);
        }
        return null;
    }
}
