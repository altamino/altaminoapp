package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.h0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;

/* JADX INFO: loaded from: classes10.dex */
final class h implements g {
    private static final String TAG = "VbriSeeker";
    private final long dataEndPosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long a() {
        return this.dataEndPosition;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return true;
    }

    @Nullable
    public static h b(long j6, long j10, h0.a aVar, c0 c0Var) {
        int iD;
        c0Var.Q(10);
        int iN = c0Var.n();
        if (iN <= 0) {
            return null;
        }
        int i10 = aVar.sampleRate;
        long jF0 = o0.F0(iN, ((long) (i10 >= 32000 ? 1152 : 576)) * 1000000, i10);
        int iJ = c0Var.J();
        int iJ2 = c0Var.J();
        int iJ3 = c0Var.J();
        c0Var.Q(2);
        long j11 = j10 + ((long) aVar.frameSize);
        long[] jArr = new long[iJ];
        long[] jArr2 = new long[iJ];
        int i11 = 0;
        long j12 = j10;
        while (i11 < iJ) {
            int i12 = iJ2;
            long j13 = j11;
            jArr[i11] = (((long) i11) * jF0) / ((long) iJ);
            jArr2[i11] = Math.max(j12, j13);
            if (iJ3 == 1) {
                iD = c0Var.D();
            } else if (iJ3 == 2) {
                iD = c0Var.J();
            } else if (iJ3 == 3) {
                iD = c0Var.G();
            } else {
                if (iJ3 != 4) {
                    return null;
                }
                iD = c0Var.H();
            }
            j12 += ((long) iD) * ((long) i12);
            i11++;
            jArr = jArr;
            iJ2 = i12;
            j11 = j13;
        }
        long[] jArr3 = jArr;
        if (j6 != -1 && j6 != j12) {
            t.i(TAG, "VBRI data size mismatch: " + j6 + ", " + j12);
        }
        return new h(jArr3, jArr2, jF0, j12);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        int i10 = o0.i(this.timesUs, j6, true, true);
        com.google.android.exoplayer2.extractor.c0 c0Var = new com.google.android.exoplayer2.extractor.c0(this.timesUs[i10], this.positions[i10]);
        if (c0Var.timeUs >= j6 || i10 == this.timesUs.length - 1) {
            return new b0.a(c0Var);
        }
        int i11 = i10 + 1;
        return new b0.a(c0Var, new com.google.android.exoplayer2.extractor.c0(this.timesUs[i11], this.positions[i11]));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long getTimeUs(long j6) {
        return this.timesUs[o0.i(this.positions, j6, true, true)];
    }

    private h(long[] jArr, long[] jArr2, long j6, long j10) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j6;
        this.dataEndPosition = j10;
    }
}
