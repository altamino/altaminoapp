package com.bumptech.glide.load.resource;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.m;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes3.dex */
public final class l<T> implements m<T> {
    private static final m<?> TRANSFORMATION = new l();

    @Override // com.bumptech.glide.load.m
    @NonNull
    public v<T> a(@NonNull Context context, @NonNull v<T> vVar, int i10, int i11) {
        return vVar;
    }

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
    }

    @NonNull
    public static <T> l<T> c() {
        return (l) TRANSFORMATION;
    }

    private l() {
    }
}
