package com.google.zxing.aztec.encoder;

import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes7.dex */
final class f {
    static final f INITIAL_STATE = new f(g.EMPTY, 0, 0, 0);
    private final int binaryShiftByteCount;
    private final int bitCount;
    private final int mode;
    private final g token;

    int c() {
        return this.binaryShiftByteCount;
    }

    int d() {
        return this.bitCount;
    }

    int e() {
        return this.mode;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", d.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }

    f a(int i10) {
        int i11;
        g gVarA = this.token;
        int i12 = this.mode;
        int i13 = this.bitCount;
        if (i12 == 4 || i12 == 2) {
            int i14 = d.LATCH_TABLE[i12][0];
            int i15 = 65535 & i14;
            int i16 = i14 >> 16;
            gVarA = gVarA.a(i15, i16);
            i13 += i16;
            i12 = 0;
        }
        int i17 = this.binaryShiftByteCount;
        if (i17 == 0 || i17 == 31) {
            i11 = 18;
        } else {
            i11 = i17 == 62 ? 9 : 8;
        }
        f fVar = new f(gVarA, i12, i17 + 1, i13 + i11);
        return fVar.binaryShiftByteCount == 2078 ? fVar.b(i10 + 1) : fVar;
    }

    f b(int i10) {
        int i11 = this.binaryShiftByteCount;
        return i11 == 0 ? this : new f(this.token.b(i10 - i11, i11), this.mode, 0, this.bitCount);
    }

    boolean f(f fVar) {
        int i10;
        int i11 = this.bitCount + (d.LATCH_TABLE[this.mode][fVar.mode] >> 16);
        int i12 = fVar.binaryShiftByteCount;
        if (i12 > 0 && ((i10 = this.binaryShiftByteCount) == 0 || i10 > i12)) {
            i11 += 10;
        }
        return i11 <= fVar.bitCount;
    }

    f g(int i10, int i11) {
        int i12 = this.bitCount;
        g gVarA = this.token;
        int i13 = this.mode;
        if (i10 != i13) {
            int i14 = d.LATCH_TABLE[i13][i10];
            int i15 = 65535 & i14;
            int i16 = i14 >> 16;
            gVarA = gVarA.a(i15, i16);
            i12 += i16;
        }
        int i17 = i10 == 2 ? 4 : 5;
        return new f(gVarA.a(i11, i17), i10, 0, i12 + i17);
    }

    f h(int i10, int i11) {
        g gVar = this.token;
        int i12 = this.mode;
        int i13 = i12 == 2 ? 4 : 5;
        return new f(gVar.a(d.SHIFT_TABLE[i12][i10], i13).a(i11, 5), this.mode, 0, this.bitCount + i13 + 5);
    }

    g5.a i(byte[] bArr) {
        LinkedList linkedList = new LinkedList();
        for (g gVarD = b(bArr.length).token; gVarD != null; gVarD = gVarD.d()) {
            linkedList.addFirst(gVarD);
        }
        g5.a aVar = new g5.a();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((g) it.next()).c(aVar, bArr);
        }
        return aVar;
    }

    private f(g gVar, int i10, int i11, int i12) {
        this.token = gVar;
        this.mode = i10;
        this.binaryShiftByteCount = i11;
        this.bitCount = i12;
    }
}
