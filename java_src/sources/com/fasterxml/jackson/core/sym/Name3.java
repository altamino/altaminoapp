package com.fasterxml.jackson.core.sym;

/* JADX INFO: loaded from: classes9.dex */
public final class Name3 extends Name {
    final int mQuad1;
    final int mQuad2;
    final int mQuad3;

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10, int i11) {
        return false;
    }

    Name3(String str, int i10, int i11, int i12, int i13) {
        super(str, i10);
        this.mQuad1 = i11;
        this.mQuad2 = i12;
        this.mQuad3 = i13;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i10) {
        return i10 == 3 && iArr[0] == this.mQuad1 && iArr[1] == this.mQuad2 && iArr[2] == this.mQuad3;
    }
}
