package q9;

import e9.e;
import e9.g;
import java.security.PublicKey;
import org.bouncycastle.asn1.p1;

/* JADX INFO: loaded from: classes11.dex */
public class b implements PublicKey {
    private static final long serialVersionUID = 1;
    private short[][] coeffquadratic;
    private short[] coeffscalar;
    private short[][] coeffsingular;
    private int docLength;
    private i9.c rainbowParams;

    public b(int i10, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.docLength = i10;
        this.coeffquadratic = sArr;
        this.coeffsingular = sArr2;
        this.coeffscalar = sArr3;
    }

    public short[][] a() {
        return this.coeffquadratic;
    }

    public short[] b() {
        return org.bouncycastle.util.a.h(this.coeffscalar);
    }

    public short[][] c() {
        short[][] sArr = new short[this.coeffsingular.length][];
        int i10 = 0;
        while (true) {
            short[][] sArr2 = this.coeffsingular;
            if (i10 == sArr2.length) {
                return sArr;
            }
            sArr[i10] = org.bouncycastle.util.a.h(sArr2[i10]);
            i10++;
        }
    }

    public int d() {
        return this.docLength;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.docLength == bVar.d() && j9.a.j(this.coeffquadratic, bVar.a()) && j9.a.j(this.coeffsingular, bVar.c()) && j9.a.i(this.coeffscalar, bVar.b());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return s9.a.a(new w8.a(e.rainbow, p1.INSTANCE), new g(this.docLength, this.coeffquadratic, this.coeffsingular, this.coeffscalar));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return (((((this.docLength * 37) + org.bouncycastle.util.a.r(this.coeffquadratic)) * 37) + org.bouncycastle.util.a.r(this.coeffsingular)) * 37) + org.bouncycastle.util.a.q(this.coeffscalar);
    }

    public b(i9.e eVar) {
        this(eVar.a(), eVar.b(), eVar.d(), eVar.c());
    }

    public b(u9.b bVar) {
        this(bVar.d(), bVar.a(), bVar.c(), bVar.b());
    }
}
