package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class n implements org.bouncycastle.util.c {
    private final h otsSignature;
    private final p parameter;
    private final int q;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final byte[][] f3303y;

    public n(int i10, h hVar, p pVar, byte[][] bArr) {
        this.q = i10;
        this.otsSignature = hVar;
        this.parameter = pVar;
        this.f3303y = bArr;
    }

    public static n a(Object obj) throws Throwable {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            int i10 = dataInputStream.readInt();
            h hVarA = h.a(obj);
            p pVarE = p.e(dataInputStream.readInt());
            int iC = pVarE.c();
            byte[][] bArr = new byte[iC][];
            for (int i11 = 0; i11 < iC; i11++) {
                byte[] bArr2 = new byte[pVarE.d()];
                bArr[i11] = bArr2;
                dataInputStream.readFully(bArr2);
            }
            return new n(i10, hVarA, pVarE, bArr);
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
                n nVarA = a(dataInputStream3);
                dataInputStream3.close();
                return nVarA;
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
        n nVar = (n) obj;
        if (this.q != nVar.q) {
            return false;
        }
        h hVar = this.otsSignature;
        if (hVar == null ? nVar.otsSignature != null : !hVar.equals(nVar.otsSignature)) {
            return false;
        }
        p pVar = this.parameter;
        if (pVar == null ? nVar.parameter == null : pVar.equals(nVar.parameter)) {
            return Arrays.deepEquals(this.f3303y, nVar.f3303y);
        }
        return false;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.q).d(this.otsSignature.getEncoded()).i(this.parameter.f()).e(this.f3303y).b();
    }

    public int hashCode() {
        int i10 = this.q * 31;
        h hVar = this.otsSignature;
        int iHashCode = (i10 + (hVar != null ? hVar.hashCode() : 0)) * 31;
        p pVar = this.parameter;
        return ((iHashCode + (pVar != null ? pVar.hashCode() : 0)) * 31) + Arrays.deepHashCode(this.f3303y);
    }
}
