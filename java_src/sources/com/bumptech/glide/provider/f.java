package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.l;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class f {
    private final List<a<?>> encoders = new ArrayList();

    private static final class a<T> {
        final l<T> encoder;
        private final Class<T> resourceClass;

        boolean a(@NonNull Class<?> cls) {
            return this.resourceClass.isAssignableFrom(cls);
        }

        a(@NonNull Class<T> cls, @NonNull l<T> lVar) {
            this.resourceClass = cls;
            this.encoder = lVar;
        }
    }

    public synchronized <Z> void a(@NonNull Class<Z> cls, @NonNull l<Z> lVar) {
        this.encoders.add(new a<>(cls, lVar));
    }

    @Nullable
    public synchronized <Z> l<Z> b(@NonNull Class<Z> cls) {
        int size = this.encoders.size();
        for (int i10 = 0; i10 < size; i10++) {
            a<?> aVar = this.encoders.get(i10);
            if (aVar.a(cls)) {
                return (l<Z>) aVar.encoder;
            }
        }
        return null;
    }
}
