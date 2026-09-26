package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public class i extends b {
    public i() {
        this(256);
    }

    private static int q(int i10) {
        if (i10 == 224 || i10 == 256 || i10 == 384 || i10 == 512) {
            return i10;
        }
        throw new IllegalArgumentException("'bitLength' " + i10 + " not supported for SHA-3");
    }

    @Override // org.bouncycastle.crypto.digests.b, x8.c
    public int a(byte[] bArr, int i10) {
        k(2, 2);
        return super.a(bArr, i10);
    }

    @Override // org.bouncycastle.crypto.digests.b, x8.c
    public String d() {
        return "SHA3-" + this.fixedOutputLength;
    }

    public i(int i10) {
        super(q(i10));
    }

    public i(i iVar) {
        super(iVar);
    }
}
