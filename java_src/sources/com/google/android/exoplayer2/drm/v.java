package com.google.android.exoplayer2.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public interface v {

    public static class a {
        private final CopyOnWriteArrayList<C0168a> listenerAndHandlers;

        @Nullable
        public final com.google.android.exoplayer2.source.b0.b mediaPeriodId;
        public final int windowIndex;

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        /* JADX INFO: renamed from: com.google.android.exoplayer2.drm.v$a$a, reason: collision with other inner class name */
        private static final class C0168a {
            public Handler handler;
            public v listener;

            public C0168a(Handler handler, v vVar) {
                this.handler = handler;
                this.listener = vVar;
            }
        }

        private a(CopyOnWriteArrayList<C0168a> copyOnWriteArrayList, int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i10;
            this.mediaPeriodId = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(v vVar) {
            vVar.q(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(v vVar) {
            vVar.K(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(v vVar) {
            vVar.v(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(v vVar, int i10) {
            vVar.L(this.windowIndex, this.mediaPeriodId);
            vVar.r(this.windowIndex, this.mediaPeriodId, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(v vVar, Exception exc) {
            vVar.O(this.windowIndex, this.mediaPeriodId, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(v vVar) {
            vVar.T(this.windowIndex, this.mediaPeriodId);
        }

        public void h() {
            for (C0168a c0168a : this.listenerAndHandlers) {
                final v vVar = c0168a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0168a.handler, new Runnable() { // from class: com.google.android.exoplayer2.drm.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1212a.n(vVar);
                    }
                });
            }
        }

        public void i() {
            for (C0168a c0168a : this.listenerAndHandlers) {
                final v vVar = c0168a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0168a.handler, new Runnable() { // from class: com.google.android.exoplayer2.drm.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1210a.o(vVar);
                    }
                });
            }
        }

        public void j() {
            for (C0168a c0168a : this.listenerAndHandlers) {
                final v vVar = c0168a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0168a.handler, new Runnable() { // from class: com.google.android.exoplayer2.drm.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1214a.p(vVar);
                    }
                });
            }
        }

        public void k(final int i10) {
            for (C0168a c0168a : this.listenerAndHandlers) {
                final v vVar = c0168a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0168a.handler, new Runnable() { // from class: com.google.android.exoplayer2.drm.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1207a.q(vVar, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (C0168a c0168a : this.listenerAndHandlers) {
                final v vVar = c0168a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0168a.handler, new Runnable() { // from class: com.google.android.exoplayer2.drm.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1204a.r(vVar, exc);
                    }
                });
            }
        }

        public void m() {
            for (C0168a c0168a : this.listenerAndHandlers) {
                final v vVar = c0168a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0168a.handler, new Runnable() { // from class: com.google.android.exoplayer2.drm.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1202a.s(vVar);
                    }
                });
            }
        }

        public void t(v vVar) {
            for (C0168a c0168a : this.listenerAndHandlers) {
                if (c0168a.listener == vVar) {
                    this.listenerAndHandlers.remove(c0168a);
                }
            }
        }

        @CheckResult
        public a u(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar) {
            return new a(this.listenerAndHandlers, i10, bVar);
        }

        public void g(Handler handler, v vVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(vVar);
            this.listenerAndHandlers.add(new C0168a(handler, vVar));
        }
    }

    void K(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar);

    @Deprecated
    void L(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar);

    void O(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, Exception exc);

    void T(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar);

    void q(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar);

    void r(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, int i11);

    void v(int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar);
}
