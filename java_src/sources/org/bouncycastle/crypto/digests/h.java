package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public class h extends c {
    private static final int DIGEST_LENGTH = 48;

    public h() {
    }

    @Override // x8.c
    public int a(byte[] bArr, int i10) {
        n();
        org.bouncycastle.util.f.h(this.H1, bArr, i10);
        org.bouncycastle.util.f.h(this.H2, bArr, i10 + 8);
        org.bouncycastle.util.f.h(this.H3, bArr, i10 + 16);
        org.bouncycastle.util.f.h(this.H4, bArr, i10 + 24);
        org.bouncycastle.util.f.h(this.H5, bArr, i10 + 32);
        org.bouncycastle.util.f.h(this.H6, bArr, i10 + 40);
        r();
        return 48;
    }

    @Override // x8.c
    public String d() {
        return "SHA-384";
    }

    @Override // x8.c
    public int e() {
        return 48;
    }

    @Override // org.bouncycastle.crypto.digests.c
    public void r() {
        super.r();
        this.H1 = -3766243637369397544L;
        this.H2 = 7105036623409894663L;
        this.H3 = -7973340178411365097L;
        this.H4 = 1526699215303891257L;
        this.H5 = 7436329637833083697L;
        this.H6 = -8163818279084223215L;
        this.H7 = -2662702644619276377L;
        this.H8 = 5167115440072839076L;
    }

    public h(h hVar) {
        super(hVar);
    }

    public h(byte[] bArr) {
        s(bArr);
    }
}
