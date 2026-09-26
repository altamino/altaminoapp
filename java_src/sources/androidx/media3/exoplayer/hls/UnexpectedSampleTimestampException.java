package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class UnexpectedSampleTimestampException extends IOException {
    public final long lastAcceptedSampleTimeUs;
    public final MediaChunk mediaChunk;
    public final long rejectedSampleTimeUs;

    public UnexpectedSampleTimestampException(MediaChunk mediaChunk, long j6, long j10) {
        super("Unexpected sample timestamp: " + Util.q1(j10) + " in chunk [" + mediaChunk.startTimeUs + ", " + mediaChunk.endTimeUs + "]");
        this.mediaChunk = mediaChunk;
        this.lastAcceptedSampleTimeUs = j6;
        this.rejectedSampleTimeUs = j10;
    }
}
