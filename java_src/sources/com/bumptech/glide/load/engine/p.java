package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
class p<Z> implements v<Z> {
    private int acquired;
    private final boolean isMemoryCacheable;
    private final boolean isRecyclable;
    private boolean isRecycled;
    private final com.bumptech.glide.load.g key;
    private final a listener;
    private final v<Z> resource;

    interface a {
        void c(com.bumptech.glide.load.g gVar, p<?> pVar);
    }

    @Override // com.bumptech.glide.load.engine.v
    public synchronized void a() {
        if (this.acquired > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.isRecycled) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.isRecycled = true;
        if (this.isRecyclable) {
            this.resource.a();
        }
    }

    synchronized void c() {
        if (this.isRecycled) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.acquired++;
    }

    v<Z> d() {
        return this.resource;
    }

    boolean e() {
        return this.isMemoryCacheable;
    }

    void f() {
        boolean z6;
        synchronized (this) {
            int i10 = this.acquired;
            if (i10 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z6 = true;
            int i11 = i10 - 1;
            this.acquired = i11;
            if (i11 != 0) {
                z6 = false;
            }
        }
        if (z6) {
            this.listener.c(this.key, this);
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.isMemoryCacheable + ", listener=" + this.listener + ", key=" + this.key + ", acquired=" + this.acquired + ", isRecycled=" + this.isRecycled + ", resource=" + this.resource + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<Z> b() {
        return this.resource.b();
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Z get() {
        return this.resource.get();
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return this.resource.getSize();
    }

    p(v<Z> vVar, boolean z6, boolean z10, com.bumptech.glide.load.g gVar, a aVar) {
        this.resource = (v) com.bumptech.glide.util.j.d(vVar);
        this.isMemoryCacheable = z6;
        this.isRecyclable = z10;
        this.key = gVar;
        this.listener = (a) com.bumptech.glide.util.j.d(aVar);
    }
}
