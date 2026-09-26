package t9;

import e9.j;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import l9.s;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes9.dex */
public class a implements PrivateKey {
    private static final long serialVersionUID = 7682140473044521395L;
    private transient d0 attributes;
    private transient s keyParams;
    private transient u treeDigest;

    public a(u uVar, s sVar) {
        this.treeDigest = uVar;
        this.keyParams = sVar;
    }

    private void a(v8.b bVar) throws IOException {
        this.attributes = bVar.j();
        this.treeDigest = j.m(bVar.p().p()).q().j();
        this.keyParams = (s) org.bouncycastle.pqc.crypto.util.a.b(bVar);
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
        return this.treeDigest.s(aVar.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.c(), aVar.keyParams.c());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "XMSSMT";
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
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.m(this.keyParams.c()) * 37);
    }

    public a(v8.b bVar) throws IOException {
        a(bVar);
    }
}
