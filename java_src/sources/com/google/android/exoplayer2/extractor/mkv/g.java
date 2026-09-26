package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.m;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
final class g {
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_READ_CONTENTS = 1;
    private static final long[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private final byte[] scratch = new byte[8];
    private int state;

    public static long a(byte[] bArr, int i10, boolean z6) {
        long j6 = ((long) bArr[0]) & 255;
        if (z6) {
            j6 &= ~VARINT_LENGTH_MASKS[i10 - 1];
        }
        for (int i11 = 1; i11 < i10; i11++) {
            j6 = (j6 << 8) | (((long) bArr[i11]) & 255);
        }
        return j6;
    }

    public static int c(int i10) {
        int i11 = 0;
        while (true) {
            long[] jArr = VARINT_LENGTH_MASKS;
            if (i11 >= jArr.length) {
                return -1;
            }
            if ((jArr[i11] & ((long) i10)) != 0) {
                return i11 + 1;
            }
            i11++;
        }
    }

    public int b() {
        return this.length;
    }

    public void e() {
        this.state = 0;
        this.length = 0;
    }

    public long d(m mVar, boolean z6, boolean z10, int i10) throws IOException {
        if (this.state == 0) {
            if (!mVar.readFully(this.scratch, 0, 1, z6)) {
                return -1L;
            }
            int iC = c(this.scratch[0] & 255);
            this.length = iC;
            if (iC == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        int i11 = this.length;
        if (i11 > i10) {
            this.state = 0;
            return -2L;
        }
        if (i11 != 1) {
            mVar.readFully(this.scratch, 1, i11 - 1);
        }
        this.state = 0;
        return a(this.scratch, this.length, z10);
    }
}
