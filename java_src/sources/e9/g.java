package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class g extends s {
    private byte[][] coeffQuadratic;
    private byte[] coeffScalar;
    private byte[][] coeffSingular;
    private p docLength;
    private u oid;
    private p version;

    public g(int i10, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.version = new p(0L);
        this.docLength = new p(i10);
        this.coeffQuadratic = j9.a.c(sArr);
        this.coeffSingular = j9.a.c(sArr2);
        this.coeffScalar = j9.a.a(sArr3);
    }

    public static g r(Object obj) {
        if (obj instanceof g) {
            return (g) obj;
        }
        if (obj != null) {
            return new g(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        org.bouncycastle.asn1.f fVar = this.version;
        if (fVar == null) {
            fVar = this.oid;
        }
        gVar.a(fVar);
        gVar.a(this.docLength);
        org.bouncycastle.asn1.g gVar2 = new org.bouncycastle.asn1.g();
        for (int i10 = 0; i10 < this.coeffQuadratic.length; i10++) {
            gVar2.a(new r1(this.coeffQuadratic[i10]));
        }
        gVar.a(new v1(gVar2));
        org.bouncycastle.asn1.g gVar3 = new org.bouncycastle.asn1.g();
        for (int i11 = 0; i11 < this.coeffSingular.length; i11++) {
            gVar3.a(new r1(this.coeffSingular[i11]));
        }
        gVar.a(new v1(gVar3));
        org.bouncycastle.asn1.g gVar4 = new org.bouncycastle.asn1.g();
        gVar4.a(new r1(this.coeffScalar));
        gVar.a(new v1(gVar4));
        return new v1(gVar);
    }

    public short[][] j() {
        return j9.a.d(this.coeffQuadratic);
    }

    public short[] m() {
        return j9.a.b(this.coeffScalar);
    }

    public short[][] p() {
        return j9.a.d(this.coeffSingular);
    }

    public int q() {
        return this.docLength.C();
    }

    private g(c0 c0Var) {
        if (c0Var.z(0) instanceof p) {
            this.version = p.x(c0Var.z(0));
        } else {
            this.oid = u.B(c0Var.z(0));
        }
        this.docLength = p.x(c0Var.z(1));
        c0 c0VarY = c0.y(c0Var.z(2));
        this.coeffQuadratic = new byte[c0VarY.size()][];
        for (int i10 = 0; i10 < c0VarY.size(); i10++) {
            this.coeffQuadratic[i10] = v.x(c0VarY.z(i10)).z();
        }
        c0 c0Var2 = (c0) c0Var.z(3);
        this.coeffSingular = new byte[c0Var2.size()][];
        for (int i11 = 0; i11 < c0Var2.size(); i11++) {
            this.coeffSingular[i11] = v.x(c0Var2.z(i11)).z();
        }
        this.coeffScalar = v.x(((c0) c0Var.z(4)).z(0)).z();
    }
}
