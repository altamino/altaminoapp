package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class r {
    private static final c DEFAULT_FACTORY = new c();
    private static final n<Object, Object> EMPTY_MODEL_LOADER = new a();
    private final Set<b<?, ?>> alreadyUsedEntries;
    private final List<b<?, ?>> entries;
    private final c factory;
    private final Pools.Pool<List<Throwable>> throwableListPool;

    private static class b<Model, Data> {
        final Class<Data> dataClass;
        final o<? extends Model, ? extends Data> factory;
        private final Class<Model> modelClass;

        public boolean a(@NonNull Class<?> cls) {
            return this.modelClass.isAssignableFrom(cls);
        }

        public b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
            this.modelClass = cls;
            this.dataClass = cls2;
            this.factory = oVar;
        }

        public boolean b(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            if (a(cls) && this.dataClass.isAssignableFrom(cls2)) {
                return true;
            }
            return false;
        }
    }

    static class c {
        @NonNull
        public <Model, Data> q<Model, Data> a(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new q<>(list, pool);
        }

        c() {
        }
    }

    public r(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, DEFAULT_FACTORY);
    }

    @NonNull
    private static <Model, Data> n<Model, Data> f() {
        return (n<Model, Data>) EMPTY_MODEL_LOADER;
    }

    synchronized <Model, Data> void b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    @NonNull
    public synchronized <Model, Data> n<Model, Data> d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z6 = false;
            for (b<?, ?> bVar : this.entries) {
                if (this.alreadyUsedEntries.contains(bVar)) {
                    z6 = true;
                } else if (bVar.b(cls, cls2)) {
                    this.alreadyUsedEntries.add(bVar);
                    arrayList.add(c(bVar));
                    this.alreadyUsedEntries.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                return this.factory.a(arrayList, this.throwableListPool);
            }
            if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            }
            if (!z6) {
                throw new com.bumptech.glide.h.c((Class<?>) cls, (Class<?>) cls2);
            }
            return f();
        } catch (Throwable th) {
            this.alreadyUsedEntries.clear();
            throw th;
        }
    }

    @NonNull
    synchronized <Model> List<n<Model, ?>> e(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.entries) {
                if (!this.alreadyUsedEntries.contains(bVar) && bVar.a(cls)) {
                    this.alreadyUsedEntries.add(bVar);
                    arrayList.add(c(bVar));
                    this.alreadyUsedEntries.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.alreadyUsedEntries.clear();
            throw th;
        }
        return arrayList;
    }

    @NonNull
    synchronized List<Class<?>> g(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.entries) {
            if (!arrayList.contains(bVar.dataClass) && bVar.a(cls)) {
                arrayList.add(bVar.dataClass);
            }
        }
        return arrayList;
    }

    private static class a implements n<Object, Object> {
        @Override // com.bumptech.glide.load.model.n
        @Nullable
        public n.a<Object> a(@NonNull Object obj, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
            return null;
        }

        @Override // com.bumptech.glide.load.model.n
        public boolean b(@NonNull Object obj) {
            return false;
        }

        a() {
        }
    }

    @VisibleForTesting
    r(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull c cVar) {
        this.entries = new ArrayList();
        this.alreadyUsedEntries = new HashSet();
        this.throwableListPool = pool;
        this.factory = cVar;
    }

    private <Model, Data> void a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar, boolean z6) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.entries;
        list.add(z6 ? list.size() : 0, bVar);
    }

    @NonNull
    private <Model, Data> n<Model, Data> c(@NonNull b<?, ?> bVar) {
        return (n) com.bumptech.glide.util.j.d(bVar.factory.b(this));
    }
}
