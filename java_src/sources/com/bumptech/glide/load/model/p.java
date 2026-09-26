package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class p {
    private final a cache;
    private final r multiModelLoaderFactory;

    private static class a {
        private final Map<Class<?>, C0133a<?>> cachedModelLoaders = new HashMap();

        /* JADX INFO: renamed from: com.bumptech.glide.load.model.p$a$a, reason: collision with other inner class name */
        private static class C0133a<Model> {
            final List<n<Model, ?>> loaders;

            public C0133a(List<n<Model, ?>> list) {
                this.loaders = list;
            }
        }

        public void a() {
            this.cachedModelLoaders.clear();
        }

        @Nullable
        public <Model> List<n<Model, ?>> b(Class<Model> cls) {
            C0133a<?> c0133a = this.cachedModelLoaders.get(cls);
            if (c0133a == null) {
                return null;
            }
            return (List<n<Model, ?>>) c0133a.loaders;
        }

        public <Model> void c(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.cachedModelLoaders.put(cls, new C0133a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }

        a() {
        }
    }

    public p(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new r(pool));
    }

    @NonNull
    private synchronized <A> List<n<A, ?>> e(@NonNull Class<A> cls) {
        List<n<A, ?>> listB;
        listB = this.cache.b(cls);
        if (listB == null) {
            listB = Collections.unmodifiableList(this.multiModelLoaderFactory.e(cls));
            this.cache.c(cls, listB);
        }
        return listB;
    }

    public synchronized <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.multiModelLoaderFactory.b(cls, cls2, oVar);
        this.cache.a();
    }

    @NonNull
    public synchronized List<Class<?>> c(@NonNull Class<?> cls) {
        return this.multiModelLoaderFactory.g(cls);
    }

    private p(@NonNull r rVar) {
        this.cache = new a();
        this.multiModelLoaderFactory = rVar;
    }

    @NonNull
    private static <A> Class<A> b(@NonNull A a7) {
        return (Class<A>) a7.getClass();
    }

    @NonNull
    public <A> List<n<A, ?>> d(@NonNull A a7) {
        List<n<A, ?>> listE = e(b(a7));
        if (!listE.isEmpty()) {
            int size = listE.size();
            List<n<A, ?>> listEmptyList = Collections.emptyList();
            boolean z6 = true;
            for (int i10 = 0; i10 < size; i10++) {
                n<A, ?> nVar = listE.get(i10);
                if (nVar.b(a7)) {
                    if (z6) {
                        listEmptyList = new ArrayList<>(size - i10);
                        z6 = false;
                    }
                    listEmptyList.add(nVar);
                }
            }
            if (!listEmptyList.isEmpty()) {
                return listEmptyList;
            }
            throw new com.bumptech.glide.h.c(a7, listE);
        }
        throw new com.bumptech.glide.h.c(a7);
    }
}
