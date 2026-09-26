package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class j extends s {
    private final int height;
    private final int layers;
    private final w8.a treeDigest;
    private final p version;

    public j(int i10, int i11, w8.a aVar) {
        this.version = new p(0L);
        this.height = i10;
        this.layers = i11;
        this.treeDigest = aVar;
    }

    public static j m(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(this.version);
        gVar.a(new p(this.height));
        gVar.a(new p(this.layers));
        gVar.a(this.treeDigest);
        return new v1(gVar);
    }

    public int j() {
        return this.height;
    }

    public int p() {
        return this.layers;
    }

    public w8.a q() {
        return this.treeDigest;
    }

    private j(c0 c0Var) {
        this.version = p.x(c0Var.z(0));
        this.height = p.x(c0Var.z(1)).C();
        this.layers = p.x(c0Var.z(2)).C();
        this.treeDigest = w8.a.m(c0Var.z(3));
    }
}
