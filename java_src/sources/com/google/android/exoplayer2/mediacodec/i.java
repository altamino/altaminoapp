package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.audio.h0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class i {
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

    public long b(a2 a2Var) {
        return a(a2Var.sampleRate);
    }

    public long d(a2 a2Var, com.google.android.exoplayer2.decoder.g gVar) {
        if (this.processedFrames == 0) {
            this.anchorTimestampUs = gVar.timeUs;
        }
        if (this.seenInvalidMpegAudioHeader) {
            return gVar.timeUs;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(gVar.data);
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 << 8) | (byteBuffer.get(i11) & 255);
        }
        int iM = h0.m(i10);
        if (iM != -1) {
            long jA = a(a2Var.sampleRate);
            this.processedFrames += (long) iM;
            return jA;
        }
        this.seenInvalidMpegAudioHeader = true;
        this.processedFrames = 0L;
        this.anchorTimestampUs = gVar.timeUs;
        com.google.android.exoplayer2.util.t.i(TAG, "MPEG audio header is invalid.");
        return gVar.timeUs;
    }

    i() {
    }
}
