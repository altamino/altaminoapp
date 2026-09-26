package androidx.media3.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes8.dex */
final class VbriSeeker implements Seeker {
    private static final String TAG = "VbriSeeker";
    private final long dataEndPosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

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
        return true;
    }

    @Nullable
    public static VbriSeeker b(long j6, long j10, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int iH;
        parsableByteArray.V(10);
        int iQ = parsableByteArray.q();
        if (iQ <= 0) {
            return null;
        }
        int i10 = header.sampleRate;
        long jX0 = Util.X0(iQ, ((long) (i10 >= 32000 ? 1152 : 576)) * 1000000, i10);
        int iN = parsableByteArray.N();
        int iN2 = parsableByteArray.N();
        int iN3 = parsableByteArray.N();
        parsableByteArray.V(2);
        long j11 = j10 + ((long) header.frameSize);
        long[] jArr = new long[iN];
        long[] jArr2 = new long[iN];
        int i11 = 0;
        long j12 = j10;
        while (i11 < iN) {
            int i12 = iN2;
            long j13 = j11;
            jArr[i11] = (((long) i11) * jX0) / ((long) iN);
            jArr2[i11] = Math.max(j12, j13);
            if (iN3 == 1) {
                iH = parsableByteArray.H();
            } else if (iN3 == 2) {
                iH = parsableByteArray.N();
            } else if (iN3 == 3) {
                iH = parsableByteArray.K();
            } else {
                if (iN3 != 4) {
                    return null;
                }
                iH = parsableByteArray.L();
            }
            j12 += ((long) iH) * ((long) i12);
            i11++;
            jArr = jArr;
            iN2 = i12;
            j11 = j13;
        }
        long[] jArr3 = jArr;
        if (j6 != -1 && j6 != j12) {
            Log.i(TAG, "VBRI data size mismatch: " + j6 + ", " + j12);
        }
        return new VbriSeeker(jArr3, jArr2, jX0, j12);
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        int i10 = Util.i(this.timesUs, j6, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[i10], this.positions[i10]);
        if (seekPoint.timeUs >= j6 || i10 == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i11 = i10 + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i11], this.positions[i11]));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j6) {
        return this.timesUs[Util.i(this.positions, j6, true, true)];
    }

    private VbriSeeker(long[] jArr, long[] jArr2, long j6, long j10) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j6;
        this.dataEndPosition = j10;
    }
}
