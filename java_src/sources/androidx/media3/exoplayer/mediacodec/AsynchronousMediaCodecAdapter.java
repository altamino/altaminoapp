package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.decoder.CryptoInfo;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
final class AsynchronousMediaCodecAdapter implements MediaCodecAdapter {
    private static final int STATE_CREATED = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_SHUT_DOWN = 2;
    private final AsynchronousMediaCodecCallback asynchronousMediaCodecCallback;
    private final AsynchronousMediaCodecBufferEnqueuer bufferEnqueuer;
    private final MediaCodec codec;
    private boolean codecReleased;
    private int state;
    private final boolean synchronizeCodecInteractionsWithQueueing;

    public static final class Factory implements MediaCodecAdapter.Factory {
        private final com.google.common.base.u<HandlerThread> callbackThreadSupplier;
        private final com.google.common.base.u<HandlerThread> queueingThreadSupplier;
        private final boolean synchronizeCodecInteractionsWithQueueing;

        public Factory(final int i10, boolean z6) {
            this(new com.google.common.base.u() { // from class: androidx.media3.exoplayer.mediacodec.b
                @Override // com.google.common.base.u
                public final Object get() {
                    return AsynchronousMediaCodecAdapter.Factory.e(i10);
                }
            }, new com.google.common.base.u() { // from class: androidx.media3.exoplayer.mediacodec.c
                @Override // com.google.common.base.u
                public final Object get() {
                    return AsynchronousMediaCodecAdapter.Factory.f(i10);
                }
            }, z6);
        }

        @VisibleForTesting
        Factory(com.google.common.base.u<HandlerThread> uVar, com.google.common.base.u<HandlerThread> uVar2, boolean z6) {
            this.callbackThreadSupplier = uVar;
            this.queueingThreadSupplier = uVar2;
            this.synchronizeCodecInteractionsWithQueueing = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i10) {
            return new HandlerThread(AsynchronousMediaCodecAdapter.r(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i10) {
            return new HandlerThread(AsynchronousMediaCodecAdapter.s(i10));
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public AsynchronousMediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = configuration.codecInfo.name;
            AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter = null;
            try {
                TraceUtil.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter2 = new AsynchronousMediaCodecAdapter(mediaCodecCreateByCodecName, this.callbackThreadSupplier.get(), this.queueingThreadSupplier.get(), this.synchronizeCodecInteractionsWithQueueing);
                    try {
                        TraceUtil.c();
                        asynchronousMediaCodecAdapter2.u(configuration.mediaFormat, configuration.surface, configuration.crypto, configuration.flags);
                        return asynchronousMediaCodecAdapter2;
                    } catch (Exception e) {
                        e = e;
                        asynchronousMediaCodecAdapter = asynchronousMediaCodecAdapter2;
                        if (asynchronousMediaCodecAdapter != null) {
                            asynchronousMediaCodecAdapter.release();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e6) {
                e = e6;
                mediaCodecCreateByCodecName = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, MediaCodec mediaCodec, long j6, long j10) {
        onFrameRenderedListener.a(this, j6, j10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public boolean a() {
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void release() {
        try {
            if (this.state == 1) {
                this.bufferEnqueuer.p();
                this.asynchronousMediaCodecCallback.o();
            }
            this.state = 2;
        } finally {
            if (!this.codecReleased) {
                this.codec.release();
                this.codecReleased = true;
            }
        }
    }

    private AsynchronousMediaCodecAdapter(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z6) {
        this.codec = mediaCodec;
        this.asynchronousMediaCodecCallback = new AsynchronousMediaCodecCallback(handlerThread);
        this.bufferEnqueuer = new AsynchronousMediaCodecBufferEnqueuer(mediaCodec, handlerThread2);
        this.synchronizeCodecInteractionsWithQueueing = z6;
        this.state = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String r(int i10) {
        return t(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String s(int i10) {
        return t(i10, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String t(int i10, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i10 == 1) {
            sb.append("Audio");
        } else if (i10 == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i10);
            sb.append(")");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i10) {
        this.asynchronousMediaCodecCallback.h(this.codec);
        TraceUtil.a("configureCodec");
        this.codec.configure(mediaFormat, surface, mediaCrypto, i10);
        TraceUtil.c();
        this.bufferEnqueuer.q();
        TraceUtil.a("startCodec");
        this.codec.start();
        TraceUtil.c();
        this.state = 1;
    }

    private void w() {
        if (this.synchronizeCodecInteractionsWithQueueing) {
            try {
                this.bufferEnqueuer.r();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void c(int i10, long j6) {
        this.codec.releaseOutputBuffer(i10, j6);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int d(MediaCodec.BufferInfo bufferInfo) {
        this.bufferEnqueuer.l();
        return this.asynchronousMediaCodecCallback.d(bufferInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void e(int i10, boolean z6) {
        this.codec.releaseOutputBuffer(i10, z6);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public MediaFormat f() {
        return this.asynchronousMediaCodecCallback.g();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void flush() {
        this.bufferEnqueuer.i();
        this.codec.flush();
        this.asynchronousMediaCodecCallback.e();
        this.codec.start();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @Nullable
    public ByteBuffer g(int i10) {
        return this.codec.getInputBuffer(i10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void i(int i10, int i11, int i12, long j6, int i13) {
        this.bufferEnqueuer.m(i10, i11, i12, j6, i13);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int j() {
        this.bufferEnqueuer.l();
        return this.asynchronousMediaCodecCallback.c();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @Nullable
    public ByteBuffer k(int i10) {
        return this.codec.getOutputBuffer(i10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void m(int i10, int i11, CryptoInfo cryptoInfo, long j6, int i12) {
        this.bufferEnqueuer.n(i10, i11, cryptoInfo, j6, i12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void b(Bundle bundle) {
        w();
        this.codec.setParameters(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void h(Surface surface) {
        w();
        this.codec.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void l(final MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        w();
        this.codec.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: androidx.media3.exoplayer.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j6, long j10) {
                this.f549a.v(onFrameRenderedListener, mediaCodec, j6, j10);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setVideoScalingMode(int i10) {
        w();
        this.codec.setVideoScalingMode(i10);
    }
}
