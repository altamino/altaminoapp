package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class a extends s {
    private w8.a digest;
    private byte[] encField;
    private byte[] encGp;
    private byte[] encP;
    private int k;
    private int n;

    public a(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.b bVar, org.bouncycastle.pqc.math.linearalgebra.j jVar, org.bouncycastle.pqc.math.linearalgebra.i iVar, w8.a aVar) {
        this.n = i10;
        this.k = i11;
        this.encField = bVar.e();
        this.encGp = jVar.j();
        this.encP = iVar.a();
        this.digest = aVar;
    }

    public static a q(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(c0.y(obj));
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
        gVar.a(new r1(this.encP));
        gVar.a(this.digest);
        return new v1(gVar);
    }

    public w8.a j() {
        return this.digest;
    }

    public org.bouncycastle.pqc.math.linearalgebra.b m() {
        return new org.bouncycastle.pqc.math.linearalgebra.b(this.encField);
    }

    public org.bouncycastle.pqc.math.linearalgebra.j p() {
        return new org.bouncycastle.pqc.math.linearalgebra.j(m(), this.encGp);
    }

    public int r() {
        return this.k;
    }

    public int s() {
        return this.n;
    }

    public org.bouncycastle.pqc.math.linearalgebra.i t() {
        return new org.bouncycastle.pqc.math.linearalgebra.i(this.encP);
    }

    private a(c0 c0Var) {
        this.n = ((p) c0Var.z(0)).C();
        this.k = ((p) c0Var.z(1)).C();
        this.encField = ((v) c0Var.z(2)).z();
        this.encGp = ((v) c0Var.z(3)).z();
        this.encP = ((v) c0Var.z(4)).z();
        this.digest = w8.a.m(c0Var.z(5));
    }
}
