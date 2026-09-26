package org.bouncycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
public class p extends z {
    static final int SIGN_EXT_SIGNED = -1;
    static final int SIGN_EXT_UNSIGNED = 255;
    static final m0 TYPE = new a(p.class, 2);
    private final byte[] bytes;
    private final int start;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return p.w(r1Var.z());
        }
    }

    public p(long j6) {
        this.bytes = BigInteger.valueOf(j6).toByteArray();
        this.start = 0;
    }

    static int B(byte[] bArr, int i10, int i11) {
        int length = bArr.length;
        int iMax = Math.max(i10, length - 4);
        int i12 = i11 & bArr[iMax];
        while (true) {
            iMax++;
            if (iMax >= length) {
                return i12;
            }
            i12 = (i12 << 8) | (bArr[iMax] & 255);
        }
    }

    static boolean D(byte[] bArr) {
        int length = bArr.length;
        if (length == 0) {
            return true;
        }
        if (length != 1) {
            return bArr[0] == (bArr[1] >> 7) && !org.bouncycastle.util.g.b("org.bouncycastle.asn1.allow_unsafe_integer");
        }
        return false;
    }

    static long E(byte[] bArr, int i10, int i11) {
        int length = bArr.length;
        int iMax = Math.max(i10, length - 8);
        long j6 = i11 & bArr[iMax];
        while (true) {
            iMax++;
            if (iMax >= length) {
                return j6;
            }
            j6 = (j6 << 8) | ((long) (bArr[iMax] & 255));
        }
    }

    static int G(byte[] bArr) {
        int length = bArr.length - 1;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            if (bArr[i10] != (bArr[i11] >> 7)) {
                break;
            }
            i10 = i11;
        }
        return i10;
    }

    static p w(byte[] bArr) {
        return new p(bArr, false);
    }

    public static p x(Object obj) {
        if (obj == null || (obj instanceof p)) {
            return (p) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (p) TYPE.b((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    public static p y(h0 h0Var, boolean z6) {
        return (p) TYPE.e(h0Var, z6);
    }

    public boolean A(int i10) {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i11 = this.start;
        return length - i11 <= 4 && B(bArr, i11, -1) == i10;
    }

    public int C() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i10 = this.start;
        if (length - i10 <= 4) {
            return B(bArr, i10, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long F() {
        byte[] bArr = this.bytes;
        int length = bArr.length;
        int i10 = this.start;
        if (length - i10 <= 8) {
            return E(bArr, i10, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of long range");
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof p) {
            return org.bouncycastle.util.a.a(this.bytes, ((p) zVar).bytes);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return org.bouncycastle.util.a.m(this.bytes);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 2, this.bytes);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.bytes.length);
    }

    public String toString() {
        return z().toString();
    }

    public BigInteger z() {
        return new BigInteger(this.bytes);
    }

    public p(BigInteger bigInteger) {
        this.bytes = bigInteger.toByteArray();
        this.start = 0;
    }

    public p(byte[] bArr) {
        this(bArr, true);
    }

    p(byte[] bArr, boolean z6) {
        if (D(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.bytes = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
        this.start = G(bArr);
    }
}
