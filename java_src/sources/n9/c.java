package n9;

import java.io.IOException;
import java.security.PrivateKey;
import org.bouncycastle.pqc.math.linearalgebra.i;
import org.bouncycastle.pqc.math.linearalgebra.j;

/* JADX INFO: loaded from: classes10.dex */
public class c implements PrivateKey {
    private static final long serialVersionUID = 1;
    private g9.f params;

    public c(g9.f fVar) {
        this.params = fVar;
    }

    public org.bouncycastle.pqc.math.linearalgebra.b a() {
        return this.params.a();
    }

    public j b() {
        return this.params.b();
    }

    public int c() {
        return this.params.c();
    }

    public int d() {
        return this.params.d();
    }

    public i e() {
        return this.params.e();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return d() == cVar.d() && c() == cVar.c() && a().equals(cVar.a()) && b().equals(cVar.b()) && g().equals(cVar.g()) && e().equals(cVar.e()) && f().equals(cVar.f());
    }

    public i f() {
        return this.params.f();
    }

    public org.bouncycastle.pqc.math.linearalgebra.a g() {
        return this.params.g();
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new v8.b(new w8.a(e9.e.mcEliece), new e9.c(this.params.d(), this.params.c(), this.params.a(), this.params.b(), this.params.e(), this.params.f(), this.params.g())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return (((((((((((this.params.c() * 37) + this.params.d()) * 37) + this.params.a().hashCode()) * 37) + this.params.b().hashCode()) * 37) + this.params.e().hashCode()) * 37) + this.params.f().hashCode()) * 37) + this.params.g().hashCode();
    }
}
