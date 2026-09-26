package t9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import l9.z;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes9.dex */
public class d implements PublicKey {
    private static final long serialVersionUID = -5617456225328969766L;
    private transient z keyParams;
    private transient u treeDigest;

    public d(u uVar, z zVar) {
        this.treeDigest = uVar;
        this.keyParams = zVar;
    }

    private void a(w8.b bVar) throws IOException {
        z zVar = (z) org.bouncycastle.pqc.crypto.util.c.a(bVar);
        this.keyParams = zVar;
        this.treeDigest = e.a(zVar.a());
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
        if (obj instanceof d) {
            d dVar = (d) obj;
            try {
                return this.treeDigest.s(dVar.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.getEncoded(), dVar.keyParams.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSS";
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
        try {
            return this.treeDigest.hashCode() + (org.bouncycastle.util.a.m(this.keyParams.getEncoded()) * 37);
        } catch (IOException unused) {
            return this.treeDigest.hashCode();
        }
    }

    public d(w8.b bVar) throws IOException {
        a(bVar);
    }
}
