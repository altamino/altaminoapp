package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements g {
    private final ArrayMap<h<?>, Object> values = new com.bumptech.glide.util.b();

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        for (int i10 = 0; i10 < this.values.size(); i10++) {
            f(this.values.l(i10), this.values.p(i10), messageDigest);
        }
    }

    @Nullable
    public <T> T c(@NonNull h<T> hVar) {
        return this.values.containsKey(hVar) ? (T) this.values.get(hVar) : hVar.c();
    }

    public void d(@NonNull i iVar) {
        this.values.m(iVar.values);
    }

    @NonNull
    public <T> i e(@NonNull h<T> hVar, @NonNull T t5) {
        this.values.put(hVar, t5);
        return this;
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof i) {
            return this.values.equals(((i) obj).values);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.values.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.values + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void f(@NonNull h<T> hVar, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        hVar.g(obj, messageDigest);
    }
}
