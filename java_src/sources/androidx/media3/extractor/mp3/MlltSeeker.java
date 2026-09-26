package androidx.media3.extractor.mp3;

import android.util.Pair;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.metadata.id3.MlltFrame;

/* JADX INFO: loaded from: classes10.dex */
final class MlltSeeker implements Seeker {
    private final long durationUs;
    private final long[] referencePositions;
    private final long[] referenceTimesMs;

    private static Pair<Long, Long> c(long j6, long[] jArr, long[] jArr2) {
        int i10 = Util.i(jArr, j6, true, true);
        long j10 = jArr[i10];
        long j11 = jArr2[i10];
        int i11 = i10 + 1;
        if (i11 == jArr.length) {
            return Pair.create(Long.valueOf(j10), Long.valueOf(j11));
        }
        long j12 = jArr[i11];
        return Pair.create(Long.valueOf(j6), Long.valueOf(((long) ((j12 == j10 ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : (j6 - j10) / (j12 - j10)) * (jArr2[i11] - j11))) + j11));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long a() {
        return -1L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public static MlltSeeker b(long j6, MlltFrame mlltFrame, long j10) {
        int length = mlltFrame.bytesDeviations.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j6;
        long j11 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j6 += (long) (mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i12]);
            j11 += (long) (mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i12]);
            jArr[i11] = j6;
            jArr2[i11] = j11;
        }
        return new MlltSeeker(jArr, jArr2, j10);
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        Pair<Long, Long> pairC = c(Util.q1(Util.r(j6, 0L, this.durationUs)), this.referenceTimesMs, this.referencePositions);
        return new SeekMap.SeekPoints(new SeekPoint(Util.K0(((Long) pairC.first).longValue()), ((Long) pairC.second).longValue()));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j6) {
        return Util.K0(((Long) c(j6, this.referencePositions, this.referenceTimesMs).second).longValue());
    }

    private MlltSeeker(long[] jArr, long[] jArr2, long j6) {
        this.referencePositions = jArr;
        this.referenceTimesMs = jArr2;
        this.durationUs = j6 == -9223372036854775807L ? Util.K0(jArr2[jArr2.length - 1]) : j6;
    }
}
