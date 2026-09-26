package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.util.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
public class d {
    private final AtomicReference<i> resourceClassKeyRef = new AtomicReference<>();
    private final ArrayMap<i, List<Class<?>>> registeredResourceClassCache = new ArrayMap<>();

    @Nullable
    public List<Class<?>> a(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        i andSet = this.resourceClassKeyRef.getAndSet(null);
        if (andSet == null) {
            andSet = new i(cls, cls2, cls3);
        } else {
            andSet.b(cls, cls2, cls3);
        }
        synchronized (this.registeredResourceClassCache) {
            list = this.registeredResourceClassCache.get(andSet);
        }
        this.resourceClassKeyRef.set(andSet);
        return list;
    }

    public void b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.registeredResourceClassCache) {
            this.registeredResourceClassCache.put(new i(cls, cls2, cls3), list);
        }
    }
}
