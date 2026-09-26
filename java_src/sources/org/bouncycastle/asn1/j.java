package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public abstract class j extends z {
    static final m0 TYPE = new a(j.class, 8);
    z dataValueDescriptor;
    u directReference;
    int encoding;
    z externalContent;
    p indirectReference;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z c(c0 c0Var) {
            return c0Var.C();
        }
    }

    j(u uVar, p pVar, z zVar, int i10, z zVar2) {
        this.directReference = uVar;
        this.indirectReference = pVar;
        this.dataValueDescriptor = zVar;
        this.encoding = x(i10);
        this.externalContent = y(i10, zVar2);
    }

    private static z A(c0 c0Var, int i10) {
        if (c0Var.size() > i10) {
            return c0Var.z(i10).g();
        }
        throw new IllegalArgumentException("too few objects in input sequence");
    }

    private static int x(int i10) {
        if (i10 >= 0 && i10 <= 2) {
            return i10;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i10);
    }

    private static z y(int i10, z zVar) {
        m0 m0Var;
        if (i10 == 1) {
            m0Var = v.TYPE;
        } else {
            if (i10 != 2) {
                return zVar;
            }
            m0Var = c.TYPE;
        }
        return m0Var.a(zVar);
    }

    private static z z(h0 h0Var) {
        int iE = h0Var.E();
        int iF = h0Var.F();
        if (128 != iE) {
            throw new IllegalArgumentException("invalid tag: " + n0.a(iE, iF));
        }
        if (iF == 0) {
            return h0Var.B().g();
        }
        if (iF == 1) {
            return v.y(h0Var, false);
        }
        if (iF == 2) {
            return c.A(h0Var, false);
        }
        throw new IllegalArgumentException("invalid tag: " + n0.a(iE, iF));
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (this == zVar) {
            return true;
        }
        if (!(zVar instanceof j)) {
            return false;
        }
        j jVar = (j) zVar;
        return org.bouncycastle.util.e.a(this.directReference, jVar.directReference) && org.bouncycastle.util.e.a(this.indirectReference, jVar.indirectReference) && org.bouncycastle.util.e.a(this.dataValueDescriptor, jVar.dataValueDescriptor) && this.encoding == jVar.encoding && this.externalContent.s(jVar.externalContent);
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return (((org.bouncycastle.util.e.b(this.directReference) ^ org.bouncycastle.util.e.b(this.indirectReference)) ^ org.bouncycastle.util.e.b(this.dataValueDescriptor)) ^ this.encoding) ^ this.externalContent.hashCode();
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.s(z6, 40);
        w().j(xVar, false);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return true;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        return w().r(z6);
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new i1(this.directReference, this.indirectReference, this.dataValueDescriptor, this.encoding, this.externalContent);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new g2(this.directReference, this.indirectReference, this.dataValueDescriptor, this.encoding, this.externalContent);
    }

    abstract c0 w();

    j(u uVar, p pVar, z zVar, y1 y1Var) {
        this.directReference = uVar;
        this.indirectReference = pVar;
        this.dataValueDescriptor = zVar;
        this.encoding = x(y1Var.F());
        this.externalContent = z(y1Var);
    }

    j(c0 c0Var) {
        int i10 = 0;
        z zVarA = A(c0Var, 0);
        if (zVarA instanceof u) {
            this.directReference = (u) zVarA;
            zVarA = A(c0Var, 1);
            i10 = 1;
        }
        if (zVarA instanceof p) {
            this.indirectReference = (p) zVarA;
            i10++;
            zVarA = A(c0Var, i10);
        }
        if (!(zVarA instanceof h0)) {
            this.dataValueDescriptor = zVarA;
            i10++;
            zVarA = A(c0Var, i10);
        }
        if (c0Var.size() != i10 + 1) {
            throw new IllegalArgumentException("input sequence too large");
        }
        if (!(zVarA instanceof h0)) {
            throw new IllegalArgumentException("No tagged object found in sequence. Structure doesn't seem to be of type External");
        }
        h0 h0Var = (h0) zVarA;
        this.encoding = x(h0Var.F());
        this.externalContent = z(h0Var);
    }
}
