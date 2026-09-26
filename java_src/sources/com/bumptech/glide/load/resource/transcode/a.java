package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.i;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes8.dex */
public class a implements e<Bitmap, byte[]> {
    private final Bitmap.CompressFormat compressFormat;
    private final int quality;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    public a(@NonNull Bitmap.CompressFormat compressFormat, int i10) {
        this.compressFormat = compressFormat;
        this.quality = i10;
    }

    @Override // com.bumptech.glide.load.resource.transcode.e
    @Nullable
    public v<byte[]> a(@NonNull v<Bitmap> vVar, @NonNull i iVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        vVar.get().compress(this.compressFormat, this.quality, byteArrayOutputStream);
        vVar.a();
        return new v0.b(byteArrayOutputStream.toByteArray());
    }
}
