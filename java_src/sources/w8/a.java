package w8;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.g;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes11.dex */
public class a extends s {
    private u algorithm;
    private f parameters;

    public a(u uVar) {
        this.algorithm = uVar;
    }

    public static a m(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        g gVar = new g(2);
        gVar.a(this.algorithm);
        f fVar = this.parameters;
        if (fVar != null) {
            gVar.a(fVar);
        }
        return new v1(gVar);
    }

    public u j() {
        return this.algorithm;
    }

    public f p() {
        return this.parameters;
    }

    public a(u uVar, f fVar) {
        this.algorithm = uVar;
        this.parameters = fVar;
    }

    private a(c0 c0Var) {
        if (c0Var.size() >= 1 && c0Var.size() <= 2) {
            this.algorithm = u.B(c0Var.z(0));
            this.parameters = c0Var.size() == 2 ? c0Var.z(1) : null;
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + c0Var.size());
        }
    }
}
