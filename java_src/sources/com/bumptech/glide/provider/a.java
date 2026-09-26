package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private final List<C0136a<?>> encoders = new ArrayList();

    /* JADX INFO: renamed from: com.bumptech.glide.provider.a$a, reason: collision with other inner class name */
    private static final class C0136a<T> {
        private final Class<T> dataClass;
        final com.bumptech.glide.load.d<T> encoder;

        boolean a(@NonNull Class<?> cls) {
            return this.dataClass.isAssignableFrom(cls);
        }

        C0136a(@NonNull Class<T> cls, @NonNull com.bumptech.glide.load.d<T> dVar) {
            this.dataClass = cls;
            this.encoder = dVar;
        }
    }

    public synchronized <T> void a(@NonNull Class<T> cls, @NonNull com.bumptech.glide.load.d<T> dVar) {
        this.encoders.add(new C0136a<>(cls, dVar));
    }

    @Nullable
    public synchronized <T> com.bumptech.glide.load.d<T> b(@NonNull Class<T> cls) {
        for (C0136a<?> c0136a : this.encoders) {
            if (c0136a.a(cls)) {
                return (com.bumptech.glide.load.d<T>) c0136a.encoder;
            }
        }
        return null;
    }
}
