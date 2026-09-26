package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes9.dex */
final class d {
    private static final int MAX_SAMPLE_SIZE = 8192;

    public static final class b {
        public final long duration;
        public final int[] flags;
        public final int maximumSize;
        public final long[] offsets;
        public final int[] sizes;
        public final long[] timestamps;

        private b(long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j6) {
            this.offsets = jArr;
            this.sizes = iArr;
            this.maximumSize = i10;
            this.timestamps = jArr2;
            this.flags = iArr2;
            this.duration = j6;
        }
    }

    public static b a(int i10, long[] jArr, int[] iArr, long j6) {
        int i11 = 8192 / i10;
        int iL = 0;
        for (int i12 : iArr) {
            iL += o0.l(i12, i11);
        }
        long[] jArr2 = new long[iL];
        int[] iArr2 = new int[iL];
        long[] jArr3 = new long[iL];
        int[] iArr3 = new int[iL];
        int i13 = 0;
        int i14 = 0;
        int iMax = 0;
        for (int i15 = 0; i15 < iArr.length; i15++) {
            int i16 = iArr[i15];
            long j10 = jArr[i15];
            while (i16 > 0) {
                int iMin = Math.min(i11, i16);
                jArr2[i14] = j10;
                int i17 = i10 * iMin;
                iArr2[i14] = i17;
                iMax = Math.max(iMax, i17);
                jArr3[i14] = ((long) i13) * j6;
                iArr3[i14] = 1;
                j10 += (long) iArr2[i14];
                i13 += iMin;
                i16 -= iMin;
                i14++;
            }
        }
        return new b(jArr2, iArr2, iMax, jArr3, iArr3, j6 * ((long) i13));
    }
}
