package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class m extends k {
    private final byte[] I;
    private final byte[] T1;
    private final e lmOtsType;
    private final p parameterSet;

    public m(p pVar, e eVar, byte[] bArr, byte[] bArr2) {
        super(false);
        this.parameterSet = pVar;
        this.lmOtsType = eVar;
        this.I = org.bouncycastle.util.a.e(bArr2);
        this.T1 = org.bouncycastle.util.a.e(bArr);
    }

    public static m a(Object obj) throws Throwable {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            p pVarE = p.e(dataInputStream.readInt());
            e eVarF = e.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[pVarE.d()];
            dataInputStream.readFully(bArr2);
            return new m(pVarE, eVarF, bArr2, bArr);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(v9.a.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                m mVarA = a(dataInputStream3);
                dataInputStream3.close();
                return mVarA;
            } catch (Throwable th) {
                th = th;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    byte[] b() {
        return a.f().i(this.parameterSet.f()).i(this.lmOtsType.g()).d(this.I).d(this.T1).b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (this.parameterSet.equals(mVar.parameterSet) && this.lmOtsType.equals(mVar.lmOtsType) && org.bouncycastle.util.a.a(this.I, mVar.I)) {
            return org.bouncycastle.util.a.a(this.T1, mVar.T1);
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.k, org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return b();
    }

    public int hashCode() {
        return (((((this.parameterSet.hashCode() * 31) + this.lmOtsType.hashCode()) * 31) + org.bouncycastle.util.a.m(this.I)) * 31) + org.bouncycastle.util.a.m(this.T1);
    }
}
