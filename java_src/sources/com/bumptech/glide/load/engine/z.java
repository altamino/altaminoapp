package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class z implements f, f.a {
    private static final String TAG = "SourceGenerator";
    private final f.a cb;
    private Object dataToCache;
    private final g<?> helper;
    private volatile com.bumptech.glide.load.model.n.a<?> loadData;
    private int loadDataListIndex;
    private d originalKey;
    private c sourceCacheGenerator;

    class a implements com.bumptech.glide.load.data.d.a<Object> {
        final /* synthetic */ com.bumptech.glide.load.model.n.a val$toStart;

        a(com.bumptech.glide.load.model.n.a aVar) {
            this.val$toStart = aVar;
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void e(@Nullable Object obj) {
            if (z.this.g(this.val$toStart)) {
                z.this.h(this.val$toStart, obj);
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void f(@NonNull Exception exc) {
            if (z.this.g(this.val$toStart)) {
                z.this.i(this.val$toStart, exc);
            }
        }
    }

    boolean g(com.bumptech.glide.load.model.n.a<?> aVar) {
        com.bumptech.glide.load.model.n.a<?> aVar2 = this.loadData;
        return aVar2 != null && aVar2 == aVar;
    }

    private void e(Object obj) {
        long jB = com.bumptech.glide.util.f.b();
        try {
            com.bumptech.glide.load.d<X> dVarP = this.helper.p(obj);
            e eVar = new e(dVarP, obj, this.helper.k());
            this.originalKey = new d(this.loadData.sourceKey, this.helper.o());
            this.helper.d().a(this.originalKey, eVar);
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Finished encoding source to cache, key: " + this.originalKey + ", data: " + obj + ", encoder: " + dVarP + ", duration: " + com.bumptech.glide.util.f.a(jB));
            }
            this.loadData.fetcher.b();
            this.sourceCacheGenerator = new c(Collections.singletonList(this.loadData.sourceKey), this.helper, this);
        } catch (Throwable th) {
            this.loadData.fetcher.b();
            throw th;
        }
    }

    private boolean f() {
        return this.loadDataListIndex < this.helper.g().size();
    }

    private void j(com.bumptech.glide.load.model.n.a<?> aVar) {
        this.loadData.fetcher.d(this.helper.l(), new a(aVar));
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean a() {
        Object obj = this.dataToCache;
        if (obj != null) {
            this.dataToCache = null;
            e(obj);
        }
        c cVar = this.sourceCacheGenerator;
        if (cVar != null && cVar.a()) {
            return true;
        }
        this.sourceCacheGenerator = null;
        this.loadData = null;
        boolean z6 = false;
        while (!z6 && f()) {
            List<com.bumptech.glide.load.model.n.a<?>> listG = this.helper.g();
            int i10 = this.loadDataListIndex;
            this.loadDataListIndex = i10 + 1;
            this.loadData = listG.get(i10);
            if (this.loadData != null && (this.helper.e().c(this.loadData.fetcher.c()) || this.helper.t(this.loadData.fetcher.a()))) {
                j(this.loadData);
                z6 = true;
            }
        }
        return z6;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void b(com.bumptech.glide.load.g gVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar) {
        this.cb.b(gVar, exc, dVar, this.loadData.fetcher.c());
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void c() {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        com.bumptech.glide.load.model.n.a<?> aVar = this.loadData;
        if (aVar != null) {
            aVar.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void d(com.bumptech.glide.load.g gVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.g gVar2) {
        this.cb.d(gVar, obj, dVar, this.loadData.fetcher.c(), gVar);
    }

    void h(com.bumptech.glide.load.model.n.a<?> aVar, Object obj) {
        j jVarE = this.helper.e();
        if (obj != null && jVarE.c(aVar.fetcher.c())) {
            this.dataToCache = obj;
            this.cb.c();
        } else {
            f.a aVar2 = this.cb;
            com.bumptech.glide.load.g gVar = aVar.sourceKey;
            com.bumptech.glide.load.data.d<?> dVar = aVar.fetcher;
            aVar2.d(gVar, obj, dVar, dVar.c(), this.originalKey);
        }
    }

    void i(com.bumptech.glide.load.model.n.a<?> aVar, @NonNull Exception exc) {
        f.a aVar2 = this.cb;
        d dVar = this.originalKey;
        com.bumptech.glide.load.data.d<?> dVar2 = aVar.fetcher;
        aVar2.b(dVar, exc, dVar2, dVar2.c());
    }

    z(g<?> gVar, f.a aVar) {
        this.helper = gVar;
        this.cb = aVar;
    }
}
