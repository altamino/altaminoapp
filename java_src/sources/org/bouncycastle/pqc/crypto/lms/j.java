package org.bouncycastle.pqc.crypto.lms;

/* JADX INFO: loaded from: classes5.dex */
public class j implements x8.c {
    private final byte[] C;
    private volatile x8.c digest;
    private final f key;
    private final byte[][] path;
    private final g publicKey;
    private final p sigParams;
    private final Object signature;
    private o[] signedPubKeys;

    public j(f fVar, p pVar, x8.c cVar, byte[] bArr, byte[][] bArr2) {
        this.key = fVar;
        this.sigParams = pVar;
        this.digest = cVar;
        this.C = bArr;
        this.path = bArr2;
        this.publicKey = null;
        this.signature = null;
    }

    @Override // x8.c
    public int a(byte[] bArr, int i10) {
        return this.digest.a(bArr, i10);
    }

    @Override // x8.c
    public void c(byte b7) {
        this.digest.c(b7);
    }

    @Override // x8.c
    public String d() {
        return this.digest.d();
    }

    @Override // x8.c
    public int e() {
        return this.digest.e();
    }

    byte[] f() {
        return this.C;
    }

    byte[][] g() {
        return this.path;
    }

    f h() {
        return this.key;
    }

    byte[] i() {
        byte[] bArr = new byte[34];
        this.digest.a(bArr, 0);
        this.digest = null;
        return bArr;
    }

    p j() {
        return this.sigParams;
    }

    @Override // x8.c
    public void update(byte[] bArr, int i10, int i11) {
        this.digest.update(bArr, i10, i11);
    }

    public j(g gVar, Object obj, x8.c cVar) {
        this.publicKey = gVar;
        this.signature = obj;
        this.digest = cVar;
        this.C = null;
        this.key = null;
        this.sigParams = null;
        this.path = null;
    }
}
