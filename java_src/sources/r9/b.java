package r9;

import e9.e;
import e9.h;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.PublicKey;
import org.bouncycastle.asn1.u;
import org.bouncycastle.pqc.crypto.util.d;

/* JADX INFO: loaded from: classes11.dex */
public class b implements PublicKey, Key {
    private static final long serialVersionUID = 1;
    private transient k9.c params;
    private transient u treeDigest;

    public b(u uVar, k9.c cVar) {
        this.treeDigest = uVar;
        this.params = cVar;
    }

    private void a(w8.b bVar) throws IOException {
        this.treeDigest = h.b(bVar.j().p()).j().j();
        this.params = (k9.c) org.bouncycastle.pqc.crypto.util.c.a(bVar);
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
        return this.treeDigest.s(bVar.treeDigest) && org.bouncycastle.util.a.a(this.params.b(), bVar.params.b());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return (this.params.a() != null ? d.a(this.params) : new w8.b(new w8.a(e.sphincs256, new h(new w8.a(this.treeDigest))), this.params.b())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.m(this.params.b()) * 37);
    }

    public b(w8.b bVar) throws IOException {
        a(bVar);
    }
}
