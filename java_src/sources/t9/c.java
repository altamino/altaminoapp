package t9;

import e9.i;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import l9.y;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.asn1.u;

/* JADX INFO: loaded from: classes9.dex */
public class c implements PrivateKey {
    private static final long serialVersionUID = 8568701712864512338L;
    private transient d0 attributes;
    private transient y keyParams;
    private transient u treeDigest;

    public c(u uVar, y yVar) {
        this.treeDigest = uVar;
        this.keyParams = yVar;
    }

    private void a(v8.b bVar) throws IOException {
        this.attributes = bVar.j();
        this.treeDigest = i.m(bVar.p().p()).p().j();
        this.keyParams = (y) org.bouncycastle.pqc.crypto.util.a.b(bVar);
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
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.treeDigest.s(cVar.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.c(), cVar.keyParams.c());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "XMSS";
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

    public c(v8.b bVar) throws IOException {
        a(bVar);
    }
}
