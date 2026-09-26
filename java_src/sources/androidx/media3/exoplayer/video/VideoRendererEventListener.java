package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface VideoRendererEventListener {

    public static final class EventDispatcher {

        @Nullable
        private final Handler handler;

        @Nullable
        private final VideoRendererEventListener listener;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(String str, long j6, long j10) {
            ((VideoRendererEventListener) Util.j(this.listener)).onVideoDecoderInitialized(str, j6, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(String str) {
            ((VideoRendererEventListener) Util.j(this.listener)).b(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(int i10, long j6) {
            ((VideoRendererEventListener) Util.j(this.listener)).onDroppedFrames(i10, j6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(DecoderCounters decoderCounters) {
            ((VideoRendererEventListener) Util.j(this.listener)).l(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((VideoRendererEventListener) Util.j(this.listener)).x(format);
            ((VideoRendererEventListener) Util.j(this.listener)).t(format, decoderReuseEvaluation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Object obj, long j6) {
            ((VideoRendererEventListener) Util.j(this.listener)).h(obj, j6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(long j6, int i10) {
            ((VideoRendererEventListener) Util.j(this.listener)).e(j6, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(Exception exc) {
            ((VideoRendererEventListener) Util.j(this.listener)).g(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(VideoSize videoSize) {
            ((VideoRendererEventListener) Util.j(this.listener)).onVideoSizeChanged(videoSize);
        }

        public void A(final Object obj) {
            if (this.handler != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f670a.w(obj, jElapsedRealtime);
                    }
                });
            }
        }

        public void B(final long j6, final int i10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f675a.x(j6, i10);
                    }
                });
            }
        }

        public void C(final Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f673a.y(exc);
                    }
                });
            }
        }

        public void D(final VideoSize videoSize) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f688a.z(videoSize);
                    }
                });
            }
        }

        public void k(final String str, final long j6, final long j10) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f682a.q(str, j6, j10);
                    }
                });
            }
        }

        public void l(final String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f690a.r(str);
                    }
                });
            }
        }

        public void n(final int i10, final long j6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f667a.t(i10, j6);
                    }
                });
            }
        }

        public void o(final DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f678a.u(decoderCounters);
                    }
                });
            }
        }

        public void p(final Format format, @Nullable final DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f685a.v(format, decoderReuseEvaluation);
                    }
                });
            }
        }

        public EventDispatcher(@Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener) {
            Handler handler2;
            if (videoRendererEventListener != null) {
                handler2 = (Handler) Assertions.e(handler);
            } else {
                handler2 = null;
            }
            this.handler = handler2;
            this.listener = videoRendererEventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(DecoderCounters decoderCounters) {
            decoderCounters.c();
            ((VideoRendererEventListener) Util.j(this.listener)).u(decoderCounters);
        }

        public void m(final DecoderCounters decoderCounters) {
            decoderCounters.c();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.video.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f680a.s(decoderCounters);
                    }
                });
            }
        }
    }

    void b(String str);

    void e(long j6, int i10);

    void g(Exception exc);

    void h(Object obj, long j6);

    void l(DecoderCounters decoderCounters);

    void onDroppedFrames(int i10, long j6);

    void onVideoDecoderInitialized(String str, long j6, long j10);

    void onVideoSizeChanged(VideoSize videoSize);

    void t(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);

    void u(DecoderCounters decoderCounters);

    @Deprecated
    void x(Format format);
}
