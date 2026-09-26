package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
public class h implements com.bumptech.glide.load.k<ByteBuffer, Bitmap> {
    private final p downsampler;

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.i iVar) {
        return this.downsampler.q(byteBuffer);
    }

    public h(p pVar) {
        this.downsampler = pVar;
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull ByteBuffer byteBuffer, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return this.downsampler.f(com.bumptech.glide.util.a.f(byteBuffer), i10, i11, iVar);
    }
}
