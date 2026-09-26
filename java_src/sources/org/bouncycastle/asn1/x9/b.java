package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes10.dex */
public class b extends s implements g {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private org.bouncycastle.math.ec.c curve;
    private e fieldID;
    private c g;
    private BigInteger h;
    private BigInteger n;
    private byte[] seed;

    public b(org.bouncycastle.math.ec.c cVar, c cVar2, BigInteger bigInteger) {
        this(cVar, cVar2, bigInteger, null, null);
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g(6);
        gVar.a(new p(ONE));
        gVar.a(this.fieldID);
        gVar.a(new a(this.curve, this.seed));
        gVar.a(this.g);
        gVar.a(new p(this.n));
        if (this.h != null) {
            gVar.a(new p(this.h));
        }
        return new v1(gVar);
    }

    public b(org.bouncycastle.math.ec.c cVar, c cVar2, BigInteger bigInteger, BigInteger bigInteger2) {
        this(cVar, cVar2, bigInteger, bigInteger2, null);
    }

    public b(org.bouncycastle.math.ec.c cVar, c cVar2, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        e eVar;
        this.curve = cVar;
        this.g = cVar2;
        this.n = bigInteger;
        this.h = bigInteger2;
        this.seed = org.bouncycastle.util.a.e(bArr);
        if (org.bouncycastle.math.ec.a.c(cVar)) {
            eVar = new e(cVar.i().b());
        } else {
            if (!org.bouncycastle.math.ec.a.a(cVar)) {
                throw new IllegalArgumentException("'curve' is of an unsupported type");
            }
            int[] iArrA = ((org.bouncycastle.math.field.f) cVar.i()).c().a();
            if (iArrA.length == 3) {
                eVar = new e(iArrA[2], iArrA[1]);
            } else {
                if (iArrA.length != 5) {
                    throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
                }
                eVar = new e(iArrA[4], iArrA[1], iArrA[2], iArrA[3]);
            }
        }
        this.fieldID = eVar;
    }
}
