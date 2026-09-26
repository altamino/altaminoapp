package org.bouncycastle.pqc.crypto.lms;

/* JADX INFO: loaded from: classes5.dex */
class f {
    private final byte[] I;
    private final byte[] masterSecret;
    private final e parameter;
    private final int q;

    public f(e eVar, byte[] bArr, int i10, byte[] bArr2) {
        this.parameter = eVar;
        this.I = bArr;
        this.q = i10;
        this.masterSecret = bArr2;
    }

    s a() {
        s sVar = new s(this.I, this.masterSecret, b.a(this.parameter.b()));
        sVar.e(this.q);
        return sVar;
    }

    public byte[] b() {
        return this.I;
    }

    public e c() {
        return this.parameter;
    }

    public int d() {
        return this.q;
    }

    j e(p pVar, byte[][] bArr) {
        byte[] bArr2 = new byte[32];
        s sVarA = a();
        sVarA.d(-3);
        sVarA.a(bArr2, false);
        x8.c cVarA = b.a(this.parameter.b());
        r.a(b(), cVarA);
        r.c(d(), cVarA);
        r.b((short) -32383, cVarA);
        r.a(bArr2, cVarA);
        return new j(this, pVar, cVarA, bArr2, bArr);
    }
}
