package org.bouncycastle.pqc.crypto.lms;

/* JADX INFO: loaded from: classes5.dex */
class s {
    private final byte[] I;
    private final x8.c digest;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3304j;
    private final byte[] masterSeed;
    private int q;

    public s(byte[] bArr, byte[] bArr2, x8.c cVar) {
        this.I = bArr;
        this.masterSeed = bArr2;
        this.digest = cVar;
    }

    public void a(byte[] bArr, boolean z6) {
        b(bArr, z6, 0);
    }

    public void b(byte[] bArr, boolean z6, int i10) {
        c(bArr, i10);
        if (z6) {
            this.f3304j++;
        }
    }

    public byte[] c(byte[] bArr, int i10) {
        if (bArr.length < this.digest.e()) {
            throw new IllegalArgumentException("target length is less than digest size.");
        }
        x8.c cVar = this.digest;
        byte[] bArr2 = this.I;
        cVar.update(bArr2, 0, bArr2.length);
        this.digest.c((byte) (this.q >>> 24));
        this.digest.c((byte) (this.q >>> 16));
        this.digest.c((byte) (this.q >>> 8));
        this.digest.c((byte) this.q);
        this.digest.c((byte) (this.f3304j >>> 8));
        this.digest.c((byte) this.f3304j);
        this.digest.c((byte) -1);
        x8.c cVar2 = this.digest;
        byte[] bArr3 = this.masterSeed;
        cVar2.update(bArr3, 0, bArr3.length);
        this.digest.a(bArr, i10);
        return bArr;
    }

    public void d(int i10) {
        this.f3304j = i10;
    }

    public void e(int i10) {
        this.q = i10;
    }
}
