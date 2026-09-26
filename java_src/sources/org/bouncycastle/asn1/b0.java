package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes7.dex */
public class b0 extends z {
    private static final long LONG_LIMIT = 72057594037927808L;
    static final m0 TYPE = new a(b0.class, 13);
    private byte[] contents;
    private final String identifier;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return b0.w(r1Var.z(), false);
        }
    }

    public b0(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (A(str, 0)) {
            this.identifier = str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not a relative OID");
    }

    static boolean A(String str, int i10) {
        int length = str.length();
        int i11 = 0;
        while (true) {
            int i12 = length - 1;
            if (i12 < i10) {
                return i11 != 0 && (i11 <= 1 || str.charAt(length) != '0');
            }
            char cCharAt = str.charAt(i12);
            if (cCharAt == '.') {
                if (i11 == 0 || (i11 > 1 && str.charAt(length) == '0')) {
                    return false;
                }
                i11 = 0;
            } else {
                if ('0' > cCharAt || cCharAt > '9') {
                    return false;
                }
                i11++;
            }
            length = i12;
        }
    }

    static void B(ByteArrayOutputStream byteArrayOutputStream, long j6) {
        byte[] bArr = new byte[9];
        int i10 = 8;
        bArr[8] = (byte) (((int) j6) & 127);
        while (j6 >= 128) {
            j6 >>= 7;
            i10--;
            bArr[i10] = (byte) (((int) j6) | 128);
        }
        byteArrayOutputStream.write(bArr, i10, 9 - i10);
    }

    static void C(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int iBitLength = (bigInteger.bitLength() + 6) / 7;
        if (iBitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[iBitLength];
        int i10 = iBitLength - 1;
        for (int i11 = i10; i11 >= 0; i11--) {
            bArr[i11] = (byte) (bigInteger.intValue() | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i10] = (byte) (bArr[i10] & 127);
        byteArrayOutputStream.write(bArr, 0, iBitLength);
    }

    static b0 w(byte[] bArr, boolean z6) {
        return new b0(bArr, z6);
    }

    private void x(ByteArrayOutputStream byteArrayOutputStream) {
        w2 w2Var = new w2(this.identifier);
        while (w2Var.a()) {
            String strB = w2Var.b();
            if (strB.length() <= 18) {
                B(byteArrayOutputStream, Long.parseLong(strB));
            } else {
                C(byteArrayOutputStream, new BigInteger(strB));
            }
        }
    }

    private synchronized byte[] y() {
        try {
            if (this.contents == null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                x(byteArrayOutputStream);
                this.contents = byteArrayOutputStream.toByteArray();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.contents;
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (this == zVar) {
            return true;
        }
        if (zVar instanceof b0) {
            return this.identifier.equals(((b0) zVar).identifier);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return this.identifier.hashCode();
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 13, y());
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, y().length);
    }

    public String toString() {
        return z();
    }

    public String z() {
        return this.identifier;
    }

    private b0(byte[] bArr, boolean z6) {
        byte[] bArr2 = bArr;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        BigInteger bigIntegerShiftLeft = null;
        long j6 = 0;
        for (int i10 = 0; i10 != bArr2.length; i10++) {
            byte b7 = bArr2[i10];
            if (j6 <= LONG_LIMIT) {
                long j10 = j6 + ((long) (b7 & 127));
                if ((b7 & 128) == 0) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(j10);
                    j6 = 0;
                } else {
                    j6 = j10 << 7;
                }
            } else {
                BigInteger bigIntegerOr = (bigIntegerShiftLeft == null ? BigInteger.valueOf(j6) : bigIntegerShiftLeft).or(BigInteger.valueOf(b7 & 127));
                if ((b7 & 128) == 0) {
                    if (z10) {
                        z10 = false;
                    } else {
                        stringBuffer.append('.');
                    }
                    stringBuffer.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j6 = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        this.identifier = stringBuffer.toString();
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr2;
    }
}
