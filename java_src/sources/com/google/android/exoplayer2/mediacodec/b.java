package com.google.android.exoplayer2.mediacodec;

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
import com.google.android.exoplayer2.util.m0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class b implements l {
    private static final int STATE_CREATED = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_SHUT_DOWN = 2;
    private final g asynchronousMediaCodecCallback;
    private final e bufferEnqueuer;
    private final MediaCodec codec;
    private boolean codecReleased;
    private int state;
    private final boolean synchronizeCodecInteractionsWithQueueing;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.mediacodec.b$b, reason: collision with other inner class name */
    public static final class C0176b implements l.b {
        private final com.google.common.base.u<HandlerThread> callbackThreadSupplier;
        private final com.google.common.base.u<HandlerThread> queueingThreadSupplier;
        private final boolean synchronizeCodecInteractionsWithQueueing;

        public C0176b(final int i10, boolean z6) {
            this(new com.google.common.base.u() { // from class: com.google.android.exoplayer2.mediacodec.c
                @Override // com.google.common.base.u
                public final Object get() {
                    return b.C0176b.e(i10);
                }
            }, new com.google.common.base.u() { // from class: com.google.android.exoplayer2.mediacodec.d
                @Override // com.google.common.base.u
                public final Object get() {
                    return b.C0176b.f(i10);
                }
            }, z6);
        }

        @VisibleForTesting
        C0176b(com.google.common.base.u<HandlerThread> uVar, com.google.common.base.u<HandlerThread> uVar2, boolean z6) {
            this.callbackThreadSupplier = uVar;
            this.queueingThreadSupplier = uVar2;
            this.synchronizeCodecInteractionsWithQueueing = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i10) {
            return new HandlerThread(b.r(i10));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i10) {
            return new HandlerThread(b.s(i10));
        }

        @Override // com.google.android.exoplayer2.mediacodec.l.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public b a(l.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.codecInfo.name;
            b bVar = null;
            try {
                m0.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    b bVar2 = new b(mediaCodecCreateByCodecName, this.callbackThreadSupplier.get(), this.queueingThreadSupplier.get(), this.synchronizeCodecInteractionsWithQueueing);
                    try {
                        m0.c();
                        bVar2.u(aVar.mediaFormat, aVar.surface, aVar.crypto, aVar.flags);
                        return bVar2;
                    } catch (Exception e) {
                        e = e;
                        bVar = bVar2;
                        if (bVar != null) {
                            bVar.release();
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
    public /* synthetic */ void v(l.c cVar, MediaCodec mediaCodec, long j6, long j10) {
        cVar.a(this, j6, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public boolean a() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
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

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z6) {
        this.codec = mediaCodec;
        this.asynchronousMediaCodecCallback = new g(handlerThread);
        this.bufferEnqueuer = new e(mediaCodec, handlerThread2);
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
        m0.a("configureCodec");
        this.codec.configure(mediaFormat, surface, mediaCrypto, i10);
        m0.c();
        this.bufferEnqueuer.q();
        m0.a("startCodec");
        this.codec.start();
        m0.c();
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

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void c(int i10, long j6) {
        this.codec.releaseOutputBuffer(i10, j6);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int d(MediaCodec.BufferInfo bufferInfo) {
        return this.asynchronousMediaCodecCallback.d(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void e(int i10, boolean z6) {
        this.codec.releaseOutputBuffer(i10, z6);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public MediaFormat f() {
        return this.asynchronousMediaCodecCallback.g();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void flush() {
        this.bufferEnqueuer.i();
        this.codec.flush();
        this.asynchronousMediaCodecCallback.e();
        this.codec.start();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer g(int i10) {
        return this.codec.getInputBuffer(i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void i(int i10, int i11, int i12, long j6, int i13) {
        this.bufferEnqueuer.m(i10, i11, i12, j6, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int j() {
        return this.asynchronousMediaCodecCallback.c();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer k(int i10) {
        return this.codec.getOutputBuffer(i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void l(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j6, int i12) {
        this.bufferEnqueuer.n(i10, i11, cVar, j6, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void b(Bundle bundle) {
        w();
        this.codec.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void h(Surface surface) {
        w();
        this.codec.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void m(final l.c cVar, Handler handler) {
        w();
        this.codec.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j6, long j10) {
                this.f1236a.v(cVar, mediaCodec, j6, j10);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void setVideoScalingMode(int i10) {
        w();
        this.codec.setVideoScalingMode(i10);
    }
}
