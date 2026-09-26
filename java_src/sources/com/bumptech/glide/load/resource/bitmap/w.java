package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class w implements com.bumptech.glide.load.k<InputStream, Bitmap> {
    private final e wrapped = new e();

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return true;
    }

    @Override // com.bumptech.glide.load.k
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull InputStream inputStream, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return this.wrapped.d(ImageDecoder.createSource(com.bumptech.glide.util.a.b(inputStream)), i10, i11, iVar);
    }
}
