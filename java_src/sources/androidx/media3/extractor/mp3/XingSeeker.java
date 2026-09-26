package androidx.media3.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes8.dex */
final class XingSeeker implements Seeker {
    private static final String TAG = "XingSeeker";
    private final long dataEndPosition;
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;

    @Nullable
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private XingSeeker(long j6, int i10, long j10) {
        this(j6, i10, j10, -1L, null);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long a() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }

    private XingSeeker(long j6, int i10, long j10, long j11, @Nullable long[] jArr) {
        this.dataStartPosition = j6;
        this.xingFrameSize = i10;
        this.durationUs = j10;
        this.tableOfContents = jArr;
        this.dataSize = j11;
        this.dataEndPosition = j11 != -1 ? j6 + j11 : -1L;
    }

    @Nullable
    public static XingSeeker b(long j6, long j10, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int iL;
        int i10 = header.samplesPerFrame;
        int i11 = header.sampleRate;
        int iQ = parsableByteArray.q();
        if ((iQ & 1) != 1 || (iL = parsableByteArray.L()) == 0) {
            return null;
        }
        long jX0 = Util.X0(iL, ((long) i10) * 1000000, i11);
        if ((iQ & 6) != 6) {
            return new XingSeeker(j10, header.frameSize, jX0);
        }
        long J = parsableByteArray.J();
        long[] jArr = new long[100];
        for (int i12 = 0; i12 < 100; i12++) {
            jArr[i12] = parsableByteArray.H();
        }
        if (j6 != -1) {
            long j11 = j10 + J;
            if (j6 != j11) {
                Log.i(TAG, "XING data size mismatch: " + j6 + ", " + j11);
            }
        }
        return new XingSeeker(j10, header.frameSize, jX0, J, jArr);
    }

    private long c(int i10) {
        return (this.durationUs * ((long) i10)) / 100;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j6) {
        long j10 = j6 - this.dataStartPosition;
        if (!isSeekable() || j10 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) Assertions.i(this.tableOfContents);
        double d = (j10 * 256.0d) / this.dataSize;
        int i10 = Util.i(jArr, (long) d, true, true);
        long jC = c(i10);
        long j11 = jArr[i10];
        int i11 = i10 + 1;
        long jC2 = c(i11);
        long j12 = i10 == 99 ? 256L : jArr[i11];
        return jC + Math.round((j11 == j12 ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : (d - j11) / (j12 - j11)) * (jC2 - jC));
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        double d;
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + ((long) this.xingFrameSize)));
        }
        long jR = Util.r(j6, 0L, this.durationUs);
        double d2 = (jR * 100.0d) / this.durationUs;
        double d6 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        if (d2 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            if (d2 >= 100.0d) {
                d6 = 256.0d;
            } else {
                int i10 = (int) d2;
                long[] jArr = (long[]) Assertions.i(this.tableOfContents);
                double d7 = jArr[i10];
                if (i10 == 99) {
                    d = 256.0d;
                } else {
                    d = jArr[i10 + 1];
                }
                d6 = d7 + ((d2 - ((double) i10)) * (d - d7));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(jR, this.dataStartPosition + Util.r(Math.round((d6 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }
}
