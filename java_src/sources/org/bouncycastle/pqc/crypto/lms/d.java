package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class d extends k {
    private final int l;
    private final m lmsPublicKey;

    public d(int i10, m mVar) {
        super(false);
        this.l = i10;
        this.lmsPublicKey = mVar;
    }

    public static d a(Object obj) throws Throwable {
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj instanceof DataInputStream) {
            return new d(((DataInputStream) obj).readInt(), m.a(obj));
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(v9.a.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                d dVarA = a(dataInputStream2);
                dataInputStream2.close();
                return dVarA;
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                if (dataInputStream != null) {
                    dataInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int b() {
        return this.l;
    }

    public m c() {
        return this.lmsPublicKey;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.l != dVar.l) {
            return false;
        }
        return this.lmsPublicKey.equals(dVar.lmsPublicKey);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.k, org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.l).d(this.lmsPublicKey.getEncoded()).b();
    }

    public int hashCode() {
        return (this.l * 31) + this.lmsPublicKey.hashCode();
    }
}
