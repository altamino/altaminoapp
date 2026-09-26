package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes10.dex */
public class e extends s implements g {
    private u id;
    private z parameters;

    public e(int i10, int i11) {
        this(i10, i11, 0, 0);
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g(2);
        gVar.a(this.id);
        gVar.a(this.parameters);
        return new v1(gVar);
    }

    public u j() {
        return this.id;
    }

    public z m() {
        return this.parameters;
    }

    public e(int i10, int i11, int i12, int i13) {
        this.id = g.characteristic_two_field;
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g(3);
        gVar.a(new p(i10));
        if (i12 == 0) {
            if (i13 != 0) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            gVar.a(g.tpBasis);
            gVar.a(new p(i11));
        } else {
            if (i12 <= i11 || i13 <= i12) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            gVar.a(g.ppBasis);
            org.bouncycastle.asn1.g gVar2 = new org.bouncycastle.asn1.g(3);
            gVar2.a(new p(i11));
            gVar2.a(new p(i12));
            gVar2.a(new p(i13));
            gVar.a(new v1(gVar2));
        }
        this.parameters = new v1(gVar);
    }

    public e(BigInteger bigInteger) {
        this.id = g.prime_field;
        this.parameters = new p(bigInteger);
    }
}
