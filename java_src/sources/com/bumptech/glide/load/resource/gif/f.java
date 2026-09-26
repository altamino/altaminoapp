package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.m;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes7.dex */
public class f implements m<c> {
    private final m<Bitmap> wrapped;

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        this.wrapped.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.wrapped.equals(((f) obj).wrapped);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.wrapped.hashCode();
    }

    public f(m<Bitmap> mVar) {
        this.wrapped = (m) com.bumptech.glide.util.j.d(mVar);
    }

    @Override // com.bumptech.glide.load.m
    @NonNull
    public v<c> a(@NonNull Context context, @NonNull v<c> vVar, int i10, int i11) {
        c cVar = vVar.get();
        v<Bitmap> fVar = new com.bumptech.glide.load.resource.bitmap.f(cVar.e(), com.bumptech.glide.b.c(context).f());
        v<Bitmap> vVarA = this.wrapped.a(context, fVar, i10, i11);
        if (!fVar.equals(vVarA)) {
            fVar.a();
        }
        cVar.m(this.wrapped, vVarA.get());
        return vVar;
    }
}
