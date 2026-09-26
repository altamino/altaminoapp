package o9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.PublicKey;
import org.bouncycastle.pqc.crypto.util.d;

/* JADX INFO: loaded from: classes10.dex */
public class b implements Key, PublicKey {
    private static final long serialVersionUID = 1;
    private transient org.bouncycastle.pqc.crypto.newhope.b params;

    public b(org.bouncycastle.pqc.crypto.newhope.b bVar) {
        this.params = bVar;
    }

    private void a(w8.b bVar) throws IOException {
        this.params = (org.bouncycastle.pqc.crypto.newhope.b) org.bouncycastle.pqc.crypto.util.c.a(bVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        a(w8.b.m((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        return org.bouncycastle.util.a.a(this.params.a(), ((b) obj).params.a());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return d.a(this.params).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return org.bouncycastle.util.a.m(this.params.a());
    }

    public b(w8.b bVar) throws IOException {
        a(bVar);
    }
}
