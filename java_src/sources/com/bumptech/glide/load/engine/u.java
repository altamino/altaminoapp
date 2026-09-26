package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;

/* JADX INFO: loaded from: classes6.dex */
final class u<Z> implements v<Z>, a1.a.f {
    private static final Pools.Pool<u<?>> POOL = a1.a.d(20, new a());
    private boolean isLocked;
    private boolean isRecycled;
    private final a1.c stateVerifier = a1.c.a();
    private v<Z> toWrap;

    class a implements a1.a.d<u<?>> {
        @Override // a1.a.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public u<?> a() {
            return new u<>();
        }

        a() {
        }
    }

    private void c(v<Z> vVar) {
        this.isRecycled = false;
        this.isLocked = true;
        this.toWrap = vVar;
    }

    private void f() {
        this.toWrap = null;
        POOL.b(this);
    }

    @Override // com.bumptech.glide.load.engine.v
    public synchronized void a() {
        this.stateVerifier.c();
        this.isRecycled = true;
        if (!this.isLocked) {
            this.toWrap.a();
            f();
        }
    }

    @Override // a1.a.f
    @NonNull
    public a1.c e() {
        return this.stateVerifier;
    }

    synchronized void g() {
        this.stateVerifier.c();
        if (!this.isLocked) {
            throw new IllegalStateException("Already unlocked");
        }
        this.isLocked = false;
        if (this.isRecycled) {
            a();
        }
    }

    @NonNull
    static <Z> u<Z> d(v<Z> vVar) {
        u<Z> uVar = (u) com.bumptech.glide.util.j.d(POOL.a());
        uVar.c(vVar);
        return uVar;
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<Z> b() {
        return this.toWrap.b();
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Z get() {
        return this.toWrap.get();
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return this.toWrap.getSize();
    }

    u() {
    }
}
