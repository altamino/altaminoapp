package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.analytics.t1;
import com.google.android.exoplayer2.z3;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a implements b0 {

    @Nullable
    private Looper looper;

    @Nullable
    private t1 playerId;

    @Nullable
    private z3 timeline;
    private final ArrayList<b0.c> mediaSourceCallers = new ArrayList<>(1);
    private final HashSet<b0.c> enabledMediaSourceCallers = new HashSet<>(1);
    private final h0.a eventDispatcher = new h0.a();
    private final com.google.android.exoplayer2.drm.v.a drmEventDispatcher = new com.google.android.exoplayer2.drm.v.a();

    @Override // com.google.android.exoplayer2.source.b0
    public /* synthetic */ z3 o() {
        return a0.a(this);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public /* synthetic */ boolean r() {
        return a0.b(this);
    }

    protected void s() {
    }

    protected void t() {
    }

    protected abstract void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var);

    protected abstract void y();

    @Override // com.google.android.exoplayer2.source.b0
    public final void a(b0.c cVar) {
        this.mediaSourceCallers.remove(cVar);
        if (!this.mediaSourceCallers.isEmpty()) {
            h(cVar);
            return;
        }
        this.looper = null;
        this.timeline = null;
        this.playerId = null;
        this.enabledMediaSourceCallers.clear();
        y();
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void b(h0 h0Var) {
        this.eventDispatcher.w(h0Var);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void g(b0.c cVar) {
        com.google.android.exoplayer2.util.a.e(this.looper);
        boolean zIsEmpty = this.enabledMediaSourceCallers.isEmpty();
        this.enabledMediaSourceCallers.add(cVar);
        if (zIsEmpty) {
            t();
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void h(b0.c cVar) {
        boolean z6 = !this.enabledMediaSourceCallers.isEmpty();
        this.enabledMediaSourceCallers.remove(cVar);
        if (z6 && this.enabledMediaSourceCallers.isEmpty()) {
            s();
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void k(com.google.android.exoplayer2.drm.v vVar) {
        this.drmEventDispatcher.t(vVar);
    }

    protected final com.google.android.exoplayer2.drm.v.a l(int i10, @Nullable b0.b bVar) {
        return this.drmEventDispatcher.u(i10, bVar);
    }

    protected final com.google.android.exoplayer2.drm.v.a m(@Nullable b0.b bVar) {
        return this.drmEventDispatcher.u(0, bVar);
    }

    protected final h0.a n(int i10, @Nullable b0.b bVar, long j6) {
        return this.eventDispatcher.x(i10, bVar, j6);
    }

    protected final h0.a p(@Nullable b0.b bVar) {
        return this.eventDispatcher.x(0, bVar, 0L);
    }

    protected final t1 u() {
        return (t1) com.google.android.exoplayer2.util.a.i(this.playerId);
    }

    protected final boolean v() {
        return !this.enabledMediaSourceCallers.isEmpty();
    }

    protected final void x(z3 z3Var) {
        this.timeline = z3Var;
        Iterator<b0.c> it = this.mediaSourceCallers.iterator();
        while (it.hasNext()) {
            it.next().a(this, z3Var);
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void d(Handler handler, h0 h0Var) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(h0Var);
        this.eventDispatcher.f(handler, h0Var);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void e(b0.c cVar, @Nullable com.google.android.exoplayer2.upstream.m0 m0Var, t1 t1Var) {
        boolean z6;
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.looper;
        if (looper != null && looper != looperMyLooper) {
            z6 = false;
        } else {
            z6 = true;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.playerId = t1Var;
        z3 z3Var = this.timeline;
        this.mediaSourceCallers.add(cVar);
        if (this.looper == null) {
            this.looper = looperMyLooper;
            this.enabledMediaSourceCallers.add(cVar);
            w(m0Var);
        } else if (z3Var != null) {
            g(cVar);
            cVar.a(this, z3Var);
        }
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void i(Handler handler, com.google.android.exoplayer2.drm.v vVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(vVar);
        this.drmEventDispatcher.g(handler, vVar);
    }
}
