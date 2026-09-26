package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes11.dex */
public class o extends FilterInputStream {
    private final boolean lazyEvaluate;
    private final int limit;
    private final byte[][] tmpBuffers;

    public o(InputStream inputStream) {
        this(inputStream, x2.a(inputStream));
    }

    static z e(int i10, q2 q2Var, byte[][] bArr) throws IOException {
        switch (i10) {
            case 1:
                return e.w(g(q2Var, bArr));
            case 2:
                return p.w(q2Var.k());
            case 3:
                return c.w(q2Var.k());
            case 4:
                return v.w(q2Var.k());
            case 5:
                return q.w(q2Var.k());
            case 6:
                return u.x(g(q2Var, bArr), true);
            case 7:
                return t.w(q2Var.k());
            case 8:
            case 9:
            case 11:
            case 14:
            case 15:
            case 16:
            case 17:
            case 29:
            default:
                throw new IOException("unknown tag " + i10 + " encountered");
            case 10:
                return h.w(g(q2Var, bArr), true);
            case 12:
                return k0.w(q2Var.k());
            case 13:
                return b0.w(q2Var.k(), false);
            case 18:
                return r.w(q2Var.k());
            case 19:
                return a0.w(q2Var.k());
            case 20:
                return f0.w(q2Var.k());
            case 21:
                return o0.w(q2Var.k());
            case 22:
                return n.w(q2Var.k());
            case 23:
                return j0.w(q2Var.k());
            case 24:
                return l.z(q2Var.k());
            case 25:
                return m.w(q2Var.k());
            case 26:
                return p0.w(q2Var.k());
            case 27:
                return k.w(q2Var.k());
            case 28:
                return l0.w(q2Var.k());
            case 30:
                return b.x(f(q2Var));
        }
    }

    private static char[] f(q2 q2Var) throws IOException {
        int iH = q2Var.h();
        if ((iH & 1) != 0) {
            throw new IOException("malformed BMPString encoding encountered");
        }
        int i10 = iH / 2;
        char[] cArr = new char[i10];
        byte[] bArr = new byte[8];
        int i11 = 0;
        int i12 = 0;
        while (iH >= 8) {
            if (v9.a.d(q2Var, bArr, 0, 8) != 8) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            cArr[i12] = (char) ((bArr[0] << 8) | (bArr[1] & 255));
            cArr[i12 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & 255));
            cArr[i12 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & 255));
            cArr[i12 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & 255));
            i12 += 4;
            iH -= 8;
        }
        if (iH > 0) {
            if (v9.a.d(q2Var, bArr, 0, iH) != iH) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            do {
                int i13 = i11 + 1;
                int i14 = bArr[i11] << 8;
                i11 += 2;
                cArr[i12] = (char) ((bArr[i13] & 255) | i14);
                i12++;
            } while (i11 < iH);
        }
        if (q2Var.h() == 0 && i10 == i12) {
            return cArr;
        }
        throw new IllegalStateException();
    }

    private static byte[] g(q2 q2Var, byte[][] bArr) throws IOException {
        int iH = q2Var.h();
        if (iH >= bArr.length) {
            return q2Var.k();
        }
        byte[] bArr2 = bArr[iH];
        if (bArr2 == null) {
            bArr2 = new byte[iH];
            bArr[iH] = bArr2;
        }
        q2Var.i(bArr2);
        return bArr2;
    }

    static int l(InputStream inputStream, int i10, boolean z6) throws IOException {
        int i11 = inputStream.read();
        if ((i11 >>> 7) == 0) {
            return i11;
        }
        if (128 == i11) {
            return -1;
        }
        if (i11 < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (255 == i11) {
            throw new IOException("invalid long form definite-length 0xFF");
        }
        int i12 = i11 & 127;
        int i13 = 0;
        int i14 = 0;
        do {
            int i15 = inputStream.read();
            if (i15 < 0) {
                throw new EOFException("EOF found reading length");
            }
            if ((i13 >>> 23) != 0) {
                throw new IOException("long form definite-length more than 31 bits");
            }
            i13 = (i13 << 8) + i15;
            i14++;
        } while (i14 < i12);
        if (i13 < i10 || z6) {
            return i13;
        }
        throw new IOException("corrupted stream - out of bounds length found: " + i13 + " >= " + i10);
    }

    static int n(InputStream inputStream, int i10) throws IOException {
        int i11 = i10 & 31;
        if (i11 != 31) {
            return i11;
        }
        int i12 = inputStream.read();
        if (i12 < 31) {
            if (i12 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            throw new IOException("corrupted stream - high tag number < 31 found");
        }
        if ((i12 & 127) == 0) {
            throw new IOException("corrupted stream - invalid high tag number found");
        }
        int i13 = 0;
        while ((i12 & 128) != 0) {
            if ((i13 >>> 24) != 0) {
                throw new IOException("Tag number more than 31 bits");
            }
            i13 = ((i12 & 127) | i13) << 7;
            i12 = inputStream.read();
            if (i12 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
        }
        return i13 | (i12 & 127);
    }

    c a(g gVar) throws IOException {
        int iF = gVar.f();
        c[] cVarArr = new c[iF];
        for (int i10 = 0; i10 != iF; i10++) {
            f fVarD = gVar.d(i10);
            if (!(fVarD instanceof c)) {
                throw new i("unknown object encountered in constructed BIT STRING: " + fVarD.getClass());
            }
            cVarArr[i10] = (c) fVarD;
        }
        return new s0(cVarArr);
    }

    v b(g gVar) throws IOException {
        int iF = gVar.f();
        v[] vVarArr = new v[iF];
        for (int i10 = 0; i10 != iF; i10++) {
            f fVarD = gVar.d(i10);
            if (!(fVarD instanceof v)) {
                throw new i("unknown object encountered in constructed OCTET STRING: " + fVarD.getClass());
            }
            vVarArr[i10] = (v) fVarD;
        }
        return new v0(vVarArr);
    }

    protected z d(int i10, int i11, int i12) throws IOException {
        q2 q2Var = new q2(this, i12, this.limit);
        if ((i10 & 224) == 0) {
            return e(i11, q2Var, this.tmpBuffers);
        }
        int i13 = i10 & 192;
        if (i13 != 0) {
            return o(i13, i11, (i10 & 32) != 0, q2Var);
        }
        if (i11 == 3) {
            return a(q(q2Var));
        }
        if (i11 == 4) {
            return b(q(q2Var));
        }
        if (i11 == 8) {
            return h2.a(q(q2Var)).C();
        }
        if (i11 == 16) {
            if (q2Var.h() < 1) {
                return h2.EMPTY_SEQUENCE;
            }
            return this.lazyEvaluate ? new u2(q2Var.k()) : h2.a(q(q2Var));
        }
        if (i11 == 17) {
            return h2.b(q(q2Var));
        }
        throw new IOException("unknown tag " + i11 + " encountered");
    }

    int h() {
        return this.limit;
    }

    protected int k() throws IOException {
        return l(this, this.limit, false);
    }

    public z m() throws IOException {
        int i10 = read();
        if (i10 <= 0) {
            if (i10 != 0) {
                return null;
            }
            throw new IOException("unexpected end-of-contents marker");
        }
        int iN = n(this, i10);
        int iK = k();
        if (iK >= 0) {
            try {
                return d(i10, iN, iK);
            } catch (IllegalArgumentException e) {
                throw new i("corrupted stream detected", e);
            }
        }
        if ((i10 & 32) == 0) {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        e0 e0Var = new e0(new s2(this, this.limit), this.limit, this.tmpBuffers);
        int i11 = i10 & 192;
        if (i11 != 0) {
            return e0Var.c(i11, iN);
        }
        if (iN == 3) {
            return t0.a(e0Var);
        }
        if (iN == 4) {
            return w0.a(e0Var);
        }
        if (iN == 8) {
            return j1.a(e0Var);
        }
        if (iN == 16) {
            return y0.a(e0Var);
        }
        if (iN == 17) {
            return a1.a(e0Var);
        }
        throw new IOException("unknown BER object encountered");
    }

    z o(int i10, int i11, boolean z6, q2 q2Var) throws IOException {
        return !z6 ? h0.z(i10, i11, q2Var.k()) : h0.x(i10, i11, q(q2Var));
    }

    g p() throws IOException {
        z zVarM = m();
        if (zVarM == null) {
            return new g(0);
        }
        g gVar = new g();
        do {
            gVar.a(zVarM);
            zVarM = m();
        } while (zVarM != null);
        return gVar;
    }

    g q(q2 q2Var) throws IOException {
        int iH = q2Var.h();
        return iH < 1 ? new g(0) : new o(q2Var, iH, this.lazyEvaluate, this.tmpBuffers).p();
    }

    public o(InputStream inputStream, int i10) {
        this(inputStream, i10, false);
    }

    public o(InputStream inputStream, int i10, boolean z6) {
        this(inputStream, i10, z6, new byte[11][]);
    }

    private o(InputStream inputStream, int i10, boolean z6, byte[][] bArr) {
        super(inputStream);
        this.limit = i10;
        this.lazyEvaluate = z6;
        this.tmpBuffers = bArr;
    }

    public o(InputStream inputStream, boolean z6) {
        this(inputStream, x2.a(inputStream), z6);
    }

    public o(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public o(byte[] bArr, boolean z6) {
        this(new ByteArrayInputStream(bArr), bArr.length, z6);
    }
}
