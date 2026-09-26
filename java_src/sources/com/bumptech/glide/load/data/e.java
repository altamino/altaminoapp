package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public interface e<T> {

    public interface a<T> {
        @NonNull
        Class<T> a();

        @NonNull
        e<T> b(@NonNull T t5);
    }

    @NonNull
    T a() throws IOException;

    void b();
}
