package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes11.dex */
public class r implements com.bumptech.glide.load.m<Drawable> {
    private final boolean isRequired;
    private final com.bumptech.glide.load.m<Bitmap> wrapped;

    public com.bumptech.glide.load.m<BitmapDrawable> c() {
        return this;
    }

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        this.wrapped.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof r) {
            return this.wrapped.equals(((r) obj).wrapped);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.wrapped.hashCode();
    }

    public r(com.bumptech.glide.load.m<Bitmap> mVar, boolean z6) {
        this.wrapped = mVar;
        this.isRequired = z6;
    }

    private com.bumptech.glide.load.engine.v<Drawable> d(Context context, com.bumptech.glide.load.engine.v<Bitmap> vVar) {
        return x.d(context.getResources(), vVar);
    }

    @Override // com.bumptech.glide.load.m
    @NonNull
    public com.bumptech.glide.load.engine.v<Drawable> a(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.v<Drawable> vVar, int i10, int i11) {
        com.bumptech.glide.load.engine.bitmap_recycle.d dVarF = com.bumptech.glide.b.c(context).f();
        Drawable drawable = vVar.get();
        com.bumptech.glide.load.engine.v<Bitmap> vVarA = q.a(dVarF, drawable, i10, i11);
        if (vVarA == null) {
            if (!this.isRequired) {
                return vVar;
            }
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
        com.bumptech.glide.load.engine.v<Bitmap> vVarA2 = this.wrapped.a(context, vVarA, i10, i11);
        if (vVarA2.equals(vVarA)) {
            vVarA2.a();
            return vVar;
        }
        return d(context, vVarA2);
    }
}
