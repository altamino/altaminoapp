package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface d<T> {

    public interface a<T> {
        void e(@Nullable T t5);

        void f(@NonNull Exception exc);
    }

    @NonNull
    Class<T> a();

    void b();

    @NonNull
    com.bumptech.glide.load.a c();

    void cancel();

    void d(@NonNull com.bumptech.glide.f fVar, @NonNull a<? super T> aVar);
}
