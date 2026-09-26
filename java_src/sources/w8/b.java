package w8;

import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.c;
import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.g;
import org.bouncycastle.asn1.h1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes11.dex */
public class b extends s {
    private a algId;
    private c keyData;

    public b(c0 c0Var) {
        if (c0Var.size() == 2) {
            Enumeration enumerationA = c0Var.A();
            this.algId = a.m(enumerationA.nextElement());
            this.keyData = h1.G(enumerationA.nextElement());
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + c0Var.size());
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

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        g gVar = new g(2);
        gVar.a(this.algId);
        gVar.a(this.keyData);
        return new v1(gVar);
    }

    public a j() {
        return this.algId;
    }

    public c p() {
        return this.keyData;
    }

    public z q() throws IOException {
        return z.t(this.keyData.B());
    }

    public b(a aVar, f fVar) throws IOException {
        this.keyData = new h1(fVar);
        this.algId = aVar;
    }

    public b(a aVar, byte[] bArr) {
        this.keyData = new h1(bArr);
        this.algId = aVar;
    }
}
