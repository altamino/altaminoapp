package org.bouncycastle.asn1.x9;

import java.math.BigInteger;
import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.h1;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes10.dex */
public class a extends s implements g {
    private org.bouncycastle.math.ec.c curve;
    private u fieldIdentifier;
    private byte[] seed;

    public a(e eVar, BigInteger bigInteger, BigInteger bigInteger2, c0 c0Var) {
        int iC;
        int iC2;
        int i10;
        org.bouncycastle.math.ec.c c0475c;
        this.fieldIdentifier = null;
        u uVarJ = eVar.j();
        this.fieldIdentifier = uVarJ;
        if (uVarJ.s(g.prime_field)) {
            c0475c = new org.bouncycastle.math.ec.c.d(((p) eVar.m()).z(), new BigInteger(1, v.x(c0Var.z(0)).z()), new BigInteger(1, v.x(c0Var.z(1)).z()), bigInteger, bigInteger2);
        } else {
            if (!this.fieldIdentifier.s(g.characteristic_two_field)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            c0 c0VarY = c0.y(eVar.m());
            int iC3 = ((p) c0VarY.z(0)).C();
            u uVar = (u) c0VarY.z(1);
            if (uVar.s(g.tpBasis)) {
                iC2 = p.x(c0VarY.z(2)).C();
                i10 = 0;
                iC = 0;
            } else {
                if (!uVar.s(g.ppBasis)) {
                    throw new IllegalArgumentException("This type of EC basis is not implemented");
                }
                c0 c0VarY2 = c0.y(c0VarY.z(2));
                int iC4 = p.x(c0VarY2.z(0)).C();
                int iC5 = p.x(c0VarY2.z(1)).C();
                iC = p.x(c0VarY2.z(2)).C();
                iC2 = iC4;
                i10 = iC5;
            }
            c0475c = new org.bouncycastle.math.ec.c.C0475c(iC3, iC2, i10, iC, new BigInteger(1, v.x(c0Var.z(0)).z()), new BigInteger(1, v.x(c0Var.z(1)).z()), bigInteger, bigInteger2);
        }
        this.curve = c0475c;
        if (c0Var.size() == 3) {
            this.seed = ((h1) c0Var.z(2)).x();
        }
    }

    private void j() {
        u uVar;
        if (org.bouncycastle.math.ec.a.c(this.curve)) {
            uVar = g.prime_field;
        } else {
            if (!org.bouncycastle.math.ec.a.a(this.curve)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            uVar = g.characteristic_two_field;
        }
        this.fieldIdentifier = uVar;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g(3);
        if (this.fieldIdentifier.s(g.prime_field) || this.fieldIdentifier.s(g.characteristic_two_field)) {
            gVar.a(new d(this.curve.f()).g());
            d dVar = new d(this.curve.g());
            gVar.a(dVar.g());
        }
        if (this.seed != null) {
            gVar.a(new h1(this.seed));
        }
        return new v1(gVar);
    }

    public a(org.bouncycastle.math.ec.c cVar) {
        this(cVar, null);
    }

    public a(org.bouncycastle.math.ec.c cVar, byte[] bArr) {
        this.fieldIdentifier = null;
        this.curve = cVar;
        this.seed = org.bouncycastle.util.a.e(bArr);
        j();
    }
}
