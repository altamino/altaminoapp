package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public abstract class a extends z implements r2 {
    final h0 taggedObject;

    a(h0 h0Var) {
        w(h0Var.E());
        this.taggedObject = h0Var;
    }

    private static int w(int i10) {
        if (64 == i10) {
            return i10;
        }
        throw new IllegalArgumentException();
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        h0 h0Var;
        if (zVar instanceof a) {
            h0Var = ((a) zVar).taggedObject;
        } else {
            if (!(zVar instanceof h0)) {
                return false;
            }
            h0Var = (h0) zVar;
        }
        return this.taggedObject.s(h0Var);
    }

    @Override // org.bouncycastle.asn1.r2
    public final z c() {
        return this;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return this.taggedObject.hashCode();
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        this.taggedObject.j(xVar, z6);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return this.taggedObject.m();
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        return this.taggedObject.r(z6);
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new f1((h0) this.taggedObject.u());
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new d2((h0) this.taggedObject.v());
    }
}
