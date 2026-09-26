package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class h extends s {
    private final w8.a treeDigest;
    private final p version;

    private h(c0 c0Var) {
        this.version = p.x(c0Var.z(0));
        this.treeDigest = w8.a.m(c0Var.z(1));
    }

    public static final h b(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(this.version);
        gVar.a(this.treeDigest);
        return new v1(gVar);
    }

    public w8.a j() {
        return this.treeDigest;
    }

    public h(w8.a aVar) {
        this.version = new p(0L);
        this.treeDigest = aVar;
    }
}
