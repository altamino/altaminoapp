package com.google.android.exoplayer2.source;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes7.dex */
public interface h0 {

    public static class a {
        private final CopyOnWriteArrayList<C0177a> listenerAndHandlers;

        @Nullable
        public final b0.b mediaPeriodId;
        private final long mediaTimeOffsetMs;
        public final int windowIndex;

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        public void h(int i10, @Nullable a2 a2Var, int i11, @Nullable Object obj, long j6) {
            i(new x(1, i10, a2Var, i11, obj, g(j6), -9223372036854775807L));
        }

        public void o(u uVar, int i10, int i11, @Nullable a2 a2Var, int i12, @Nullable Object obj, long j6, long j10) {
            p(uVar, new x(i10, i11, a2Var, i12, obj, g(j6), g(j10)));
        }

        public void q(u uVar, int i10, int i11, @Nullable a2 a2Var, int i12, @Nullable Object obj, long j6, long j10) {
            r(uVar, new x(i10, i11, a2Var, i12, obj, g(j6), g(j10)));
        }

        public void s(u uVar, int i10, int i11, @Nullable a2 a2Var, int i12, @Nullable Object obj, long j6, long j10, IOException iOException, boolean z6) {
            t(uVar, new x(i10, i11, a2Var, i12, obj, g(j6), g(j10)), iOException, z6);
        }

        public void u(u uVar, int i10, int i11, @Nullable a2 a2Var, int i12, @Nullable Object obj, long j6, long j10) {
            v(uVar, new x(i10, i11, a2Var, i12, obj, g(j6), g(j10)));
        }

        /* JADX INFO: renamed from: com.google.android.exoplayer2.source.h0$a$a, reason: collision with other inner class name */
        private static final class C0177a {
            public Handler handler;
            public h0 listener;

            public C0177a(Handler handler, h0 h0Var) {
                this.handler = handler;
                this.listener = h0Var;
            }
        }

        private a(CopyOnWriteArrayList<C0177a> copyOnWriteArrayList, int i10, @Nullable b0.b bVar, long j6) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i10;
            this.mediaPeriodId = bVar;
            this.mediaTimeOffsetMs = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(h0 h0Var, x xVar) {
            h0Var.G(this.windowIndex, this.mediaPeriodId, xVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(h0 h0Var, u uVar, x xVar) {
            h0Var.j(this.windowIndex, this.mediaPeriodId, uVar, xVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(h0 h0Var, u uVar, x xVar) {
            h0Var.S(this.windowIndex, this.mediaPeriodId, uVar, xVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(h0 h0Var, u uVar, x xVar, IOException iOException, boolean z6) {
            h0Var.s(this.windowIndex, this.mediaPeriodId, uVar, xVar, iOException, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(h0 h0Var, u uVar, x xVar) {
            h0Var.I(this.windowIndex, this.mediaPeriodId, uVar, xVar);
        }

        public void i(final x xVar) {
            for (C0177a c0177a : this.listenerAndHandlers) {
                final h0 h0Var = c0177a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0177a.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1265a.j(h0Var, xVar);
                    }
                });
            }
        }

        public void p(final u uVar, final x xVar) {
            for (C0177a c0177a : this.listenerAndHandlers) {
                final h0 h0Var = c0177a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0177a.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1276a.k(h0Var, uVar, xVar);
                    }
                });
            }
        }

        public void r(final u uVar, final x xVar) {
            for (C0177a c0177a : this.listenerAndHandlers) {
                final h0 h0Var = c0177a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0177a.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1273a.l(h0Var, uVar, xVar);
                    }
                });
            }
        }

        public void t(final u uVar, final x xVar, final IOException iOException, final boolean z6) {
            for (C0177a c0177a : this.listenerAndHandlers) {
                final h0 h0Var = c0177a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0177a.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1268a.m(h0Var, uVar, xVar, iOException, z6);
                    }
                });
            }
        }

        public void v(final u uVar, final x xVar) {
            for (C0177a c0177a : this.listenerAndHandlers) {
                final h0 h0Var = c0177a.listener;
                com.google.android.exoplayer2.util.o0.C0(c0177a.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.c0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1262a.n(h0Var, uVar, xVar);
                    }
                });
            }
        }

        public void w(h0 h0Var) {
            for (C0177a c0177a : this.listenerAndHandlers) {
                if (c0177a.listener == h0Var) {
                    this.listenerAndHandlers.remove(c0177a);
                }
            }
        }

        @CheckResult
        public a x(int i10, @Nullable b0.b bVar, long j6) {
            return new a(this.listenerAndHandlers, i10, bVar, j6);
        }

        private long g(long j6) {
            long jP0 = com.google.android.exoplayer2.util.o0.P0(j6);
            if (jP0 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.mediaTimeOffsetMs + jP0;
        }

        public void f(Handler handler, h0 h0Var) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(h0Var);
            this.listenerAndHandlers.add(new C0177a(handler, h0Var));
        }
    }

    void G(int i10, @Nullable b0.b bVar, x xVar);

    void I(int i10, @Nullable b0.b bVar, u uVar, x xVar);

    void S(int i10, @Nullable b0.b bVar, u uVar, x xVar);

    void j(int i10, @Nullable b0.b bVar, u uVar, x xVar);

    void s(int i10, @Nullable b0.b bVar, u uVar, x xVar, IOException iOException, boolean z6);
}
