package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class q<Model, Data> implements n<Model, Data> {
    private final Pools.Pool<List<Throwable>> exceptionListPool;
    private final List<n<Model, Data>> modelLoaders;

    static class a<Data> implements com.bumptech.glide.load.data.d<Data>, com.bumptech.glide.load.data.d.a<Data> {
        private com.bumptech.glide.load.data.d.a<? super Data> callback;
        private int currentIndex;

        @Nullable
        private List<Throwable> exceptions;
        private final List<com.bumptech.glide.load.data.d<Data>> fetchers;
        private boolean isCancelled;
        private com.bumptech.glide.f priority;
        private final Pools.Pool<List<Throwable>> throwableListPool;

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.isCancelled = true;
            Iterator<com.bumptech.glide.load.data.d<Data>> it = this.fetchers.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }

        private void g() {
            if (this.isCancelled) {
                return;
            }
            if (this.currentIndex < this.fetchers.size() - 1) {
                this.currentIndex++;
                d(this.priority, this.callback);
            } else {
                com.bumptech.glide.util.j.d(this.exceptions);
                this.callback.f(new com.bumptech.glide.load.engine.q("Fetch failed", new ArrayList(this.exceptions)));
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.fetchers.get(0).a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            List<Throwable> list = this.exceptions;
            if (list != null) {
                this.throwableListPool.b(list);
            }
            this.exceptions = null;
            Iterator<com.bumptech.glide.load.data.d<Data>> it = this.fetchers.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return this.fetchers.get(0).c();
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            this.priority = fVar;
            this.callback = aVar;
            this.exceptions = this.throwableListPool.a();
            this.fetchers.get(this.currentIndex).d(fVar, this);
            if (this.isCancelled) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void e(@Nullable Data data) {
            if (data != null) {
                this.callback.e(data);
            } else {
                g();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void f(@NonNull Exception exc) {
            ((List) com.bumptech.glide.util.j.d(this.exceptions)).add(exc);
            g();
        }

        a(@NonNull List<com.bumptech.glide.load.data.d<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.throwableListPool = pool;
            com.bumptech.glide.util.j.c(list);
            this.fetchers = list;
            this.currentIndex = 0;
        }
    }

    @Override // com.bumptech.glide.load.model.n
    public n.a<Data> a(@NonNull Model model, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        n.a<Data> aVarA;
        int size = this.modelLoaders.size();
        ArrayList arrayList = new ArrayList(size);
        com.bumptech.glide.load.g gVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            n<Model, Data> nVar = this.modelLoaders.get(i12);
            if (nVar.b(model) && (aVarA = nVar.a(model, i10, i11, iVar)) != null) {
                gVar = aVarA.sourceKey;
                arrayList.add(aVarA.fetcher);
            }
        }
        if (arrayList.isEmpty() || gVar == null) {
            return null;
        }
        return new n.a<>(gVar, new a(arrayList, this.exceptionListPool));
    }

    @Override // com.bumptech.glide.load.model.n
    public boolean b(@NonNull Model model) {
        Iterator<n<Model, Data>> it = this.modelLoaders.iterator();
        while (it.hasNext()) {
            if (it.next().b(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.modelLoaders.toArray()) + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    q(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.modelLoaders = list;
        this.exceptionListPool = pool;
    }
}
