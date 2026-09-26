package v8;

import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.c;
import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.g;
import org.bouncycastle.asn1.h0;
import org.bouncycastle.asn1.h1;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.y1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes11.dex */
public class b extends s {
    private d0 attributes;
    private v privateKey;
    private w8.a privateKeyAlgorithm;
    private c publicKey;
    private p version;

    private b(c0 c0Var) {
        Enumeration enumerationA = c0Var.A();
        p pVarX = p.x(enumerationA.nextElement());
        this.version = pVarX;
        int iR = r(pVarX);
        this.privateKeyAlgorithm = w8.a.m(enumerationA.nextElement());
        this.privateKey = v.x(enumerationA.nextElement());
        int i10 = -1;
        while (enumerationA.hasMoreElements()) {
            h0 h0Var = (h0) enumerationA.nextElement();
            int iF = h0Var.F();
            if (iF <= i10) {
                throw new IllegalArgumentException("invalid optional field in private key info");
            }
            if (iF == 0) {
                this.attributes = d0.x(h0Var, false);
            } else {
                if (iF != 1) {
                    throw new IllegalArgumentException("unknown optional field in private key info");
                }
                if (iR < 1) {
                    throw new IllegalArgumentException("'publicKey' requires version v2(1) or later");
                }
                this.publicKey = h1.H(h0Var, false);
            }
            i10 = iF;
        }
    }

    public static b m(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(c0.y(obj));
        }
        return null;
    }

    private static int r(p pVar) {
        int iC = pVar.C();
        if (iC < 0 || iC > 1) {
            throw new IllegalArgumentException("invalid version for private key info");
        }
        return iC;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        g gVar = new g(5);
        gVar.a(this.version);
        gVar.a(this.privateKeyAlgorithm);
        gVar.a(this.privateKey);
        d0 d0Var = this.attributes;
        if (d0Var != null) {
            gVar.a(new y1(false, 0, (f) d0Var));
        }
        c cVar = this.publicKey;
        if (cVar != null) {
            gVar.a(new y1(false, 1, (f) cVar));
        }
        return new v1(gVar);
    }

    public d0 j() {
        return this.attributes;
    }

    public w8.a p() {
        return this.privateKeyAlgorithm;
    }

    public c q() {
        return this.publicKey;
    }

    public f s() throws IOException {
        return z.t(this.privateKey.z());
    }

    public b(w8.a aVar, f fVar) throws IOException {
        this(aVar, fVar, null, null);
    }

    public b(w8.a aVar, f fVar, d0 d0Var) throws IOException {
        this(aVar, fVar, d0Var, null);
    }

    public b(w8.a aVar, f fVar, d0 d0Var, byte[] bArr) throws IOException {
        this.version = new p(bArr != null ? org.bouncycastle.util.b.ONE : org.bouncycastle.util.b.ZERO);
        this.privateKeyAlgorithm = aVar;
        this.privateKey = new r1(fVar);
        this.attributes = d0Var;
        this.publicKey = bArr == null ? null : new h1(bArr);
    }
}
