package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class c extends s {
    private byte[] encField;
    private byte[] encGp;
    private byte[] encP1;
    private byte[] encP2;
    private byte[] encSInv;
    private int k;
    private int n;

    public c(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.b bVar, org.bouncycastle.pqc.math.linearalgebra.j jVar, org.bouncycastle.pqc.math.linearalgebra.i iVar, org.bouncycastle.pqc.math.linearalgebra.i iVar2, org.bouncycastle.pqc.math.linearalgebra.a aVar) {
        this.n = i10;
        this.k = i11;
        this.encField = bVar.e();
        this.encGp = jVar.j();
        this.encSInv = aVar.h();
        this.encP1 = iVar.a();
        this.encP2 = iVar2.a();
    }

    public static c p(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(new p(this.n));
        gVar.a(new p(this.k));
        gVar.a(new r1(this.encField));
        gVar.a(new r1(this.encGp));
        gVar.a(new r1(this.encP1));
        gVar.a(new r1(this.encP2));
        gVar.a(new r1(this.encSInv));
        return new v1(gVar);
    }

    public org.bouncycastle.pqc.math.linearalgebra.b j() {
        return new org.bouncycastle.pqc.math.linearalgebra.b(this.encField);
    }

    public org.bouncycastle.pqc.math.linearalgebra.j m() {
        return new org.bouncycastle.pqc.math.linearalgebra.j(j(), this.encGp);
    }

    public int q() {
        return this.k;
    }

    public int r() {
        return this.n;
    }

    public org.bouncycastle.pqc.math.linearalgebra.i s() {
        return new org.bouncycastle.pqc.math.linearalgebra.i(this.encP1);
    }

    public org.bouncycastle.pqc.math.linearalgebra.i t() {
        return new org.bouncycastle.pqc.math.linearalgebra.i(this.encP2);
    }

    public org.bouncycastle.pqc.math.linearalgebra.a u() {
        return new org.bouncycastle.pqc.math.linearalgebra.a(this.encSInv);
    }

    private c(c0 c0Var) {
        this.n = ((p) c0Var.z(0)).C();
        this.k = ((p) c0Var.z(1)).C();
        this.encField = ((v) c0Var.z(2)).z();
        this.encGp = ((v) c0Var.z(3)).z();
        this.encP1 = ((v) c0Var.z(4)).z();
        this.encP2 = ((v) c0Var.z(5)).z();
        this.encSInv = ((v) c0Var.z(6)).z();
    }
}
