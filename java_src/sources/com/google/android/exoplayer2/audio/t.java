package com.google.android.exoplayer2.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes11.dex */
public interface t {

    public static final class a {

        @Nullable
        private final Handler handler;

        @Nullable
        private final t listener;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i10, long j6, long j10) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).i(i10, j6, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).d(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j6, long j10) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).onAudioDecoderInitialized(str, j6, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(com.google.android.exoplayer2.decoder.e eVar) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).m(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(a2 a2Var, com.google.android.exoplayer2.decoder.i iVar) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).C(a2Var);
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).l(a2Var, iVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j6) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).f(j6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z6) {
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).onSkipSilenceEnabledChanged(z6);
        }

        public void B(final long j6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1169a.y(j6);
                    }
                });
            }
        }

        public void C(final boolean z6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1182a.z(z6);
                    }
                });
            }
        }

        public void D(final int i10, final long j6, final long j10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1184a.A(i10, j6, j10);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1177a.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1175a.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j6, final long j10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1179a.t(str, j6, j10);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1164a.u(str);
                    }
                });
            }
        }

        public void p(final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1173a.w(eVar);
                    }
                });
            }
        }

        public void q(final a2 a2Var, @Nullable final com.google.android.exoplayer2.decoder.i iVar) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1166a.x(a2Var, iVar);
                    }
                });
            }
        }

        public a(@Nullable Handler handler, @Nullable t tVar) {
            Handler handler2;
            if (tVar != null) {
                handler2 = (Handler) com.google.android.exoplayer2.util.a.e(handler);
            } else {
                handler2 = null;
            }
            this.handler = handler2;
            this.listener = tVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            ((t) com.google.android.exoplayer2.util.o0.j(this.listener)).w(eVar);
        }

        public void o(final com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1171a.v(eVar);
                    }
                });
            }
        }
    }

    @Deprecated
    void C(a2 a2Var);

    void a(Exception exc);

    void c(String str);

    void d(Exception exc);

    void f(long j6);

    void i(int i10, long j6, long j10);

    void l(a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar);

    void m(com.google.android.exoplayer2.decoder.e eVar);

    void onAudioDecoderInitialized(String str, long j6, long j10);

    void onSkipSilenceEnabledChanged(boolean z6);

    void w(com.google.android.exoplayer2.decoder.e eVar);
}
