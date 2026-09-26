package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c extends z implements d {
    static final m0 TYPE = new a(c.class, 3);
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z c(c0 c0Var) {
            return c0Var.B();
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return c.w(r1Var.z());
        }
    }

    c(byte b7, int i10) {
        if (i10 > 7 || i10 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.contents = new byte[]{(byte) i10, b7};
    }

    public static c A(h0 h0Var, boolean z6) {
        return (c) TYPE.e(h0Var, z6);
    }

    protected static int C(int i10) {
        int i11;
        int i12 = 3;
        while (true) {
            if (i12 < 0) {
                i11 = 0;
                break;
            }
            if (i12 != 0) {
                int i13 = i10 >> (i12 * 8);
                if (i13 != 0) {
                    i11 = i13 & 255;
                    break;
                }
                i12--;
            } else {
                if (i10 != 0) {
                    i11 = i10 & 255;
                    break;
                }
                i12--;
            }
        }
        if (i11 == 0) {
            return 0;
        }
        int i14 = 1;
        while (true) {
            i11 <<= 1;
            if ((i11 & 255) == 0) {
                return 8 - i14;
            }
            i14++;
        }
    }

    static c w(byte[] bArr) {
        int length = bArr.length;
        if (length < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        int i10 = bArr[0] & 255;
        if (i10 > 0) {
            if (i10 > 7 || length < 2) {
                throw new IllegalArgumentException("invalid pad bits detected");
            }
            byte b7 = bArr[length - 1];
            if (b7 != ((byte) ((255 << i10) & b7))) {
                return new e2(bArr, false);
            }
        }
        return new h1(bArr, false);
    }

    protected static byte[] y(int i10) {
        if (i10 == 0) {
            return new byte[0];
        }
        int i11 = 4;
        for (int i12 = 3; i12 >= 1 && ((255 << (i12 * 8)) & i10) == 0; i12--) {
            i11--;
        }
        byte[] bArr = new byte[i11];
        for (int i13 = 0; i13 < i11; i13++) {
            bArr[i13] = (byte) ((i10 >> (i13 * 8)) & 255);
        }
        return bArr;
    }

    public static c z(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (obj instanceof f) {
            z zVarG = ((f) obj).g();
            if (zVarG instanceof c) {
                return (c) zVarG;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (c) TYPE.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct BIT STRING from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public byte[] B() {
        byte[] bArr = this.contents;
        if (bArr[0] == 0) {
            return org.bouncycastle.util.a.j(bArr, 1, bArr.length);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    public String D() {
        try {
            byte[] encoded = getEncoded();
            StringBuffer stringBuffer = new StringBuffer((encoded.length * 2) + 1);
            stringBuffer.append('#');
            for (int i10 = 0; i10 != encoded.length; i10++) {
                byte b7 = encoded[i10];
                char[] cArr = table;
                stringBuffer.append(cArr[(b7 >>> 4) & 15]);
                stringBuffer.append(cArr[b7 & com.google.common.base.c.SI]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new y("Internal error encoding BitString: " + e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (!(zVar instanceof c)) {
            return false;
        }
        byte[] bArr = this.contents;
        byte[] bArr2 = ((c) zVar).contents;
        int length = bArr.length;
        if (bArr2.length != length) {
            return false;
        }
        if (length == 1) {
            return true;
        }
        int i10 = length - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11] != bArr2[i11]) {
                return false;
            }
        }
        int i12 = 255 << (bArr[0] & 255);
        return ((byte) (bArr[i10] & i12)) == ((byte) (bArr2[i10] & i12));
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() {
        return g();
    }

    @Override // org.bouncycastle.asn1.d
    public InputStream d() throws IOException {
        byte[] bArr = this.contents;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    @Override // org.bouncycastle.asn1.d
    public int f() {
        return this.contents[0] & 255;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        byte[] bArr = this.contents;
        if (bArr.length < 2) {
            return 1;
        }
        int i10 = bArr[0] & 255;
        int length = bArr.length - 1;
        return (org.bouncycastle.util.a.n(bArr, 0, length) * 257) ^ ((byte) ((255 << i10) & bArr[length]));
    }

    public String toString() {
        return D();
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new h1(this.contents, false);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new e2(this.contents, false);
    }

    public byte[] x() {
        byte[] bArr = this.contents;
        if (bArr.length == 1) {
            return v.EMPTY_OCTETS;
        }
        int i10 = bArr[0] & 255;
        byte[] bArrJ = org.bouncycastle.util.a.j(bArr, 1, bArr.length);
        int length = bArrJ.length - 1;
        bArrJ[length] = (byte) (((byte) (255 << i10)) & bArrJ[length]);
        return bArrJ;
    }

    c(byte[] bArr, int i10) {
        if (bArr == null) {
            throw new NullPointerException("'data' cannot be null");
        }
        if (bArr.length == 0 && i10 != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i10 > 7 || i10 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.contents = org.bouncycastle.util.a.u(bArr, (byte) i10);
    }

    c(byte[] bArr, boolean z6) {
        if (z6) {
            if (bArr == null) {
                throw new NullPointerException("'contents' cannot be null");
            }
            if (bArr.length < 1) {
                throw new IllegalArgumentException("'contents' cannot be empty");
            }
            int i10 = bArr[0] & 255;
            if (i10 > 0) {
                if (bArr.length < 2) {
                    throw new IllegalArgumentException("zero length data with non-zero pad bits");
                }
                if (i10 > 7) {
                    throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
                }
            }
        }
        this.contents = bArr;
    }
}
