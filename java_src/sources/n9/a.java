package n9;

import java.io.IOException;
import java.security.PrivateKey;
import org.bouncycastle.pqc.math.linearalgebra.i;
import org.bouncycastle.pqc.math.linearalgebra.j;

/* JADX INFO: loaded from: classes10.dex */
public class a implements PrivateKey {
    private static final long serialVersionUID = 1;
    private g9.b params;

    public a(g9.b bVar) {
        this.params = bVar;
    }

    public org.bouncycastle.pqc.math.linearalgebra.b a() {
        return this.params.b();
    }

    public j b() {
        return this.params.c();
    }

    public org.bouncycastle.pqc.math.linearalgebra.a c() {
        return this.params.d();
    }

    public int d() {
        return this.params.e();
    }

    public int e() {
        return this.params.f();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return e() == aVar.e() && d() == aVar.d() && a().equals(aVar.a()) && b().equals(aVar.b()) && f().equals(aVar.f()) && c().equals(aVar.c());
    }

    public i f() {
        return this.params.g();
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new v8.b(new w8.a(e9.e.mcElieceCca2), new e9.a(e(), d(), a(), b(), f(), g.a(this.params.a()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return (((((((((this.params.e() * 37) + this.params.f()) * 37) + this.params.b().hashCode()) * 37) + this.params.c().hashCode()) * 37) + this.params.g().hashCode()) * 37) + this.params.d().hashCode();
    }
}
