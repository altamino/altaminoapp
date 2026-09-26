package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;

/* JADX INFO: loaded from: classes6.dex */
public interface h {

    public interface a {
        void d(@NonNull v<?> vVar);
    }

    void a(int i10);

    void b();

    @Nullable
    v<?> c(@NonNull com.bumptech.glide.load.g gVar, @Nullable v<?> vVar);

    long d();

    @Nullable
    v<?> e(@NonNull com.bumptech.glide.load.g gVar);

    void f(@NonNull a aVar);

    long getCurrentSize();
}
