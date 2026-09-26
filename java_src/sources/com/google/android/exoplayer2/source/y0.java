package com.google.android.exoplayer2.source;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public interface y0 {

    public static class a implements y0 {
        private final int[] indexInShuffled;
        private final Random random;
        private final int[] shuffled;

        public a(int i10) {
            this(i10, new Random());
        }

        public a(int i10, long j6) {
            this(i10, new Random(j6));
        }

        private static int[] b(int i10, Random random) {
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                int iNextInt = random.nextInt(i12);
                iArr[i11] = iArr[iNextInt];
                iArr[iNextInt] = i11;
                i11 = i12;
            }
            return iArr;
        }

        @Override // com.google.android.exoplayer2.source.y0
        public y0 a(int i10, int i11) {
            int i12 = i11 - i10;
            int[] iArr = new int[this.shuffled.length - i12];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                int[] iArr2 = this.shuffled;
                if (i13 >= iArr2.length) {
                    return new a(iArr, new Random(this.random.nextLong()));
                }
                int i15 = iArr2[i13];
                if (i15 < i10 || i15 >= i11) {
                    int i16 = i13 - i14;
                    if (i15 >= i10) {
                        i15 -= i12;
                    }
                    iArr[i16] = i15;
                } else {
                    i14++;
                }
                i13++;
            }
        }

        @Override // com.google.android.exoplayer2.source.y0
        public y0 cloneAndClear() {
            return new a(0, new Random(this.random.nextLong()));
        }

        @Override // com.google.android.exoplayer2.source.y0
        public y0 cloneAndInsert(int i10, int i11) {
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int i12 = 0;
            int i13 = 0;
            while (i13 < i11) {
                iArr[i13] = this.random.nextInt(this.shuffled.length + 1);
                int i14 = i13 + 1;
                int iNextInt = this.random.nextInt(i14);
                iArr2[i13] = iArr2[iNextInt];
                iArr2[iNextInt] = i13 + i10;
                i13 = i14;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.shuffled.length + i11];
            int i15 = 0;
            int i16 = 0;
            while (true) {
                int[] iArr4 = this.shuffled;
                if (i12 >= iArr4.length + i11) {
                    return new a(iArr3, new Random(this.random.nextLong()));
                }
                if (i15 >= i11 || i16 != iArr[i15]) {
                    int i17 = i16 + 1;
                    int i18 = iArr4[i16];
                    iArr3[i12] = i18;
                    if (i18 >= i10) {
                        iArr3[i12] = i18 + i11;
                    }
                    i16 = i17;
                } else {
                    iArr3[i12] = iArr2[i15];
                    i15++;
                }
                i12++;
            }
        }

        @Override // com.google.android.exoplayer2.source.y0
        public int getFirstIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.y0
        public int getLastIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.y0
        public int getLength() {
            return this.shuffled.length;
        }

        @Override // com.google.android.exoplayer2.source.y0
        public int getNextIndex(int i10) {
            int i11 = this.indexInShuffled[i10] + 1;
            int[] iArr = this.shuffled;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.y0
        public int getPreviousIndex(int i10) {
            int i11 = this.indexInShuffled[i10] - 1;
            if (i11 >= 0) {
                return this.shuffled[i11];
            }
            return -1;
        }

        public a(int[] iArr, long j6) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j6));
        }

        private a(int i10, Random random) {
            this(b(i10, random), random);
        }

        private a(int[] iArr, Random random) {
            this.shuffled = iArr;
            this.random = random;
            this.indexInShuffled = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.indexInShuffled[iArr[i10]] = i10;
            }
        }
    }

    y0 a(int i10, int i11);

    y0 cloneAndClear();

    y0 cloneAndInsert(int i10, int i11);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i10);

    int getPreviousIndex(int i10);
}
