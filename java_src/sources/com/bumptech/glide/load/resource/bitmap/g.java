package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class g implements com.bumptech.glide.load.m<Bitmap> {
    protected abstract Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.d dVar, @NonNull Bitmap bitmap, int i10, int i11);

    @Override // com.bumptech.glide.load.m
    @NonNull
    public final com.bumptech.glide.load.engine.v<Bitmap> a(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.v<Bitmap> vVar, int i10, int i11) {
        if (com.bumptech.glide.util.k.r(i10, i11)) {
            com.bumptech.glide.load.engine.bitmap_recycle.d dVarF = com.bumptech.glide.b.c(context).f();
            Bitmap bitmap = vVar.get();
            if (i10 == Integer.MIN_VALUE) {
                i10 = bitmap.getWidth();
            }
            if (i11 == Integer.MIN_VALUE) {
                i11 = bitmap.getHeight();
            }
            Bitmap bitmapC = c(dVarF, bitmap, i10, i11);
            if (!bitmap.equals(bitmapC)) {
                return f.d(bitmapC, dVarF);
            }
            return vVar;
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i10 + " or height: " + i11 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
