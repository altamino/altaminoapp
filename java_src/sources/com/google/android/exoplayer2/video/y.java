package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes10.dex */
public interface y {

    public static final class a {

        @Nullable
        private final Handler handler;

        @Nullable
        private final y listener;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j6, long j10) {
            ((y) o0.j(this.listener)).onVideoDecoderInitialized(str, j6, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((y) o0.j(this.listener)).b(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i10, long j6) {
            ((y) o0.j(this.listener)).onDroppedFrames(i10, j6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(com.google.android.exoplayer2.decoder.e eVar) {
            ((y) o0.j(this.listener)).A(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(a2 a2Var, com.google.android.exoplayer2.decoder.i iVar) {
            ((y) o0.j(this.listener)).B(a2Var);
            ((y) o0.j(this.listener)).t(a2Var, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j6) {
            ((y) o0.j(this.listener)).h(obj, j6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j6, int i10) {
            ((y) o0.j(this.listener)).e(j6, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((y) o0.j(this.listener)).g(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(a0 a0Var) {
            ((y) o0.j(this.listener)).k(a0Var);
        }

        public void A(final Object obj) {
            if (this.handler != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1376a.w(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j6, final int i10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1363a.x(j6, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1374a.y(exc);
                    }
                });
            }
        }

        public void D(final a0 a0Var) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1361a.z(a0Var);
                    }
                });
            }
        }

        public void k(final String str, final long j6, final long j10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1382a.q(str, j6, j10);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1359a.r(str);
                    }
                });
            }
        }

        public void n(final int i10, final long j6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1379a.t(i10, j6);
                    }
                });
            }
        }

        public void o(final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1357a.u(eVar);
                    }
                });
            }
        }

        public void p(final a2 a2Var, @Nullable final com.google.android.exoplayer2.decoder.i iVar) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1371a.v(a2Var, iVar);
                    }
                });
            }
        }

        public a(@Nullable Handler handler, @Nullable y yVar) {
            Handler handler2;
            if (yVar != null) {
                handler2 = (Handler) com.google.android.exoplayer2.util.a.e(handler);
            } else {
                handler2 = null;
            }
            this.handler = handler2;
            this.listener = yVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            ((y) o0.j(this.listener)).u(eVar);
        }

        public void m(final com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1355a.s(eVar);
                    }
                });
            }
        }
    }

    void A(com.google.android.exoplayer2.decoder.e eVar);

    @Deprecated
    void B(a2 a2Var);

    void b(String str);

    void e(long j6, int i10);

    void g(Exception exc);

    void h(Object obj, long j6);

    void k(a0 a0Var);

    void onDroppedFrames(int i10, long j6);

    void onVideoDecoderInitialized(String str, long j6, long j10);

    void t(a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar);

    void u(com.google.android.exoplayer2.decoder.e eVar);
}
