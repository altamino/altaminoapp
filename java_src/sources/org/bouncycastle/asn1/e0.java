package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class e0 {
    private final InputStream _in;
    private final int _limit;
    private final byte[][] tmpBuffers;

    public e0(InputStream inputStream) {
        this(inputStream, x2.a(inputStream));
    }

    private void i(boolean z6) {
        InputStream inputStream = this._in;
        if (inputStream instanceof s2) {
            ((s2) inputStream).i(z6);
        }
    }

    f a(int i10) throws IOException {
        i(false);
        int iN = o.n(this._in, i10);
        int iL = o.l(this._in, this._limit, iN == 3 || iN == 4 || iN == 16 || iN == 17 || iN == 8);
        if (iL < 0) {
            if ((i10 & 32) == 0) {
                throw new IOException("indefinite-length primitive encoding encountered");
            }
            e0 e0Var = new e0(new s2(this._in, this._limit), this._limit, this.tmpBuffers);
            int i11 = i10 & 192;
            if (i11 != 0) {
                return 64 == i11 ? new r0(iN, e0Var) : new c1(i11, iN, e0Var);
            }
            return e0Var.e(iN);
        }
        q2 q2Var = new q2(this._in, iL, this._limit);
        if ((i10 & 224) == 0) {
            return f(iN, q2Var);
        }
        e0 e0Var2 = new e0(q2Var, q2Var.d(), this.tmpBuffers);
        int i12 = i10 & 192;
        if (i12 == 0) {
            return e0Var2.d(iN);
        }
        boolean z6 = (i10 & 32) != 0;
        return 64 == i12 ? (d2) e0Var2.b(i12, iN, z6) : new o2(i12, iN, z6, e0Var2);
    }

    z b(int i10, int i11, boolean z6) throws IOException {
        return !z6 ? h0.z(i10, i11, ((q2) this._in).k()) : h0.x(i10, i11, h());
    }

    z c(int i10, int i11) throws IOException {
        return h0.y(i10, i11, h());
    }

    f d(int i10) throws IOException {
        if (i10 == 3) {
            return new t0(this);
        }
        if (i10 == 4) {
            return new w0(this);
        }
        if (i10 == 8) {
            return new j1(this);
        }
        if (i10 == 16) {
            return new k2(this);
        }
        if (i10 == 17) {
            return new m2(this);
        }
        throw new i("unknown DL object encountered: 0x" + Integer.toHexString(i10));
    }

    f e(int i10) throws IOException {
        if (i10 == 3) {
            return new t0(this);
        }
        if (i10 == 4) {
            return new w0(this);
        }
        if (i10 == 8) {
            return new j1(this);
        }
        if (i10 == 16) {
            return new y0(this);
        }
        if (i10 == 17) {
            return new a1(this);
        }
        throw new i("unknown BER object encountered: 0x" + Integer.toHexString(i10));
    }

    f f(int i10, q2 q2Var) throws IOException {
        if (i10 == 3) {
            return new f2(q2Var);
        }
        if (i10 == 4) {
            return new s1(q2Var);
        }
        if (i10 == 8) {
            throw new i("externals must use constructed encoding (see X.690 8.18)");
        }
        if (i10 == 16) {
            throw new i("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
        }
        if (i10 == 17) {
            throw new i("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
        }
        try {
            return o.e(i10, q2Var, this.tmpBuffers);
        } catch (IllegalArgumentException e) {
            throw new i("corrupted stream detected", e);
        }
    }

    public f g() throws IOException {
        int i10 = this._in.read();
        if (i10 < 0) {
            return null;
        }
        return a(i10);
    }

    g h() throws IOException {
        int i10 = this._in.read();
        if (i10 < 0) {
            return new g(0);
        }
        g gVar = new g();
        do {
            f fVarA = a(i10);
            gVar.a(fVarA instanceof r2 ? ((r2) fVarA).c() : fVarA.g());
            i10 = this._in.read();
        } while (i10 >= 0);
        return gVar;
    }

    public e0(InputStream inputStream, int i10) {
        this(inputStream, i10, new byte[11][]);
    }

    e0(InputStream inputStream, int i10, byte[][] bArr) {
        this._in = inputStream;
        this._limit = i10;
        this.tmpBuffers = bArr;
    }

    public e0(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }
}
