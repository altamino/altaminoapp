package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class SynchronousMediaCodecAdapter implements MediaCodecAdapter {
    private final MediaCodec codec;

    @Nullable
    private ByteBuffer[] inputByteBuffers;

    @Nullable
    private ByteBuffer[] outputByteBuffers;

    public static class Factory implements MediaCodecAdapter.Factory {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$1] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
        public MediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) throws Throwable {
            MediaCodec mediaCodec = 0;
            mediaCodec = 0;
            try {
                MediaCodec mediaCodecB = b(configuration);
                try {
                    TraceUtil.a("configureCodec");
                    mediaCodecB.configure(configuration.mediaFormat, configuration.surface, configuration.crypto, configuration.flags);
                    TraceUtil.c();
                    TraceUtil.a("startCodec");
                    mediaCodecB.start();
                    TraceUtil.c();
                    return new SynchronousMediaCodecAdapter(mediaCodecB);
                } catch (IOException | RuntimeException e) {
                    e = e;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e2) {
                e = e2;
            } catch (RuntimeException e6) {
                e = e6;
            }
        }

        protected MediaCodec b(MediaCodecAdapter.Configuration configuration) throws IOException {
            Assertions.e(configuration.codecInfo);
            String str = configuration.codecInfo.name;
            TraceUtil.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            TraceUtil.c();
            return mediaCodecCreateByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, MediaCodec mediaCodec, long j6, long j10) {
        onFrameRenderedListener.a(this, j6, j10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public boolean a() {
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void release() {
        this.inputByteBuffers = null;
        this.outputByteBuffers = null;
        this.codec.release();
    }

    private SynchronousMediaCodecAdapter(MediaCodec mediaCodec) {
        this.codec = mediaCodec;
        if (Util.SDK_INT < 21) {
            this.inputByteBuffers = mediaCodec.getInputBuffers();
            this.outputByteBuffers = mediaCodec.getOutputBuffers();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @RequiresApi
    public void b(Bundle bundle) {
        this.codec.setParameters(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @RequiresApi
    public void c(int i10, long j6) {
        this.codec.releaseOutputBuffer(i10, j6);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int d(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && Util.SDK_INT < 21) {
                this.outputByteBuffers = this.codec.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void e(int i10, boolean z6) {
        this.codec.releaseOutputBuffer(i10, z6);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public MediaFormat f() {
        return this.codec.getOutputFormat();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void flush() {
        this.codec.flush();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @Nullable
    public ByteBuffer g(int i10) {
        return Util.SDK_INT >= 21 ? this.codec.getInputBuffer(i10) : ((ByteBuffer[]) Util.j(this.inputByteBuffers))[i10];
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @RequiresApi
    public void h(Surface surface) {
        this.codec.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void i(int i10, int i11, int i12, long j6, int i13) {
        this.codec.queueInputBuffer(i10, i11, i12, j6, i13);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public int j() {
        return this.codec.dequeueInputBuffer(0L);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @Nullable
    public ByteBuffer k(int i10) {
        return Util.SDK_INT >= 21 ? this.codec.getOutputBuffer(i10) : ((ByteBuffer[]) Util.j(this.outputByteBuffers))[i10];
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    @RequiresApi
    public void l(final MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, Handler handler) {
        this.codec.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: androidx.media3.exoplayer.mediacodec.u
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j6, long j10) {
                this.f556a.o(onFrameRenderedListener, mediaCodec, j6, j10);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void m(int i10, int i11, CryptoInfo cryptoInfo, long j6, int i12) {
        this.codec.queueSecureInputBuffer(i10, i11, cryptoInfo.a(), j6, i12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter
    public void setVideoScalingMode(int i10) {
        this.codec.setVideoScalingMode(i10);
    }
}
