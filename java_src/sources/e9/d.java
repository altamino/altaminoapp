package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class d extends s {
    private final org.bouncycastle.pqc.math.linearalgebra.a g;
    private final int n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f3214t;

    public d(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.a aVar) {
        this.n = i10;
        this.f3214t = i11;
        this.g = new org.bouncycastle.pqc.math.linearalgebra.a(aVar);
    }

    public static d m(Object obj) {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj != null) {
            return new d(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(new p(this.n));
        gVar.a(new p(this.f3214t));
        gVar.a(new r1(this.g.h()));
        return new v1(gVar);
    }

    public org.bouncycastle.pqc.math.linearalgebra.a j() {
        return new org.bouncycastle.pqc.math.linearalgebra.a(this.g);
    }

    public int p() {
        return this.n;
    }

    public int q() {
        return this.f3214t;
    }

    private d(c0 c0Var) {
        this.n = ((p) c0Var.z(0)).C();
        this.f3214t = ((p) c0Var.z(1)).C();
        this.g = new org.bouncycastle.pqc.math.linearalgebra.a(((v) c0Var.z(2)).z());
    }
}
