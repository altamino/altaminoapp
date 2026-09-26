package p9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.crypto.util.d;

/* JADX INFO: loaded from: classes11.dex */
public class b implements PublicKey {
    private static final long serialVersionUID = 1;
    private transient h9.b keyParams;

    public b(h9.b bVar) {
        this.keyParams = bVar;
    }

    private void a(w8.b bVar) throws IOException {
        this.keyParams = (h9.b) org.bouncycastle.pqc.crypto.util.c.a(bVar);
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
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.keyParams.b() == bVar.keyParams.b() && org.bouncycastle.util.a.a(this.keyParams.a(), bVar.keyParams.a());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return h9.c.a(this.keyParams.b());
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return d.a(this.keyParams).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return this.keyParams.b() + (org.bouncycastle.util.a.m(this.keyParams.a()) * 37);
    }

    public b(w8.b bVar) throws IOException {
        a(bVar);
    }
}
