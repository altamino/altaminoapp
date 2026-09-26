package t9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import l9.t;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes9.dex */
public class b implements PublicKey {
    private static final long serialVersionUID = 3230324130542413475L;
    private transient t keyParams;
    private transient u treeDigest;

    public b(u uVar, t tVar) {
        this.treeDigest = uVar;
        this.keyParams = tVar;
    }

    private void a(w8.b bVar) throws IOException {
        t tVar = (t) org.bouncycastle.pqc.crypto.util.c.a(bVar);
        this.keyParams = tVar;
        this.treeDigest = e.a(tVar.a());
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
        return this.treeDigest.s(bVar.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.e(), bVar.keyParams.e());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return org.bouncycastle.pqc.crypto.util.d.a(this.keyParams).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.m(this.keyParams.e()) * 37);
    }

    public b(w8.b bVar) throws IOException {
        a(bVar);
    }
}
