package com.bumptech.glide.load.resource.transcode;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.resource.bitmap.x;
import com.bumptech.glide.util.j;

/* JADX INFO: loaded from: classes8.dex */
public class b implements e<Bitmap, BitmapDrawable> {
    private final Resources resources;

    public b(@NonNull Context context) {
        this(context.getResources());
    }

    @Deprecated
    public b(@NonNull Resources resources, com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        this(resources);
    }

    @Override // com.bumptech.glide.load.resource.transcode.e
    @Nullable
    public v<BitmapDrawable> a(@NonNull v<Bitmap> vVar, @NonNull i iVar) {
        return x.d(this.resources, vVar);
    }

    public b(@NonNull Resources resources) {
        this.resources = (Resources) j.d(resources);
    }
}
