package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class q extends z {
    static final m0 TYPE = new a(q.class, 5);

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return q.w(r1Var.z());
        }
    }

    q() {
    }

    static q w(byte[] bArr) {
        if (bArr.length == 0) {
            return p1.INSTANCE;
        }
        throw new IllegalStateException("malformed NULL encoding encountered");
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        return zVar instanceof q;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return -1;
    }

    public String toString() {
        return "NULL";
    }
}
