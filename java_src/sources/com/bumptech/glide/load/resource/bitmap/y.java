package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class y implements com.bumptech.glide.load.k<ParcelFileDescriptor, Bitmap> {
    private final p downsampler;

    @Override // com.bumptech.glide.load.k
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return this.downsampler.d(parcelFileDescriptor, i10, i11, iVar);
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull com.bumptech.glide.load.i iVar) {
        return this.downsampler.o(parcelFileDescriptor);
    }

    public y(p pVar) {
        this.downsampler = pVar;
    }
}
