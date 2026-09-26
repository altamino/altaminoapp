package com.bumptech.glide.load.resource;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.v;

/* JADX INFO: loaded from: classes3.dex */
public class k<T> implements v<T> {
    protected final T data;

    @Override // com.bumptech.glide.load.engine.v
    public void a() {
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public final T get() {
        return this.data;
    }

    @Override // com.bumptech.glide.load.engine.v
    public final int getSize() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<T> b() {
        return (Class<T>) this.data.getClass();
    }

    public k(@NonNull T t5) {
        this.data = (T) com.bumptech.glide.util.j.d(t5);
    }
}
