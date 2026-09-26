package p9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.d0;

/* JADX INFO: loaded from: classes11.dex */
public class a implements PrivateKey {
    private static final long serialVersionUID = 1;
    private transient d0 attributes;
    private transient h9.a keyParams;

    public a(h9.a aVar) {
        this.keyParams = aVar;
    }

    private void a(v8.b bVar) throws IOException {
        this.attributes = bVar.j();
        this.keyParams = (h9.a) org.bouncycastle.pqc.crypto.util.a.b(bVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        a(v8.b.m((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.keyParams.b() == aVar.keyParams.b() && org.bouncycastle.util.a.a(this.keyParams.a(), aVar.keyParams.a());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return h9.c.a(this.keyParams.b());
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return org.bouncycastle.pqc.crypto.util.b.a(this.keyParams, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return this.keyParams.b() + (org.bouncycastle.util.a.m(this.keyParams.a()) * 37);
    }

    public a(v8.b bVar) throws IOException {
        a(bVar);
    }
}
