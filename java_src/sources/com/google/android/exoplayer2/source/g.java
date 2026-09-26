package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.z3;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class g<T> extends com.google.android.exoplayer2.source.a {
    private final HashMap<T, b<T>> childSources = new HashMap<>();

    @Nullable
    private Handler eventHandler;

    @Nullable
    private com.google.android.exoplayer2.upstream.m0 mediaTransferListener;

    private final class a implements h0, com.google.android.exoplayer2.drm.v {
        private com.google.android.exoplayer2.drm.v.a drmEventDispatcher;
        private final T id;
        private h0.a mediaSourceEventDispatcher;

        @Override // com.google.android.exoplayer2.drm.v
        public /* synthetic */ void L(int i10, b0.b bVar) {
            com.google.android.exoplayer2.drm.o.a(this, i10, bVar);
        }

        public a(T t5) {
            this.mediaSourceEventDispatcher = g.this.p(null);
            this.drmEventDispatcher = g.this.m(null);
            this.id = t5;
        }

        private boolean k(int i10, @Nullable b0.b bVar) {
            b0.b bVarA;
            if (bVar != null) {
                bVarA = g.this.A(this.id, bVar);
                if (bVarA == null) {
                    return false;
                }
            } else {
                bVarA = null;
            }
            int iC = g.this.C(this.id, i10);
            h0.a aVar = this.mediaSourceEventDispatcher;
            if (aVar.windowIndex != iC || !com.google.android.exoplayer2.util.o0.c(aVar.mediaPeriodId, bVarA)) {
                this.mediaSourceEventDispatcher = g.this.n(iC, bVarA, 0L);
            }
            com.google.android.exoplayer2.drm.v.a aVar2 = this.drmEventDispatcher;
            if (aVar2.windowIndex == iC && com.google.android.exoplayer2.util.o0.c(aVar2.mediaPeriodId, bVarA)) {
                return true;
            }
            this.drmEventDispatcher = g.this.l(iC, bVarA);
            return true;
        }

        private x n(x xVar) {
            long jB = g.this.B(this.id, xVar.mediaStartTimeMs);
            long jB2 = g.this.B(this.id, xVar.mediaEndTimeMs);
            return (jB == xVar.mediaStartTimeMs && jB2 == xVar.mediaEndTimeMs) ? xVar : new x(xVar.dataType, xVar.trackType, xVar.trackFormat, xVar.trackSelectionReason, xVar.trackSelectionData, jB, jB2);
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void G(int i10, @Nullable b0.b bVar, x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.i(n(xVar));
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void I(int i10, @Nullable b0.b bVar, u uVar, x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.v(uVar, n(xVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void K(int i10, @Nullable b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.i();
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void O(int i10, @Nullable b0.b bVar, Exception exc) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void S(int i10, @Nullable b0.b bVar, u uVar, x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.r(uVar, n(xVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void T(int i10, @Nullable b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.m();
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void j(int i10, @Nullable b0.b bVar, u uVar, x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.p(uVar, n(xVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void q(int i10, @Nullable b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.h();
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void r(int i10, @Nullable b0.b bVar, int i11) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.k(i11);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void s(int i10, @Nullable b0.b bVar, u uVar, x xVar, IOException iOException, boolean z6) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.t(uVar, n(xVar), iOException, z6);
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void v(int i10, @Nullable b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.j();
            }
        }
    }

    @Nullable
    protected b0.b A(T t5, b0.b bVar) {
        return bVar;
    }

    protected long B(T t5, long j6) {
        return j6;
    }

    protected int C(T t5, int i10) {
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public abstract void D(T t5, b0 b0Var, z3 z3Var);

    private static final class b<T> {
        public final b0.c caller;
        public final g<T>.a eventListener;
        public final b0 mediaSource;

        public b(b0 b0Var, b0.c cVar, g<T>.a aVar) {
            this.mediaSource = b0Var;
            this.caller = cVar;
            this.eventListener = aVar;
        }
    }

    protected final void F(final T t5, b0 b0Var) {
        com.google.android.exoplayer2.util.a.a(!this.childSources.containsKey(t5));
        b0.c cVar = new b0.c() { // from class: com.google.android.exoplayer2.source.f
            @Override // com.google.android.exoplayer2.source.b0.c
            public final void a(b0 b0Var2, z3 z3Var) {
                this.f1271a.D(t5, b0Var2, z3Var);
            }
        };
        a aVar = new a(t5);
        this.childSources.put(t5, new b<>(b0Var, cVar, aVar));
        b0Var.d((Handler) com.google.android.exoplayer2.util.a.e(this.eventHandler), aVar);
        b0Var.i((Handler) com.google.android.exoplayer2.util.a.e(this.eventHandler), aVar);
        b0Var.e(cVar, this.mediaTransferListener, u());
        if (v()) {
            return;
        }
        b0Var.h(cVar);
    }

    @Override // com.google.android.exoplayer2.source.b0
    @CallSuper
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        Iterator<b<T>> it = this.childSources.values().iterator();
        while (it.hasNext()) {
            it.next().mediaSource.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void s() {
        for (b<T> bVar : this.childSources.values()) {
            bVar.mediaSource.h(bVar.caller);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void t() {
        for (b<T> bVar : this.childSources.values()) {
            bVar.mediaSource.g(bVar.caller);
        }
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var) {
        this.mediaTransferListener = m0Var;
        this.eventHandler = com.google.android.exoplayer2.util.o0.u();
    }

    @Override // com.google.android.exoplayer2.source.a
    @CallSuper
    protected void y() {
        for (b<T> bVar : this.childSources.values()) {
            bVar.mediaSource.a(bVar.caller);
            bVar.mediaSource.b(bVar.eventListener);
            bVar.mediaSource.k(bVar.eventListener);
        }
        this.childSources.clear();
    }

    protected g() {
    }
}
