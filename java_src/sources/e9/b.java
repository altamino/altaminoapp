package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class b extends s {
    private final w8.a digest;
    private final org.bouncycastle.pqc.math.linearalgebra.a g;
    private final int n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f3213t;

    public b(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.a aVar, w8.a aVar2) {
        this.n = i10;
        this.f3213t = i11;
        this.g = new org.bouncycastle.pqc.math.linearalgebra.a(aVar.h());
        this.digest = aVar2;
    }

    public static b p(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(new p(this.n));
        gVar.a(new p(this.f3213t));
        gVar.a(new r1(this.g.h()));
        gVar.a(this.digest);
        return new v1(gVar);
    }

    public w8.a j() {
        return this.digest;
    }

    public org.bouncycastle.pqc.math.linearalgebra.a m() {
        return this.g;
    }

    public int q() {
        return this.n;
    }

    public int r() {
        return this.f3213t;
    }

    private b(c0 c0Var) {
        this.n = ((p) c0Var.z(0)).C();
        this.f3213t = ((p) c0Var.z(1)).C();
        this.g = new org.bouncycastle.pqc.math.linearalgebra.a(((v) c0Var.z(2)).z());
        this.digest = w8.a.m(c0Var.z(3));
    }
}
