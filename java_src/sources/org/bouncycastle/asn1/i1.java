package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes7.dex */
public class i1 extends j {
    public i1(g gVar) {
        this(k1.a(gVar));
    }

    @Override // org.bouncycastle.asn1.j, org.bouncycastle.asn1.z
    z u() {
        return this;
    }

    @Override // org.bouncycastle.asn1.j, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    @Override // org.bouncycastle.asn1.j
    c0 w() {
        g gVar = new g(4);
        u uVar = this.directReference;
        if (uVar != null) {
            gVar.a(uVar);
        }
        p pVar = this.indirectReference;
        if (pVar != null) {
            gVar.a(pVar);
        }
        z zVar = this.dataValueDescriptor;
        if (zVar != null) {
            gVar.a(zVar.u());
        }
        int i10 = this.encoding;
        gVar.a(new y1(i10 == 0, i10, this.externalContent));
        return new v1(gVar);
    }

    public i1(u uVar, p pVar, z zVar, int i10, z zVar2) {
        super(uVar, pVar, zVar, i10, zVar2);
    }

    public i1(u uVar, p pVar, z zVar, y1 y1Var) {
        super(uVar, pVar, zVar, y1Var);
    }

    public i1(v1 v1Var) {
        super(v1Var);
    }
}
