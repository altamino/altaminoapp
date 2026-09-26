package org.bouncycastle.math.field;

/* JADX INFO: loaded from: classes10.dex */
class c implements e {
    protected final int[] exponents;

    c(int[] iArr) {
        this.exponents = org.bouncycastle.util.a.f(iArr);
    }

    @Override // org.bouncycastle.math.field.e
    public int[] a() {
        return org.bouncycastle.util.a.f(this.exponents);
    }

    @Override // org.bouncycastle.math.field.e
    public int b() {
        int[] iArr = this.exponents;
        return iArr[iArr.length - 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return org.bouncycastle.util.a.c(this.exponents, ((c) obj).exponents);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.p(this.exponents);
    }
}
