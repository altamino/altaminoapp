package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public abstract class f implements k {

    @Nullable
    private o dataSpec;
    private final boolean isNetwork;
    private int listenerCount;
    private final ArrayList<m0> listeners = new ArrayList<>(1);

    protected final void f(o oVar) {
        for (int i10 = 0; i10 < this.listenerCount; i10++) {
            this.listeners.get(i10).g(this, oVar, this.isNetwork);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public /* synthetic */ Map getResponseHeaders() {
        return j.a(this);
    }

    protected final void d(int i10) {
        o oVar = (o) o0.j(this.dataSpec);
        for (int i11 = 0; i11 < this.listenerCount; i11++) {
            this.listeners.get(i11).b(this, oVar, this.isNetwork, i10);
        }
    }

    protected final void e() {
        o oVar = (o) o0.j(this.dataSpec);
        for (int i10 = 0; i10 < this.listenerCount; i10++) {
            this.listeners.get(i10).a(this, oVar, this.isNetwork);
        }
        this.dataSpec = null;
    }

    protected final void g(o oVar) {
        this.dataSpec = oVar;
        for (int i10 = 0; i10 < this.listenerCount; i10++) {
            this.listeners.get(i10).e(this, oVar, this.isNetwork);
        }
    }

    protected f(boolean z6) {
        this.isNetwork = z6;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public final void b(m0 m0Var) {
        com.google.android.exoplayer2.util.a.e(m0Var);
        if (!this.listeners.contains(m0Var)) {
            this.listeners.add(m0Var);
            this.listenerCount++;
        }
    }
}
