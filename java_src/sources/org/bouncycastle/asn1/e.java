package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class e extends z {
    private static final byte FALSE_VALUE = 0;
    private static final byte TRUE_VALUE = -1;
    private final byte value;
    static final m0 TYPE = new a(e.class, 1);
    public static final e FALSE = new e((byte) 0);
    public static final e TRUE = new e((byte) -1);

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return e.w(r1Var.z());
        }
    }

    private e(byte b7) {
        this.value = b7;
    }

    static e w(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
        }
        byte b7 = bArr[0];
        if (b7 != -1) {
            return b7 != 0 ? new e(b7) : FALSE;
        }
        return TRUE;
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        return (zVar instanceof e) && x() == ((e) zVar).x();
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return x() ? 1 : 0;
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.m(z6, 1, this.value);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, 1);
    }

    public String toString() {
        return x() ? "TRUE" : "FALSE";
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return x() ? TRUE : FALSE;
    }

    public boolean x() {
        return this.value != 0;
    }
}
