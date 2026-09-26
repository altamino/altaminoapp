package com.google.android.exoplayer2.trackselection;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.o3;
import com.google.android.exoplayer2.source.h1;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b0 {

    @Nullable
    private com.google.android.exoplayer2.upstream.e bandwidthMeter;

    @Nullable
    private a listener;

    public interface a {
        void onTrackSelectionsInvalidated();
    }

    @CallSuper
    public void c(a aVar, com.google.android.exoplayer2.upstream.e eVar) {
        this.listener = aVar;
        this.bandwidthMeter = eVar;
    }

    public boolean e() {
        return false;
    }

    public abstract void f(@Nullable Object obj);

    @CallSuper
    public void g() {
        this.listener = null;
        this.bandwidthMeter = null;
    }

    public abstract c0 h(o3[] o3VarArr, h1 h1Var, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var) throws com.google.android.exoplayer2.q;

    public void i(com.google.android.exoplayer2.audio.e eVar) {
    }

    public void j(z zVar) {
    }

    protected final com.google.android.exoplayer2.upstream.e a() {
        return (com.google.android.exoplayer2.upstream.e) com.google.android.exoplayer2.util.a.i(this.bandwidthMeter);
    }

    public z b() {
        return z.DEFAULT_WITHOUT_CONTEXT;
    }

    protected final void d() {
        a aVar = this.listener;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }
}
