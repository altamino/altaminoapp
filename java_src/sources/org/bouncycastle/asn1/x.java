package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes11.dex */
public class x {
    private OutputStream os;

    x(OutputStream outputStream) {
        this.os = outputStream;
    }

    public static x a(OutputStream outputStream) {
        return new x(outputStream);
    }

    public static x b(OutputStream outputStream, String str) {
        if (str.equals("DER")) {
            return new t1(outputStream);
        }
        return str.equals("DL") ? new i2(outputStream) : new x(outputStream);
    }

    static int f(int i10) {
        if (i10 < 128) {
            return 1;
        }
        int i11 = 2;
        while (true) {
            i10 >>>= 8;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }

    static int g(boolean z6, int i10) {
        return (z6 ? 1 : 0) + f(i10) + i10;
    }

    static int h(int i10) {
        if (i10 < 31) {
            return 1;
        }
        int i11 = 2;
        while (true) {
            i10 >>>= 7;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }

    void c() throws IOException {
    }

    t1 d() {
        return new t1(this.os);
    }

    i2 e() {
        return new i2(this.os);
    }

    final void i(int i10) throws IOException {
        this.os.write(i10);
    }

    final void j(byte[] bArr, int i10, int i11) throws IOException {
        this.os.write(bArr, i10, i11);
    }

    final void k(int i10) throws IOException {
        if (i10 < 128) {
            i(i10);
            return;
        }
        int i11 = 5;
        byte[] bArr = new byte[5];
        while (true) {
            int i12 = i11 - 1;
            bArr[i12] = (byte) i10;
            i10 >>>= 8;
            if (i10 == 0) {
                int i13 = i11 - 2;
                bArr[i13] = (byte) ((5 - i12) | 128);
                j(bArr, i13, 6 - i12);
                return;
            }
            i11 = i12;
        }
    }

    void l(f[] fVarArr) throws IOException {
        for (f fVar : fVarArr) {
            fVar.g().j(this, true);
        }
    }

    final void m(boolean z6, int i10, byte b7) throws IOException {
        s(z6, i10);
        k(1);
        i(b7);
    }

    final void n(boolean z6, int i10, byte b7, byte[] bArr, int i11, int i12) throws IOException {
        s(z6, i10);
        k(i12 + 1);
        i(b7);
        j(bArr, i11, i12);
    }

    final void o(boolean z6, int i10, byte[] bArr) throws IOException {
        s(z6, i10);
        k(bArr.length);
        j(bArr, 0, bArr.length);
    }

    final void p(boolean z6, int i10, byte[] bArr, int i11, int i12) throws IOException {
        s(z6, i10);
        k(i12);
        j(bArr, i11, i12);
    }

    final void q(boolean z6, int i10, byte[] bArr, int i11, int i12, byte b7) throws IOException {
        s(z6, i10);
        k(i12 + 1);
        j(bArr, i11, i12);
        i(b7);
    }

    final void r(boolean z6, int i10, f[] fVarArr) throws IOException {
        s(z6, i10);
        i(128);
        l(fVarArr);
        i(0);
        i(0);
    }

    final void s(boolean z6, int i10) throws IOException {
        if (z6) {
            i(i10);
        }
    }

    final void t(boolean z6, int i10, int i11) throws IOException {
        if (z6) {
            if (i11 < 31) {
                i(i10 | i11);
                return;
            }
            byte[] bArr = new byte[6];
            int i12 = 5;
            bArr[5] = (byte) (i11 & 127);
            while (i11 > 127) {
                i11 >>>= 7;
                i12--;
                bArr[i12] = (byte) ((i11 & 127) | 128);
            }
            int i13 = i12 - 1;
            bArr[i13] = (byte) (31 | i10);
            j(bArr, i13, 6 - i13);
        }
    }

    void u(z zVar, boolean z6) throws IOException {
        zVar.j(this, z6);
    }

    void v(z[] zVarArr) throws IOException {
        for (z zVar : zVarArr) {
            zVar.j(this, true);
        }
    }
}
