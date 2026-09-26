package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l0 extends z {
    static final m0 TYPE = new a(l0.class, 28);
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return l0.w(r1Var.z());
        }
    }

    l0(byte[] bArr, boolean z6) {
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
    }

    static l0 w(byte[] bArr) {
        return new a2(bArr, false);
    }

    private static void x(StringBuffer stringBuffer, int i10) {
        char[] cArr = table;
        stringBuffer.append(cArr[(i10 >>> 4) & 15]);
        stringBuffer.append(cArr[i10 & 15]);
    }

    private static void y(StringBuffer stringBuffer, int i10) {
        int i11;
        if (i10 < 128) {
            x(stringBuffer, i10);
            return;
        }
        byte[] bArr = new byte[5];
        int i12 = 5;
        while (true) {
            i11 = i12 - 1;
            bArr[i11] = (byte) i10;
            i10 >>>= 8;
            if (i10 == 0) {
                break;
            } else {
                i12 = i11;
            }
        }
        int i13 = i12 - 2;
        bArr[i13] = (byte) ((5 - i11) | 128);
        while (true) {
            int i14 = i13 + 1;
            x(stringBuffer, bArr[i13]);
            if (i14 >= 5) {
                return;
            } else {
                i13 = i14;
            }
        }
    }

    @Override // org.bouncycastle.asn1.z
    final boolean b(z zVar) {
        if (zVar instanceof l0) {
            return org.bouncycastle.util.a.a(this.contents, ((l0) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public final int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 28, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    final int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    public String toString() {
        return z();
    }

    public final String z() {
        int length = this.contents.length;
        StringBuffer stringBuffer = new StringBuffer(((x.f(length) + length) * 2) + 3);
        stringBuffer.append("#1C");
        y(stringBuffer, length);
        for (int i10 = 0; i10 < length; i10++) {
            x(stringBuffer, this.contents[i10]);
        }
        return stringBuffer.toString();
    }
}
