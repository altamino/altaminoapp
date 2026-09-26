package androidx.media3.exoplayer.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public interface AudioRendererEventListener {

    public static final class EventDispatcher {

        @Nullable
        private final Handler handler;

        @Nullable
        private final AudioRendererEventListener listener;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i10, long j6, long j10) {
            ((AudioRendererEventListener) Util.j(this.listener)).i(i10, j6, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((AudioRendererEventListener) Util.j(this.listener)).d(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((AudioRendererEventListener) Util.j(this.listener)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j6, long j10) {
            ((AudioRendererEventListener) Util.j(this.listener)).onAudioDecoderInitialized(str, j6, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((AudioRendererEventListener) Util.j(this.listener)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.j(this.listener)).k(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.j(this.listener)).w(format);
            ((AudioRendererEventListener) Util.j(this.listener)).m(format, decoderReuseEvaluation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j6) {
            ((AudioRendererEventListener) Util.j(this.listener)).f(j6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z6) {
            ((AudioRendererEventListener) Util.j(this.listener)).onSkipSilenceEnabledChanged(z6);
        }

        public void B(final long j6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f455a.y(j6);
                    }
                });
            }
        }

        public void C(final boolean z6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f467a.z(z6);
                    }
                });
            }
        }

        public void D(final int i10, final long j6, final long j10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f469a.A(i10, j6, j10);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f449a.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f460a.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j6, final long j10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f457a.t(str, j6, j10);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f462a.u(str);
                    }
                });
            }
        }

        public void p(final DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f453a.w(decoderCounters);
                    }
                });
            }
        }

        public void q(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f464a.x(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public EventDispatcher(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener) {
            Handler handler2;
            if (audioRendererEventListener != null) {
                handler2 = (Handler) Assertions.e(handler);
            } else {
                handler2 = null;
            }
            this.handler = handler2;
            this.listener = audioRendererEventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(DecoderCounters decoderCounters) {
            decoderCounters.c();
            ((AudioRendererEventListener) Util.j(this.listener)).n(decoderCounters);
        }

        public void o(final DecoderCounters decoderCounters) {
            decoderCounters.c();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f451a.v(decoderCounters);
                    }
                });
            }
        }
    }

    void a(Exception exc);

    void c(String str);

    void d(Exception exc);

    void f(long j6);

    void i(int i10, long j6, long j10);

    void k(DecoderCounters decoderCounters);

    void m(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);

    void n(DecoderCounters decoderCounters);

    void onAudioDecoderInitialized(String str, long j6, long j10);

    void onSkipSilenceEnabledChanged(boolean z6);

    @Deprecated
    void w(Format format);
}
