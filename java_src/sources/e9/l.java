package e9;

import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class l extends s {
    private final byte[] publicSeed;
    private final byte[] root;

    public l(byte[] bArr, byte[] bArr2) {
        this.publicSeed = org.bouncycastle.util.a.e(bArr);
        this.root = org.bouncycastle.util.a.e(bArr2);
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(new p(0L));
        gVar.a(new r1(this.publicSeed));
        gVar.a(new r1(this.root));
        return new v1(gVar);
    }
}
