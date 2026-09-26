package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
final class HlsSampleStream implements SampleStream {
    private int sampleQueueIndex = -1;
    private final HlsSampleStreamWrapper sampleStreamWrapper;
    private final int trackGroupIndex;

    private boolean c() {
        int i10 = this.sampleQueueIndex;
        return (i10 == -1 || i10 == -3 || i10 == -2) ? false : true;
    }

    public void a() {
        Assertions.a(this.sampleQueueIndex == -1);
        this.sampleQueueIndex = this.sampleStreamWrapper.i(this.trackGroupIndex);
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (this.sampleQueueIndex == -3) {
            decoderInputBuffer.a(4);
            return -4;
        }
        if (c()) {
            return this.sampleStreamWrapper.Q(this.sampleQueueIndex, formatHolder, decoderInputBuffer, i10);
        }
        return -3;
    }

    public void d() {
        if (this.sampleQueueIndex != -1) {
            this.sampleStreamWrapper.c0(this.trackGroupIndex);
            this.sampleQueueIndex = -1;
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public boolean isReady() {
        return this.sampleQueueIndex == -3 || (c() && this.sampleStreamWrapper.B(this.sampleQueueIndex));
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public void maybeThrowError() throws IOException {
        int i10 = this.sampleQueueIndex;
        if (i10 == -2) {
            throw new SampleQueueMappingException(this.sampleStreamWrapper.getTrackGroups().b(this.trackGroupIndex).c(0).sampleMimeType);
        }
        if (i10 == -1) {
            this.sampleStreamWrapper.F();
        } else if (i10 != -3) {
            this.sampleStreamWrapper.G(i10);
        }
    }

    public HlsSampleStream(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i10) {
        this.sampleStreamWrapper = hlsSampleStreamWrapper;
        this.trackGroupIndex = i10;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int skipData(long j6) {
        if (c()) {
            return this.sampleStreamWrapper.b0(this.sampleQueueIndex, j6);
        }
        return 0;
    }
}
