package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.extractor.MpegAudioUtil;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class C2Mp3TimestampTracker {
    private static final long DECODER_DELAY_FRAMES = 529;
    private static final String TAG = "C2Mp3TimestampTracker";
    private long anchorTimestampUs;
    private long processedFrames;
    private boolean seenInvalidMpegAudioHeader;

    public void c() {
        this.anchorTimestampUs = 0L;
        this.processedFrames = 0L;
        this.seenInvalidMpegAudioHeader = false;
    }

    private long a(long j6) {
        return this.anchorTimestampUs + Math.max(0L, ((this.processedFrames - DECODER_DELAY_FRAMES) * 1000000) / j6);
    }

    public long b(Format format) {
        return a(format.sampleRate);
    }

    public long d(Format format, DecoderInputBuffer decoderInputBuffer) {
        if (this.processedFrames == 0) {
            this.anchorTimestampUs = decoderInputBuffer.timeUs;
        }
        if (this.seenInvalidMpegAudioHeader) {
            return decoderInputBuffer.timeUs;
        }
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.e(decoderInputBuffer.data);
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 << 8) | (byteBuffer.get(i11) & 255);
        }
        int iM = MpegAudioUtil.m(i10);
        if (iM != -1) {
            long jA = a(format.sampleRate);
            this.processedFrames += (long) iM;
            return jA;
        }
        this.seenInvalidMpegAudioHeader = true;
        this.processedFrames = 0L;
        this.anchorTimestampUs = decoderInputBuffer.timeUs;
        Log.i(TAG, "MPEG audio header is invalid.");
        return decoderInputBuffer.timeUs;
    }

    C2Mp3TimestampTracker() {
    }
}
