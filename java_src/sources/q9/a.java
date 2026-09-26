package q9;

import e9.e;
import e9.f;
import i9.d;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.bouncycastle.asn1.p1;

/* JADX INFO: loaded from: classes11.dex */
public class a implements PrivateKey {
    private static final long serialVersionUID = 1;
    private short[][] A1inv;
    private short[][] A2inv;
    private short[] b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private short[] f3337b2;
    private i9.a[] layers;
    private int[] vi;

    public a(d dVar) {
        this(dVar.d(), dVar.b(), dVar.e(), dVar.c(), dVar.g(), dVar.f());
    }

    public short[] a() {
        return this.b1;
    }

    public short[] b() {
        return this.f3337b2;
    }

    public short[][] c() {
        return this.A1inv;
    }

    public short[][] d() {
        return this.A2inv;
    }

    public i9.a[] e() {
        return this.layers;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        boolean zEquals = j9.a.j(this.A1inv, aVar.c()) && j9.a.j(this.A2inv, aVar.d()) && j9.a.i(this.b1, aVar.a()) && j9.a.i(this.f3337b2, aVar.b()) && Arrays.equals(this.vi, aVar.f());
        if (this.layers.length != aVar.e().length) {
            return false;
        }
        for (int length = this.layers.length - 1; length >= 0; length--) {
            zEquals &= this.layers[length].equals(aVar.e()[length]);
        }
        return zEquals;
    }

    public int[] f() {
        return this.vi;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new v8.b(new w8.a(e.rainbow, p1.INSTANCE), new f(this.A1inv, this.b1, this.A2inv, this.f3337b2, this.vi, this.layers)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        int length = (((((((((this.layers.length * 37) + org.bouncycastle.util.a.r(this.A1inv)) * 37) + org.bouncycastle.util.a.q(this.b1)) * 37) + org.bouncycastle.util.a.r(this.A2inv)) * 37) + org.bouncycastle.util.a.q(this.f3337b2)) * 37) + org.bouncycastle.util.a.p(this.vi);
        for (int length2 = this.layers.length - 1; length2 >= 0; length2--) {
            length = (length * 37) + this.layers[length2].hashCode();
        }
        return length;
    }

    public a(u9.a aVar) {
        this(aVar.c(), aVar.a(), aVar.d(), aVar.b(), aVar.f(), aVar.e());
    }

    public a(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, i9.a[] aVarArr) {
        this.A1inv = sArr;
        this.b1 = sArr2;
        this.A2inv = sArr3;
        this.f3337b2 = sArr4;
        this.vi = iArr;
        this.layers = aVarArr;
    }
}
