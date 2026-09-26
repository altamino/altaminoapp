package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public class k extends b implements x8.d {
    public k() {
        this(128);
    }

    private static int q(int i10) {
        if (i10 == 128 || i10 == 256) {
            return i10;
        }
        throw new IllegalArgumentException("'bitLength' " + i10 + " not supported for SHAKE");
    }

    @Override // org.bouncycastle.crypto.digests.b, x8.c
    public int a(byte[] bArr, int i10) {
        return b(bArr, i10, e());
    }

    @Override // x8.d
    public int b(byte[] bArr, int i10, int i11) {
        int iR = r(bArr, i10, i11);
        o();
        return iR;
    }

    @Override // org.bouncycastle.crypto.digests.b, x8.c
    public String d() {
        return "SHAKE" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.digests.b, x8.c
    public int e() {
        return this.fixedOutputLength / 4;
    }

    public int r(byte[] bArr, int i10, int i11) {
        if (!this.squeezing) {
            k(15, 4);
        }
        p(bArr, i10, ((long) i11) * 8);
        return i11;
    }

    public k(int i10) {
        super(q(i10));
    }

    public k(k kVar) {
        super(kVar);
    }
}
