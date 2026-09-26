package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class i extends s {
    private final int height;
    private final w8.a treeDigest;
    private final p version;

    public i(int i10, w8.a aVar) {
        this.version = new p(0L);
        this.height = i10;
        this.treeDigest = aVar;
    }

    public static i m(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(this.version);
        gVar.a(new p(this.height));
        gVar.a(this.treeDigest);
        return new v1(gVar);
    }

    public int j() {
        return this.height;
    }

    public w8.a p() {
        return this.treeDigest;
    }

    private i(c0 c0Var) {
        this.version = p.x(c0Var.z(0));
        this.height = p.x(c0Var.z(1)).C();
        this.treeDigest = w8.a.m(c0Var.z(2));
    }
}
