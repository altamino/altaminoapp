package m9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.PublicKey;
import org.bouncycastle.pqc.crypto.lms.k;
import org.bouncycastle.pqc.crypto.util.d;

/* JADX INFO: loaded from: classes6.dex */
public class b implements PublicKey, Key {
    private static final long serialVersionUID = -5617456225328969766L;
    private transient k keyParams;

    public b(k kVar) {
        this.keyParams = kVar;
    }

    private void a(w8.b bVar) throws IOException {
        this.keyParams = (k) org.bouncycastle.pqc.crypto.util.c.a(bVar);
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
        if (obj instanceof b) {
            try {
                return org.bouncycastle.util.a.a(this.keyParams.getEncoded(), ((b) obj).keyParams.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "LMS";
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
        try {
            return org.bouncycastle.util.a.m(this.keyParams.getEncoded());
        } catch (IOException unused) {
            return -1;
        }
    }

    public b(w8.b bVar) throws IOException {
        a(bVar);
    }
}
