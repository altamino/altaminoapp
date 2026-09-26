package com.bumptech.glide.load.engine;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
interface f {

    public interface a {
        void b(com.bumptech.glide.load.g gVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar);

        void c();

        void d(com.bumptech.glide.load.g gVar, @Nullable Object obj, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.g gVar2);
    }

    boolean a();

    void cancel();
}
