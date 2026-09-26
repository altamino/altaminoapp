package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class x implements com.bumptech.glide.load.engine.v<BitmapDrawable>, com.bumptech.glide.load.engine.r {
    private final com.bumptech.glide.load.engine.v<Bitmap> bitmapResource;
    private final Resources resources;

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<BitmapDrawable> b() {
        return BitmapDrawable.class;
    }

    @Nullable
    public static com.bumptech.glide.load.engine.v<BitmapDrawable> d(@NonNull Resources resources, @Nullable com.bumptech.glide.load.engine.v<Bitmap> vVar) {
        if (vVar == null) {
            return null;
        }
        return new x(resources, vVar);
    }

    @Override // com.bumptech.glide.load.engine.v
    public void a() {
        this.bitmapResource.a();
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.resources, this.bitmapResource.get());
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return this.bitmapResource.getSize();
    }

    @Override // com.bumptech.glide.load.engine.r
    public void initialize() {
        com.bumptech.glide.load.engine.v<Bitmap> vVar = this.bitmapResource;
        if (vVar instanceof com.bumptech.glide.load.engine.r) {
            ((com.bumptech.glide.load.engine.r) vVar).initialize();
        }
    }

    private x(@NonNull Resources resources, @NonNull com.bumptech.glide.load.engine.v<Bitmap> vVar) {
        this.resources = (Resources) com.bumptech.glide.util.j.d(resources);
        this.bitmapResource = (com.bumptech.glide.load.engine.v) com.bumptech.glide.util.j.d(vVar);
    }
}
