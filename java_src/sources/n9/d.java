package n9;

import java.io.IOException;
import java.security.PublicKey;

/* JADX INFO: loaded from: classes10.dex */
public class d implements PublicKey {
    private static final long serialVersionUID = 1;
    private g9.g params;

    public d(g9.g gVar) {
        this.params = gVar;
    }

    public org.bouncycastle.pqc.math.linearalgebra.a a() {
        return this.params.a();
    }

    public int b() {
        return this.params.b();
    }

    public int c() {
        return this.params.c();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.params.b() == dVar.b() && this.params.c() == dVar.c() && this.params.a().equals(dVar.a());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new w8.b(new w8.a(e9.e.mcEliece), new e9.d(this.params.b(), this.params.c(), this.params.a())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return ((this.params.b() + (this.params.c() * 37)) * 37) + this.params.a().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.b() + "\n") + " error correction capability: " + this.params.c() + "\n") + " generator matrix           : " + this.params.a();
    }
}
