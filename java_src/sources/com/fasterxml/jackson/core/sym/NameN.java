package com.fasterxml.jackson.core.sym;

/* JADX INFO: loaded from: classes9.dex */
public final class NameN extends Name {
    final int mQuadLen;
    final int[] mQuads;

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10, int i11) {
        return false;
    }

    NameN(String str, int i10, int[] iArr, int i11) {
        super(str, i10);
        if (i11 >= 3) {
            this.mQuads = iArr;
            this.mQuadLen = i11;
            return;
        }
        throw new IllegalArgumentException("Qlen must >= 3");
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i10) {
        if (i10 != this.mQuadLen) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != this.mQuads[i11]) {
                return false;
            }
        }
        return true;
    }
}
