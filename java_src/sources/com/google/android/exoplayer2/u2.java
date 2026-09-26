package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class u2 {
    private static final String TAG = "MediaSourceList";
    private final HashMap<c, b> childSources;
    private final com.google.android.exoplayer2.drm.v.a drmEventDispatcher;
    private final Set<c> enabledMediaSourceHolders;
    private boolean isPrepared;
    private final com.google.android.exoplayer2.source.h0.a mediaSourceEventDispatcher;
    private final d mediaSourceListInfoListener;

    @Nullable
    private com.google.android.exoplayer2.upstream.m0 mediaTransferListener;
    private final com.google.android.exoplayer2.analytics.t1 playerId;
    private com.google.android.exoplayer2.source.y0 shuffleOrder = new com.google.android.exoplayer2.source.y0.a(0);
    private final IdentityHashMap<com.google.android.exoplayer2.source.y, c> mediaSourceByMediaPeriod = new IdentityHashMap<>();
    private final Map<Object, c> mediaSourceByUid = new HashMap();
    private final List<c> mediaSourceHolders = new ArrayList();

    private final class a implements com.google.android.exoplayer2.source.h0, com.google.android.exoplayer2.drm.v {
        private com.google.android.exoplayer2.drm.v.a drmEventDispatcher;
        private final c id;
        private com.google.android.exoplayer2.source.h0.a mediaSourceEventDispatcher;

        @Override // com.google.android.exoplayer2.drm.v
        public /* synthetic */ void L(int i10, com.google.android.exoplayer2.source.b0.b bVar) {
            com.google.android.exoplayer2.drm.o.a(this, i10, bVar);
        }

        public a(c cVar) {
            this.mediaSourceEventDispatcher = u2.this.mediaSourceEventDispatcher;
            this.drmEventDispatcher = u2.this.drmEventDispatcher;
            this.id = cVar;
        }

        private boolean k(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            com.google.android.exoplayer2.source.b0.b bVarN;
            if (bVar != null) {
                bVarN = u2.n(this.id, bVar);
                if (bVarN == null) {
                    return false;
                }
            } else {
                bVarN = null;
            }
            int iR = u2.r(this.id, i10);
            com.google.android.exoplayer2.source.h0.a aVar = this.mediaSourceEventDispatcher;
            if (aVar.windowIndex != iR || !com.google.android.exoplayer2.util.o0.c(aVar.mediaPeriodId, bVarN)) {
                this.mediaSourceEventDispatcher = u2.this.mediaSourceEventDispatcher.x(iR, bVarN, 0L);
            }
            com.google.android.exoplayer2.drm.v.a aVar2 = this.drmEventDispatcher;
            if (aVar2.windowIndex == iR && com.google.android.exoplayer2.util.o0.c(aVar2.mediaPeriodId, bVarN)) {
                return true;
            }
            this.drmEventDispatcher = u2.this.drmEventDispatcher.u(iR, bVarN);
            return true;
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void G(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, com.google.android.exoplayer2.source.x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.i(xVar);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void I(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.v(uVar, xVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void K(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.i();
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void O(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, Exception exc) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void S(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.r(uVar, xVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void T(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.m();
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void j(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.p(uVar, xVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void q(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.h();
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void r(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, int i11) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.k(i11);
            }
        }

        @Override // com.google.android.exoplayer2.source.h0
        public void s(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar, IOException iOException, boolean z6) {
            if (k(i10, bVar)) {
                this.mediaSourceEventDispatcher.t(uVar, xVar, iOException, z6);
            }
        }

        @Override // com.google.android.exoplayer2.drm.v
        public void v(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            if (k(i10, bVar)) {
                this.drmEventDispatcher.j();
            }
        }
    }

    static final class c implements s2 {
        public int firstWindowIndexInChild;
        public boolean isRemoved;
        public final com.google.android.exoplayer2.source.w mediaSource;
        public final List<com.google.android.exoplayer2.source.b0.b> activeMediaPeriodIds = new ArrayList();
        public final Object uid = new Object();

        @Override // com.google.android.exoplayer2.s2
        public Object a() {
            return this.uid;
        }

        @Override // com.google.android.exoplayer2.s2
        public z3 b() {
            return this.mediaSource.T();
        }

        public void c(int i10) {
            this.firstWindowIndexInChild = i10;
            this.isRemoved = false;
            this.activeMediaPeriodIds.clear();
        }

        public c(com.google.android.exoplayer2.source.b0 b0Var, boolean z6) {
            this.mediaSource = new com.google.android.exoplayer2.source.w(b0Var, z6);
        }
    }

    public interface d {
        void a();
    }

    private void B(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c cVarRemove = this.mediaSourceHolders.remove(i12);
            this.mediaSourceByUid.remove(cVarRemove.uid);
            g(i12, -cVarRemove.mediaSource.T().t());
            cVarRemove.isRemoved = true;
            if (this.isPrepared) {
                u(cVarRemove);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static com.google.android.exoplayer2.source.b0.b n(c cVar, com.google.android.exoplayer2.source.b0.b bVar) {
        for (int i10 = 0; i10 < cVar.activeMediaPeriodIds.size(); i10++) {
            if (cVar.activeMediaPeriodIds.get(i10).windowSequenceNumber == bVar.windowSequenceNumber) {
                return bVar.c(p(cVar, bVar.periodUid));
            }
        }
        return null;
    }

    public boolean s() {
        return this.isPrepared;
    }

    public z3 v(int i10, int i11, int i12, com.google.android.exoplayer2.source.y0 y0Var) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0 && i10 <= i11 && i11 <= q() && i12 >= 0);
        this.shuffleOrder = y0Var;
        if (i10 == i11 || i10 == i12) {
            return i();
        }
        int iMin = Math.min(i10, i12);
        int iMax = Math.max(((i11 - i10) + i12) - 1, i11 - 1);
        int iT = this.mediaSourceHolders.get(iMin).firstWindowIndexInChild;
        com.google.android.exoplayer2.util.o0.v0(this.mediaSourceHolders, i10, i11, i12);
        while (iMin <= iMax) {
            c cVar = this.mediaSourceHolders.get(iMin);
            cVar.firstWindowIndexInChild = iT;
            iT += cVar.mediaSource.T().t();
            iMin++;
        }
        return i();
    }

    private static final class b {
        public final com.google.android.exoplayer2.source.b0.c caller;
        public final a eventListener;
        public final com.google.android.exoplayer2.source.b0 mediaSource;

        public b(com.google.android.exoplayer2.source.b0 b0Var, com.google.android.exoplayer2.source.b0.c cVar, a aVar) {
            this.mediaSource = b0Var;
            this.caller = cVar;
            this.eventListener = aVar;
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i10).firstWindowIndexInChild += i11;
            i10++;
        }
    }

    private void j(c cVar) {
        b bVar = this.childSources.get(cVar);
        if (bVar != null) {
            bVar.mediaSource.h(bVar.caller);
        }
    }

    private void k() {
        Iterator<c> it = this.enabledMediaSourceHolders.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.activeMediaPeriodIds.isEmpty()) {
                j(next);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.enabledMediaSourceHolders.add(cVar);
        b bVar = this.childSources.get(cVar);
        if (bVar != null) {
            bVar.mediaSource.g(bVar.caller);
        }
    }

    private static Object p(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.E(cVar.uid, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(c cVar, int i10) {
        return i10 + cVar.firstWindowIndexInChild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(com.google.android.exoplayer2.source.b0 b0Var, z3 z3Var) {
        this.mediaSourceListInfoListener.a();
    }

    private void u(c cVar) {
        if (cVar.isRemoved && cVar.activeMediaPeriodIds.isEmpty()) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e(this.childSources.remove(cVar));
            bVar.mediaSource.a(bVar.caller);
            bVar.mediaSource.b(bVar.eventListener);
            bVar.mediaSource.k(bVar.eventListener);
            this.enabledMediaSourceHolders.remove(cVar);
        }
    }

    private void x(c cVar) {
        com.google.android.exoplayer2.source.w wVar = cVar.mediaSource;
        com.google.android.exoplayer2.source.b0.c cVar2 = new com.google.android.exoplayer2.source.b0.c() { // from class: com.google.android.exoplayer2.t2
            @Override // com.google.android.exoplayer2.source.b0.c
            public final void a(com.google.android.exoplayer2.source.b0 b0Var, z3 z3Var) {
                this.f1298a.t(b0Var, z3Var);
            }
        };
        a aVar = new a(cVar);
        this.childSources.put(cVar, new b(wVar, cVar2, aVar));
        wVar.d(com.google.android.exoplayer2.util.o0.w(), aVar);
        wVar.i(com.google.android.exoplayer2.util.o0.w(), aVar);
        wVar.e(cVar2, this.mediaTransferListener, this.playerId);
    }

    public z3 A(int i10, int i11, com.google.android.exoplayer2.source.y0 y0Var) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0 && i10 <= i11 && i11 <= q());
        this.shuffleOrder = y0Var;
        B(i10, i11);
        return i();
    }

    public z3 C(List<c> list, com.google.android.exoplayer2.source.y0 y0Var) {
        B(0, this.mediaSourceHolders.size());
        return f(this.mediaSourceHolders.size(), list, y0Var);
    }

    public com.google.android.exoplayer2.source.y h(com.google.android.exoplayer2.source.b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        Object objO = o(bVar.periodUid);
        com.google.android.exoplayer2.source.b0.b bVarC = bVar.c(m(bVar.periodUid));
        c cVar = (c) com.google.android.exoplayer2.util.a.e(this.mediaSourceByUid.get(objO));
        l(cVar);
        cVar.activeMediaPeriodIds.add(bVarC);
        com.google.android.exoplayer2.source.v vVarC = cVar.mediaSource.c(bVarC, bVar2, j6);
        this.mediaSourceByMediaPeriod.put(vVarC, cVar);
        k();
        return vVarC;
    }

    public z3 i() {
        if (this.mediaSourceHolders.isEmpty()) {
            return z3.EMPTY;
        }
        int iT = 0;
        for (int i10 = 0; i10 < this.mediaSourceHolders.size(); i10++) {
            c cVar = this.mediaSourceHolders.get(i10);
            cVar.firstWindowIndexInChild = iT;
            iT += cVar.mediaSource.T().t();
        }
        return new i3(this.mediaSourceHolders, this.shuffleOrder);
    }

    public int q() {
        return this.mediaSourceHolders.size();
    }

    public void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var) {
        com.google.android.exoplayer2.util.a.g(!this.isPrepared);
        this.mediaTransferListener = m0Var;
        for (int i10 = 0; i10 < this.mediaSourceHolders.size(); i10++) {
            c cVar = this.mediaSourceHolders.get(i10);
            x(cVar);
            this.enabledMediaSourceHolders.add(cVar);
        }
        this.isPrepared = true;
    }

    public void y() {
        for (b bVar : this.childSources.values()) {
            try {
                bVar.mediaSource.a(bVar.caller);
            } catch (RuntimeException e) {
                com.google.android.exoplayer2.util.t.d(TAG, "Failed to release child source.", e);
            }
            bVar.mediaSource.b(bVar.eventListener);
            bVar.mediaSource.k(bVar.eventListener);
        }
        this.childSources.clear();
        this.enabledMediaSourceHolders.clear();
        this.isPrepared = false;
    }

    public void z(com.google.android.exoplayer2.source.y yVar) {
        c cVar = (c) com.google.android.exoplayer2.util.a.e(this.mediaSourceByMediaPeriod.remove(yVar));
        cVar.mediaSource.f(yVar);
        cVar.activeMediaPeriodIds.remove(((com.google.android.exoplayer2.source.v) yVar).id);
        if (!this.mediaSourceByMediaPeriod.isEmpty()) {
            k();
        }
        u(cVar);
    }

    public u2(d dVar, com.google.android.exoplayer2.analytics.a aVar, Handler handler, com.google.android.exoplayer2.analytics.t1 t1Var) {
        this.playerId = t1Var;
        this.mediaSourceListInfoListener = dVar;
        com.google.android.exoplayer2.source.h0.a aVar2 = new com.google.android.exoplayer2.source.h0.a();
        this.mediaSourceEventDispatcher = aVar2;
        com.google.android.exoplayer2.drm.v.a aVar3 = new com.google.android.exoplayer2.drm.v.a();
        this.drmEventDispatcher = aVar3;
        this.childSources = new HashMap<>();
        this.enabledMediaSourceHolders = new HashSet();
        aVar2.f(handler, aVar);
        aVar3.g(handler, aVar);
    }

    private static Object m(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    private static Object o(Object obj) {
        return com.google.android.exoplayer2.a.C(obj);
    }

    public z3 D(com.google.android.exoplayer2.source.y0 y0Var) {
        int iQ = q();
        if (y0Var.getLength() != iQ) {
            y0Var = y0Var.cloneAndClear().cloneAndInsert(0, iQ);
        }
        this.shuffleOrder = y0Var;
        return i();
    }

    public z3 f(int i10, List<c> list, com.google.android.exoplayer2.source.y0 y0Var) {
        if (!list.isEmpty()) {
            this.shuffleOrder = y0Var;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = this.mediaSourceHolders.get(i11 - 1);
                    cVar.c(cVar2.firstWindowIndexInChild + cVar2.mediaSource.T().t());
                } else {
                    cVar.c(0);
                }
                g(i11, cVar.mediaSource.T().t());
                this.mediaSourceHolders.add(i11, cVar);
                this.mediaSourceByUid.put(cVar.uid, cVar);
                if (this.isPrepared) {
                    x(cVar);
                    if (this.mediaSourceByMediaPeriod.isEmpty()) {
                        this.enabledMediaSourceHolders.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }
}
