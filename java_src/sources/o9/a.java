package o9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.PrivateKey;
import org.bouncycastle.asn1.d0;

/* JADX INFO: loaded from: classes10.dex */
public class a implements Key, PrivateKey {
    private static final long serialVersionUID = 1;
    private transient d0 attributes;
    private transient org.bouncycastle.pqc.crypto.newhope.a params;

    public a(org.bouncycastle.pqc.crypto.newhope.a aVar) {
        this.params = aVar;
    }

    private void a(v8.b bVar) throws IOException {
        this.attributes = bVar.j();
        this.params = (org.bouncycastle.pqc.crypto.newhope.a) org.bouncycastle.pqc.crypto.util.a.b(bVar);
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
        if (obj instanceof a) {
            return org.bouncycastle.util.a.d(this.params.a(), ((a) obj).params.a());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return org.bouncycastle.pqc.crypto.util.b.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.q(this.params.a());
    }

    public a(v8.b bVar) throws IOException {
        a(bVar);
    }
}
