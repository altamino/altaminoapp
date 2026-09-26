package androidx.media3.exoplayer.mediacodec;

import androidx.annotation.IntRange;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
final class BatchBuffer extends DecoderInputBuffer {
    public static final int DEFAULT_MAX_SAMPLE_COUNT = 32;

    @VisibleForTesting
    static final int MAX_SIZE_BYTES = 3072000;
    private long lastSampleTimeUs;
    private int maxSampleCount;
    private int sampleCount;

    public BatchBuffer() {
        super(2);
        this.maxSampleCount = 32;
    }

    public long v() {
        return this.timeUs;
    }

    public long w() {
        return this.lastSampleTimeUs;
    }

    public int x() {
        return this.sampleCount;
    }

    public boolean y() {
        return this.sampleCount > 0;
    }

    public void z(@IntRange int i10) {
        Assertions.a(i10 > 0);
        this.maxSampleCount = i10;
    }

    private boolean u(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!y()) {
            return true;
        }
        if (this.sampleCount >= this.maxSampleCount || decoderInputBuffer.f() != f()) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.data;
        if (byteBuffer2 == null || (byteBuffer = this.data) == null || byteBuffer.position() + byteBuffer2.remaining() <= MAX_SIZE_BYTES) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.decoder.DecoderInputBuffer, androidx.media3.decoder.Buffer
    public void b() {
        super.b();
        this.sampleCount = 0;
    }

    public boolean t(DecoderInputBuffer decoderInputBuffer) {
        Assertions.a(!decoderInputBuffer.q());
        Assertions.a(!decoderInputBuffer.e());
        Assertions.a(!decoderInputBuffer.h());
        if (!u(decoderInputBuffer)) {
            return false;
        }
        int i10 = this.sampleCount;
        this.sampleCount = i10 + 1;
        if (i10 == 0) {
            this.timeUs = decoderInputBuffer.timeUs;
            if (decoderInputBuffer.j()) {
                l(1);
            }
        }
        if (decoderInputBuffer.f()) {
            l(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.data;
        if (byteBuffer != null) {
            o(byteBuffer.remaining());
            this.data.put(byteBuffer);
        }
        this.lastSampleTimeUs = decoderInputBuffer.timeUs;
        return true;
    }
}
