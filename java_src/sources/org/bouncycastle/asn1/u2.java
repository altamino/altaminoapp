package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
class u2 extends c0 {
    private byte[] encoded;

    u2(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new NullPointerException("'encoded' cannot be null");
        }
        this.encoded = bArr;
    }

    private synchronized void G() {
        if (this.encoded != null) {
            o oVar = new o(this.encoded, true);
            try {
                g gVarP = oVar.p();
                oVar.close();
                this.elements = gVarP.g();
                this.encoded = null;
            } catch (IOException e) {
                throw new y("malformed ASN.1: " + e, e);
            }
        }
    }

    private synchronized byte[] H() {
        return this.encoded;
    }

    @Override // org.bouncycastle.asn1.c0
    public Enumeration A() {
        byte[] bArrH = H();
        return bArrH != null ? new t2(bArrH) : super.A();
    }

    @Override // org.bouncycastle.asn1.c0
    c B() {
        return ((c0) v()).B();
    }

    @Override // org.bouncycastle.asn1.c0
    j C() {
        return ((c0) v()).C();
    }

    @Override // org.bouncycastle.asn1.c0
    v D() {
        return ((c0) v()).D();
    }

    @Override // org.bouncycastle.asn1.c0
    d0 E() {
        return ((c0) v()).E();
    }

    @Override // org.bouncycastle.asn1.c0, org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        G();
        return super.hashCode();
    }

    @Override // org.bouncycastle.asn1.c0, java.lang.Iterable
    public Iterator<f> iterator() {
        G();
        return super.iterator();
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        byte[] bArrH = H();
        if (bArrH != null) {
            xVar.o(z6, 48, bArrH);
        } else {
            super.v().j(xVar, z6);
        }
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        byte[] bArrH = H();
        return bArrH != null ? x.g(z6, bArrH.length) : super.v().r(z6);
    }

    @Override // org.bouncycastle.asn1.c0
    public int size() {
        G();
        return super.size();
    }

    @Override // org.bouncycastle.asn1.c0, org.bouncycastle.asn1.z
    z u() {
        G();
        return super.u();
    }

    @Override // org.bouncycastle.asn1.c0, org.bouncycastle.asn1.z
    z v() {
        G();
        return super.v();
    }

    @Override // org.bouncycastle.asn1.c0
    public f z(int i10) {
        G();
        return super.z(i10);
    }
}
