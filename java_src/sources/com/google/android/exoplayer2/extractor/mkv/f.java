package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.c0;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
final class f {
    private static final int ID_EBML = 440786851;
    private static final int SEARCH_LENGTH = 1024;
    private int peekLength;
    private final c0 scratch = new c0(8);

    private long a(m mVar) throws IOException {
        int i10 = 0;
        mVar.peekFully(this.scratch.d(), 0, 1);
        int i11 = this.scratch.d()[0] & 255;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (~i12);
        mVar.peekFully(this.scratch.d(), 1, i13);
        while (i10 < i13) {
            i10++;
            i14 = (this.scratch.d()[i10] & 255) + (i14 << 8);
        }
        this.peekLength += i13 + 1;
        return i14;
    }

    public boolean b(m mVar) throws IOException {
        long length = mVar.getLength();
        long j6 = 1024;
        if (length != -1 && length <= 1024) {
            j6 = length;
        }
        int i10 = (int) j6;
        mVar.peekFully(this.scratch.d(), 0, 4);
        long jF = this.scratch.F();
        this.peekLength = 4;
        while (jF != 440786851) {
            int i11 = this.peekLength + 1;
            this.peekLength = i11;
            if (i11 == i10) {
                return false;
            }
            mVar.peekFully(this.scratch.d(), 0, 1);
            jF = ((jF << 8) & (-256)) | ((long) (this.scratch.d()[0] & 255));
        }
        long jA = a(mVar);
        long j10 = this.peekLength;
        if (jA == Long.MIN_VALUE) {
            return false;
        }
        if (length != -1 && j10 + jA >= length) {
            return false;
        }
        while (true) {
            int i12 = this.peekLength;
            long j11 = j10 + jA;
            if (i12 < j11) {
                if (a(mVar) == Long.MIN_VALUE) {
                    return false;
                }
                long jA2 = a(mVar);
                if (jA2 < 0 || jA2 > 2147483647L) {
                    return false;
                }
                if (jA2 != 0) {
                    int i13 = (int) jA2;
                    mVar.advancePeekPosition(i13);
                    this.peekLength += i13;
                }
            } else {
                if (i12 != j11) {
                    return false;
                }
                return true;
            }
        }
    }
}
