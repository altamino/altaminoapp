package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h0 extends z implements r2 {
    private static final int DECLARED_EXPLICIT = 1;
    private static final int DECLARED_IMPLICIT = 2;
    private static final int PARSED_EXPLICIT = 3;
    private static final int PARSED_IMPLICIT = 4;
    final int explicitness;
    final f obj;
    final int tagClass;
    final int tagNo;

    h0(int i10, int i11, int i12, f fVar) {
        if (fVar == null) {
            throw new NullPointerException("'obj' cannot be null");
        }
        if (i11 == 0 || (i11 & 192) != i11) {
            throw new IllegalArgumentException("invalid tag class: " + i11);
        }
        this.explicitness = i10;
        this.tagClass = i11;
        this.tagNo = i12;
        this.obj = fVar;
    }

    public static h0 C(Object obj) {
        if (obj == null || (obj instanceof h0)) {
            return (h0) obj;
        }
        if (obj instanceof f) {
            z zVarG = ((f) obj).g();
            if (zVarG instanceof h0) {
                return (h0) zVarG;
            }
        } else if (obj instanceof byte[]) {
            try {
                return w(z.t((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    private static h0 w(z zVar) {
        if (zVar instanceof h0) {
            return (h0) zVar;
        }
        throw new IllegalStateException("unexpected object: " + zVar.getClass().getName());
    }

    static z x(int i10, int i11, g gVar) {
        n2 n2Var = gVar.f() == 1 ? new n2(3, i10, i11, gVar.d(0)) : new n2(4, i10, i11, h2.a(gVar));
        return i10 != 64 ? n2Var : new d2(n2Var);
    }

    static z y(int i10, int i11, g gVar) {
        b1 b1Var = gVar.f() == 1 ? new b1(3, i10, i11, gVar.d(0)) : new b1(4, i10, i11, u0.a(gVar));
        return i10 != 64 ? b1Var : new q0(b1Var);
    }

    static z z(int i10, int i11, byte[] bArr) {
        n2 n2Var = new n2(4, i10, i11, new r1(bArr));
        return i10 != 64 ? n2Var : new d2(n2Var);
    }

    z A(boolean z6, m0 m0Var) {
        if (z6) {
            if (G()) {
                return m0Var.a(this.obj.g());
            }
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        if (1 == this.explicitness) {
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        z zVarG = this.obj.g();
        int i10 = this.explicitness;
        if (i10 == 3) {
            return m0Var.c(H(zVarG));
        }
        if (i10 != 4) {
            return m0Var.a(zVarG);
        }
        return zVarG instanceof c0 ? m0Var.c((c0) zVarG) : m0Var.d((r1) zVarG);
    }

    public s B() {
        if (!G()) {
            throw new IllegalStateException("object implicit - explicit expected.");
        }
        f fVar = this.obj;
        return fVar instanceof s ? (s) fVar : fVar.g();
    }

    public z D() {
        if (128 == E()) {
            return this.obj.g();
        }
        throw new IllegalStateException("this method only valid for CONTEXT_SPECIFIC tags");
    }

    public int E() {
        return this.tagClass;
    }

    public int F() {
        return this.tagNo;
    }

    public boolean G() {
        int i10 = this.explicitness;
        return i10 == 1 || i10 == 3;
    }

    abstract c0 H(z zVar);

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof a) {
            return zVar.s(this);
        }
        if (!(zVar instanceof h0)) {
            return false;
        }
        h0 h0Var = (h0) zVar;
        if (this.tagNo != h0Var.tagNo || this.tagClass != h0Var.tagClass) {
            return false;
        }
        if (this.explicitness != h0Var.explicitness && G() != h0Var.G()) {
            return false;
        }
        z zVarG = this.obj.g();
        z zVarG2 = h0Var.obj.g();
        if (zVarG == zVarG2) {
            return true;
        }
        if (G()) {
            return zVarG.b(zVarG2);
        }
        try {
            return org.bouncycastle.util.a.a(getEncoded(), h0Var.getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // org.bouncycastle.asn1.r2
    public final z c() {
        return this;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return (((this.tagClass * 7919) ^ this.tagNo) ^ (G() ? 15 : 240)) ^ this.obj.g().hashCode();
    }

    public String toString() {
        return n0.a(this.tagClass, this.tagNo) + this.obj;
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new y1(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new n2(this.explicitness, this.tagClass, this.tagNo, this.obj);
    }

    protected h0(boolean z6, int i10, int i11, f fVar) {
        this(z6 ? 1 : 2, i10, i11, fVar);
    }

    protected h0(boolean z6, int i10, f fVar) {
        this(z6, 128, i10, fVar);
    }
}
