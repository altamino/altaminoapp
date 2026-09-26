package org.bouncycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes6.dex */
public class h extends z {
    static final m0 TYPE = new a(h.class, 10);
    private static final h[] cache = new h[12];
    private final byte[] contents;
    private final int start;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return h.w(r1Var.z(), false);
        }
    }

    public h(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = BigInteger.valueOf(i10).toByteArray();
        this.start = 0;
    }

    static h w(byte[] bArr, boolean z6) {
        if (bArr.length > 1) {
            return new h(bArr, z6);
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int i10 = bArr[0] & 255;
        h[] hVarArr = cache;
        if (i10 >= hVarArr.length) {
            return new h(bArr, z6);
        }
        h hVar = hVarArr[i10];
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h(bArr, z6);
        hVarArr[i10] = hVar2;
        return hVar2;
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof h) {
            return org.bouncycastle.util.a.a(this.contents, ((h) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 10, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    public h(BigInteger bigInteger) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = bigInteger.toByteArray();
        this.start = 0;
    }

    public h(byte[] bArr) {
        this(bArr, true);
    }

    h(byte[] bArr, boolean z6) {
        if (p.D(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        if ((bArr[0] & 128) != 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
        this.start = p.G(bArr);
    }
}
