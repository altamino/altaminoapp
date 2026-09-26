package l9;

/* JADX INFO: loaded from: classes6.dex */
final class k {
    private final h khf;
    private final m params;
    private byte[] publicSeed;
    private byte[] secretKeySeed;

    k(m mVar) {
        if (mVar == null) {
            throw new NullPointerException("params == null");
        }
        this.params = mVar;
        int iC = mVar.c();
        this.khf = new h(mVar.b(), iC);
        this.secretKeySeed = new byte[iC];
        this.publicSeed = new byte[iC];
    }

    private byte[] a(byte[] bArr, int i10, int i11, j jVar) {
        int iC = this.params.c();
        if (bArr == null) {
            throw new NullPointerException("startHash == null");
        }
        if (bArr.length != iC) {
            throw new IllegalArgumentException("startHash needs to be " + iC + "bytes");
        }
        if (jVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        if (jVar.d() == null) {
            throw new NullPointerException("otsHashAddress byte array == null");
        }
        int i12 = i10 + i11;
        if (i12 > this.params.d() - 1) {
            throw new IllegalArgumentException("max chain length must not be greater than w");
        }
        if (i11 == 0) {
            return bArr;
        }
        byte[] bArrA = a(bArr, i10, i11 - 1, jVar);
        j jVar2 = (j) new j.b().g(jVar.b()).h(jVar.c()).p(jVar.g()).n(jVar.e()).o(i12 - 1).f(0).l();
        byte[] bArrC = this.khf.c(this.publicSeed, jVar2.d());
        byte[] bArrC2 = this.khf.c(this.publicSeed, ((j) new j.b().g(jVar2.b()).h(jVar2.c()).p(jVar2.g()).n(jVar2.e()).o(jVar2.f()).f(1).l()).d());
        byte[] bArr2 = new byte[iC];
        for (int i13 = 0; i13 < iC; i13++) {
            bArr2[i13] = (byte) (bArrA[i13] ^ bArrC2[i13]);
        }
        return this.khf.a(bArrC, bArr2);
    }

    private byte[] b(int i10) {
        if (i10 < 0 || i10 >= this.params.a()) {
            throw new IllegalArgumentException("index out of bounds");
        }
        return this.khf.c(this.secretKeySeed, a0.q(i10, 32));
    }

    protected h c() {
        return this.khf;
    }

    protected m d() {
        return this.params;
    }

    n e(j jVar) {
        if (jVar == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        byte[][] bArr = new byte[this.params.a()][];
        for (int i10 = 0; i10 < this.params.a(); i10++) {
            jVar = (j) new j.b().g(jVar.b()).h(jVar.c()).p(jVar.g()).n(i10).o(jVar.f()).f(jVar.a()).l();
            bArr[i10] = a(b(i10), 0, this.params.d() - 1, jVar);
        }
        return new n(this.params, bArr);
    }

    protected byte[] f() {
        return org.bouncycastle.util.a.e(this.publicSeed);
    }

    protected byte[] g(byte[] bArr, j jVar) {
        return this.khf.c(bArr, ((j) new j.b().g(jVar.b()).h(jVar.c()).p(jVar.g()).l()).d());
    }

    void h(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("secretKeySeed == null");
        }
        if (bArr.length != this.params.c()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        }
        if (bArr2 == null) {
            throw new NullPointerException("publicSeed == null");
        }
        if (bArr2.length != this.params.c()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        }
        this.secretKeySeed = bArr;
        this.publicSeed = bArr2;
    }
}
