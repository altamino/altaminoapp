package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class TrueHdSampleRechunker {
    private int chunkFlags;
    private int chunkOffset;
    private int chunkSampleCount;
    private int chunkSize;
    private long chunkTimeUs;
    private boolean foundSyncframe;
    private final byte[] syncframePrefix = new byte[10];

    public void b() {
        this.foundSyncframe = false;
        this.chunkSampleCount = 0;
    }

    public void a(TrackOutput trackOutput, @Nullable TrackOutput.CryptoData cryptoData) {
        if (this.chunkSampleCount > 0) {
            trackOutput.f(this.chunkTimeUs, this.chunkFlags, this.chunkSize, this.chunkOffset, cryptoData);
            this.chunkSampleCount = 0;
        }
    }

    public void c(TrackOutput trackOutput, long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
        Assertions.h(this.chunkOffset <= i11 + i12, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.foundSyncframe) {
            int i13 = this.chunkSampleCount;
            int i14 = i13 + 1;
            this.chunkSampleCount = i14;
            if (i13 == 0) {
                this.chunkTimeUs = j6;
                this.chunkFlags = i10;
                this.chunkSize = 0;
            }
            this.chunkSize += i11;
            this.chunkOffset = i12;
            if (i14 >= 16) {
                a(trackOutput, cryptoData);
            }
        }
    }

    public void d(ExtractorInput extractorInput) throws IOException {
        if (this.foundSyncframe) {
            return;
        }
        extractorInput.peekFully(this.syncframePrefix, 0, 10);
        extractorInput.resetPeekPosition();
        if (Ac3Util.j(this.syncframePrefix) == 0) {
            return;
        }
        this.foundSyncframe = true;
    }
}
