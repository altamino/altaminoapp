package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public final class x implements l {
    private final MediaCodec codec;

    @Nullable
    private ByteBuffer[] inputByteBuffers;

    @Nullable
    private ByteBuffer[] outputByteBuffers;

    public static class b implements l.b {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.mediacodec.x$a] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override // com.google.android.exoplayer2.mediacodec.l.b
        public l a(l.a aVar) throws Throwable {
            MediaCodec mediaCodec = 0;
            mediaCodec = 0;
            try {
                MediaCodec mediaCodecB = b(aVar);
                try {
                    m0.a("configureCodec");
                    mediaCodecB.configure(aVar.mediaFormat, aVar.surface, aVar.crypto, aVar.flags);
                    m0.c();
                    m0.a("startCodec");
                    mediaCodecB.start();
                    m0.c();
                    return new x(mediaCodecB);
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

        protected MediaCodec b(l.a aVar) throws IOException {
            com.google.android.exoplayer2.util.a.e(aVar.codecInfo);
            String str = aVar.codecInfo.name;
            m0.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            m0.c();
            return mediaCodecCreateByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(l.c cVar, MediaCodec mediaCodec, long j6, long j10) {
        cVar.a(this, j6, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public boolean a() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void release() {
        this.inputByteBuffers = null;
        this.outputByteBuffers = null;
        this.codec.release();
    }

    private x(MediaCodec mediaCodec) {
        this.codec = mediaCodec;
        if (o0.SDK_INT < 21) {
            this.inputByteBuffers = mediaCodec.getInputBuffers();
            this.outputByteBuffers = mediaCodec.getOutputBuffers();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi
    public void b(Bundle bundle) {
        this.codec.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi
    public void c(int i10, long j6) {
        this.codec.releaseOutputBuffer(i10, j6);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int d(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && o0.SDK_INT < 21) {
                this.outputByteBuffers = this.codec.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void e(int i10, boolean z6) {
        this.codec.releaseOutputBuffer(i10, z6);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public MediaFormat f() {
        return this.codec.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void flush() {
        this.codec.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer g(int i10) {
        return o0.SDK_INT >= 21 ? this.codec.getInputBuffer(i10) : ((ByteBuffer[]) o0.j(this.inputByteBuffers))[i10];
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi
    public void h(Surface surface) {
        this.codec.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void i(int i10, int i11, int i12, long j6, int i13) {
        this.codec.queueInputBuffer(i10, i11, i12, j6, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int j() {
        return this.codec.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @Nullable
    public ByteBuffer k(int i10) {
        return o0.SDK_INT >= 21 ? this.codec.getOutputBuffer(i10) : ((ByteBuffer[]) o0.j(this.outputByteBuffers))[i10];
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void l(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j6, int i12) {
        this.codec.queueSecureInputBuffer(i10, i11, cVar.a(), j6, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    @RequiresApi
    public void m(final l.c cVar, Handler handler) {
        this.codec.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.w
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j6, long j10) {
                this.f1243a.o(cVar, mediaCodec, j6, j10);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void setVideoScalingMode(int i10) {
        this.codec.setVideoScalingMode(i10);
    }
}
