package n9;

import java.io.IOException;
import java.security.PublicKey;

/* JADX INFO: loaded from: classes10.dex */
public class b implements PublicKey {
    private static final long serialVersionUID = 1;
    private g9.c params;

    public b(g9.c cVar) {
        this.params = cVar;
    }

    public org.bouncycastle.pqc.math.linearalgebra.a a() {
        return this.params.b();
    }

    public int b() {
        return this.params.c();
    }

    public int c() {
        return this.params.d();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.params.c() == bVar.b() && this.params.d() == bVar.c() && this.params.b().equals(bVar.a());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new w8.b(new w8.a(e9.e.mcElieceCca2), new e9.b(this.params.c(), this.params.d(), this.params.b(), g.a(this.params.a()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return ((this.params.c() + (this.params.d() * 37)) * 37) + this.params.b().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.c() + "\n") + " error correction capability: " + this.params.d() + "\n") + " generator matrix           : " + this.params.b().toString();
    }
}
