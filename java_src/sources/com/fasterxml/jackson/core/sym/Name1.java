package com.fasterxml.jackson.core.sym;

/* JADX INFO: loaded from: classes9.dex */
public final class Name1 extends Name {
    static final Name1 sEmptyName = new Name1("", 0, 0);
    final int mQuad;

    static Name1 getEmptyName() {
        return sEmptyName;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10) {
        return i10 == this.mQuad;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10, int i11) {
        return i10 == this.mQuad && i11 == 0;
    }

    Name1(String str, int i10, int i11) {
        super(str, i10);
        this.mQuad = i11;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i10) {
        return i10 == 1 && iArr[0] == this.mQuad;
    }
}
