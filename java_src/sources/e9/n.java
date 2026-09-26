package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class n extends s {
    private final byte[] publicSeed;
    private final byte[] root;

    private n(c0 c0Var) {
        if (!p.x(c0Var.z(0)).A(0)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.publicSeed = org.bouncycastle.util.a.e(v.x(c0Var.z(1)).z());
        this.root = org.bouncycastle.util.a.e(v.x(c0Var.z(2)).z());
    }

    public static n b(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(new p(0L));
        gVar.a(new r1(this.publicSeed));
        gVar.a(new r1(this.root));
        return new v1(gVar);
    }

    public byte[] j() {
        return org.bouncycastle.util.a.e(this.publicSeed);
    }

    public byte[] m() {
        return org.bouncycastle.util.a.e(this.root);
    }

    public n(byte[] bArr, byte[] bArr2) {
        this.publicSeed = org.bouncycastle.util.a.e(bArr);
        this.root = org.bouncycastle.util.a.e(bArr2);
    }
}
