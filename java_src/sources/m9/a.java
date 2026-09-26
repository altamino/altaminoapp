package m9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.PrivateKey;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.pqc.crypto.lms.k;

/* JADX INFO: loaded from: classes6.dex */
public class a implements PrivateKey, Key {
    private static final long serialVersionUID = 8568701712864512338L;
    private transient d0 attributes;
    private transient k keyParams;

    public a(k kVar) {
        this.keyParams = kVar;
    }

    private void a(v8.b bVar) throws IOException {
        this.attributes = bVar.j();
        this.keyParams = (k) org.bouncycastle.pqc.crypto.util.a.b(bVar);
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
        try {
            return org.bouncycastle.util.a.a(this.keyParams.getEncoded(), ((a) obj).keyParams.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to perform equals");
        }
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "LMS";
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
        try {
            return org.bouncycastle.util.a.m(this.keyParams.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to calculate hashCode");
        }
    }

    public a(v8.b bVar) throws IOException {
        a(bVar);
    }
}
