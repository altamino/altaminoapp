package androidx.media3.extractor.mp3;

import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.MpegAudioUtil;

/* JADX INFO: loaded from: classes5.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {
    @Override // androidx.media3.extractor.mp3.Seeker
    public long a() {
        return -1L;
    }

    public ConstantBitrateSeeker(long j6, long j10, MpegAudioUtil.Header header, boolean z6) {
        super(j6, j10, header.bitrate, header.frameSize, z6);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j6) {
        return c(j6);
    }
}
