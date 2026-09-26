package org.bouncycastle.crypto.digests;

import l9.p;

/* JADX INFO: loaded from: classes10.dex */
public class j extends c {
    private static final int DIGEST_LENGTH = 64;

    public j() {
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
        org.bouncycastle.util.f.h(this.H7, bArr, i10 + 48);
        org.bouncycastle.util.f.h(this.H8, bArr, i10 + 56);
        r();
        return 64;
    }

    @Override // x8.c
    public String d() {
        return p.SHA_512;
    }

    @Override // x8.c
    public int e() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.digests.c
    public void r() {
        super.r();
        this.H1 = 7640891576956012808L;
        this.H2 = -4942790177534073029L;
        this.H3 = 4354685564936845355L;
        this.H4 = -6534734903238641935L;
        this.H5 = 5840696475078001361L;
        this.H6 = -7276294671716946913L;
        this.H7 = 2270897969802886507L;
        this.H8 = 6620516959819538809L;
    }

    public j(j jVar) {
        super(jVar);
    }

    public j(byte[] bArr) {
        s(bArr);
    }
}
