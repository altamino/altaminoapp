package com.fasterxml.jackson.core.sym;

/* JADX INFO: loaded from: classes9.dex */
public final class Name2 extends Name {
    final int mQuad1;
    final int mQuad2;

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10, int i11) {
        return i10 == this.mQuad1 && i11 == this.mQuad2;
    }

    Name2(String str, int i10, int i11, int i12) {
        super(str, i10);
        this.mQuad1 = i11;
        this.mQuad2 = i12;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i10) {
        return i10 == 2 && iArr[0] == this.mQuad1 && iArr[1] == this.mQuad2;
    }
}
