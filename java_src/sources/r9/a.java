package r9;

import e9.e;
import e9.h;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.PrivateKey;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes11.dex */
public class a implements PrivateKey, Key {
    private static final long serialVersionUID = 1;
    private transient d0 attributes;
    private transient k9.b params;
    private transient u treeDigest;

    public a(u uVar, k9.b bVar) {
        this.treeDigest = uVar;
        this.params = bVar;
    }

    private void a(v8.b bVar) throws IOException {
        this.attributes = bVar.j();
        this.treeDigest = h.b(bVar.p().p()).j().j();
        this.params = (k9.b) org.bouncycastle.pqc.crypto.util.a.b(bVar);
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
        return this.treeDigest.s(aVar.treeDigest) && org.bouncycastle.util.a.a(this.params.b(), aVar.params.b());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return (this.params.a() != null ? org.bouncycastle.pqc.crypto.util.b.a(this.params, this.attributes) : new v8.b(new w8.a(e.sphincs256, new h(new w8.a(this.treeDigest))), new r1(this.params.b()), this.attributes)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.m(this.params.b()) * 37);
    }

    public a(v8.b bVar) throws IOException {
        a(bVar);
    }
}
