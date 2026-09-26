package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class h implements org.bouncycastle.util.c {
    private final byte[] C;
    private final e type;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final byte[] f3302y;

    public h(e eVar, byte[] bArr, byte[] bArr2) {
        this.type = eVar;
        this.C = bArr;
        this.f3302y = bArr2;
    }

    public static h a(Object obj) throws Throwable {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            e eVarF = e.f(dataInputStream.readInt());
            byte[] bArr = new byte[eVarF.d()];
            dataInputStream.readFully(bArr);
            byte[] bArr2 = new byte[eVarF.e() * eVarF.d()];
            dataInputStream.readFully(bArr2);
            return new h(eVarF, bArr, bArr2);
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
                h hVarA = a(dataInputStream3);
                dataInputStream3.close();
                return hVarA;
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        e eVar = this.type;
        if (eVar == null ? hVar.type != null : !eVar.equals(hVar.type)) {
            return false;
        }
        if (Arrays.equals(this.C, hVar.C)) {
            return Arrays.equals(this.f3302y, hVar.f3302y);
        }
        return false;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.type.g()).d(this.C).d(this.f3302y).b();
    }

    public int hashCode() {
        e eVar = this.type;
        return ((((eVar != null ? eVar.hashCode() : 0) * 31) + Arrays.hashCode(this.C)) * 31) + Arrays.hashCode(this.f3302y);
    }
}
