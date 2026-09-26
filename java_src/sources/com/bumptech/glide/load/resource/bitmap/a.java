package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public class a<DataType> implements com.bumptech.glide.load.k<DataType, BitmapDrawable> {
    private final com.bumptech.glide.load.k<DataType, Bitmap> decoder;
    private final Resources resources;

    public a(Context context, com.bumptech.glide.load.k<DataType, Bitmap> kVar) {
        this(context.getResources(), kVar);
    }

    @Deprecated
    public a(Resources resources, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.load.k<DataType, Bitmap> kVar) {
        this(resources, kVar);
    }

    @Override // com.bumptech.glide.load.k
    public boolean a(@NonNull DataType datatype, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return this.decoder.a(datatype, iVar);
    }

    @Override // com.bumptech.glide.load.k
    public com.bumptech.glide.load.engine.v<BitmapDrawable> b(@NonNull DataType datatype, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return x.d(this.resources, this.decoder.b(datatype, i10, i11, iVar));
    }

    public a(@NonNull Resources resources, @NonNull com.bumptech.glide.load.k<DataType, Bitmap> kVar) {
        this.resources = (Resources) com.bumptech.glide.util.j.d(resources);
        this.decoder = (com.bumptech.glide.load.k) com.bumptech.glide.util.j.d(kVar);
    }
}
