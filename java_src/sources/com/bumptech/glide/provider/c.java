package com.bumptech.glide.provider;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.transcode.g;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes11.dex */
public class c {
    private static final t<?, ?, ?> NO_PATHS_SIGNAL = new t<>(Object.class, Object.class, Object.class, Collections.singletonList(new i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);
    private final ArrayMap<com.bumptech.glide.util.i, t<?, ?, ?>> cache = new ArrayMap<>();
    private final AtomicReference<com.bumptech.glide.util.i> keyRef = new AtomicReference<>();

    private com.bumptech.glide.util.i b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        com.bumptech.glide.util.i andSet = this.keyRef.getAndSet(null);
        if (andSet == null) {
            andSet = new com.bumptech.glide.util.i();
        }
        andSet.b(cls, cls2, cls3);
        return andSet;
    }

    public boolean c(@Nullable t<?, ?, ?> tVar) {
        return NO_PATHS_SIGNAL.equals(tVar);
    }

    public void d(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable t<?, ?, ?> tVar) {
        synchronized (this.cache) {
            ArrayMap<com.bumptech.glide.util.i, t<?, ?, ?>> arrayMap = this.cache;
            com.bumptech.glide.util.i iVar = new com.bumptech.glide.util.i(cls, cls2, cls3);
            if (tVar == null) {
                tVar = NO_PATHS_SIGNAL;
            }
            arrayMap.put(iVar, tVar);
        }
    }

    @Nullable
    public <Data, TResource, Transcode> t<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        t<Data, TResource, Transcode> tVar;
        com.bumptech.glide.util.i iVarB = b(cls, cls2, cls3);
        synchronized (this.cache) {
            tVar = (t) this.cache.get(iVarB);
        }
        this.keyRef.set(iVarB);
        return tVar;
    }
}
