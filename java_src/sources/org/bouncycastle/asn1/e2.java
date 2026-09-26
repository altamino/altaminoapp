package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class e2 extends c {
    public e2(byte b7, int i10) {
        super(b7, i10);
    }

    static void E(x xVar, boolean z6, byte b7, byte[] bArr, int i10, int i11) throws IOException {
        xVar.n(z6, 3, b7, bArr, i10, i11);
    }

    static void F(x xVar, boolean z6, byte[] bArr, int i10, int i11) throws IOException {
        xVar.p(z6, 3, bArr, i10, i11);
    }

    static int G(boolean z6, int i10) {
        return x.g(z6, i10);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 3, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    @Override // org.bouncycastle.asn1.c, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public e2(int i10) {
        super(c.y(i10), c.C(i10));
    }

    public e2(f fVar) throws IOException {
        super(fVar.g().a("DER"), 0);
    }

    public e2(byte[] bArr) {
        this(bArr, 0);
    }

    public e2(byte[] bArr, int i10) {
        super(bArr, i10);
    }

    e2(byte[] bArr, boolean z6) {
        super(bArr, z6);
    }
}
