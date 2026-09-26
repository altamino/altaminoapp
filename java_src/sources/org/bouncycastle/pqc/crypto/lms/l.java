package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class l extends k {
    private static a T1;
    private static a[] internedKeys;
    private final byte[] I;
    private final byte[] masterSecret;
    private final int maxCacheR;
    private final int maxQ;
    private final e otsParameters;
    private final p parameters;
    private m publicKey;
    private int q;
    private final Map<a, byte[]> tCache;
    private final x8.c tDigest;

    private static class a {
        private final int index;

        a(int i10) {
            this.index = i10;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && ((a) obj).index == this.index;
        }

        public int hashCode() {
            return this.index;
        }
    }

    static {
        a aVar = new a(1);
        T1 = aVar;
        a[] aVarArr = new a[129];
        internedKeys = aVarArr;
        aVarArr[1] = aVar;
        int i10 = 2;
        while (true) {
            a[] aVarArr2 = internedKeys;
            if (i10 >= aVarArr2.length) {
                return;
            }
            aVarArr2[i10] = new a(i10);
            i10++;
        }
    }

    public l(p pVar, e eVar, int i10, byte[] bArr, int i11, byte[] bArr2) {
        super(true);
        this.parameters = pVar;
        this.otsParameters = eVar;
        this.q = i10;
        this.I = org.bouncycastle.util.a.e(bArr);
        this.maxQ = i11;
        this.masterSecret = org.bouncycastle.util.a.e(bArr2);
        this.maxCacheR = 1 << (pVar.c() + 1);
        this.tCache = new WeakHashMap();
        this.tDigest = b.a(pVar.b());
    }

    private byte[] a(int i10) {
        int iC = 1 << m().c();
        if (i10 >= iC) {
            r.a(e(), this.tDigest);
            r.c(i10, this.tDigest);
            r.b((short) -32126, this.tDigest);
            r.a(q.d(k(), e(), i10 - iC, i()), this.tDigest);
            byte[] bArr = new byte[this.tDigest.e()];
            this.tDigest.a(bArr, 0);
            return bArr;
        }
        int i11 = i10 * 2;
        byte[] bArrB = b(i11);
        byte[] bArrB2 = b(i11 + 1);
        r.a(e(), this.tDigest);
        r.c(i10, this.tDigest);
        r.b((short) -31869, this.tDigest);
        r.a(bArrB, this.tDigest);
        r.a(bArrB2, this.tDigest);
        byte[] bArr2 = new byte[this.tDigest.e()];
        this.tDigest.a(bArr2, 0);
        return bArr2;
    }

    private byte[] c(a aVar) {
        synchronized (this.tCache) {
            try {
                byte[] bArr = this.tCache.get(aVar);
                if (bArr != null) {
                    return bArr;
                }
                byte[] bArrA = a(aVar.index);
                this.tCache.put(aVar, bArrA);
                return bArrA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static l g(Object obj) throws Throwable {
        if (obj instanceof l) {
            return (l) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("expected version 0 lms private key");
            }
            p pVarE = p.e(dataInputStream.readInt());
            e eVarF = e.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            int i10 = dataInputStream.readInt();
            int i11 = dataInputStream.readInt();
            int i12 = dataInputStream.readInt();
            if (i12 < 0) {
                throw new IllegalStateException("secret length less than zero");
            }
            if (i12 <= dataInputStream.available()) {
                byte[] bArr2 = new byte[i12];
                dataInputStream.readFully(bArr2);
                return new l(pVarE, eVarF, i10, bArr, i11, bArr2);
            }
            throw new IOException("secret length exceeded " + dataInputStream.available());
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return g(v9.a.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                l lVarG = g(dataInputStream3);
                dataInputStream3.close();
                return lVarG;
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

    public static l h(byte[] bArr, byte[] bArr2) throws Throwable {
        l lVarG = g(bArr);
        lVarG.publicKey = m.a(bArr2);
        return lVarG;
    }

    byte[] b(int i10) {
        if (i10 >= this.maxCacheR) {
            return a(i10);
        }
        a[] aVarArr = internedKeys;
        return c(i10 < aVarArr.length ? aVarArr[i10] : new a(i10));
    }

    public j d() {
        int iC = m().c();
        int iF = f();
        f fVarJ = j();
        int i10 = (1 << iC) + iF;
        byte[][] bArr = new byte[iC][];
        for (int i11 = 0; i11 < iC; i11++) {
            bArr[i11] = b((i10 / (1 << i11)) ^ 1);
        }
        return fVarJ.e(m(), bArr);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.e(this.I);
    }

    public boolean equals(Object obj) {
        m mVar;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (this.q != lVar.q || this.maxQ != lVar.maxQ || !org.bouncycastle.util.a.a(this.I, lVar.I)) {
            return false;
        }
        p pVar = this.parameters;
        if (pVar == null ? lVar.parameters != null : !pVar.equals(lVar.parameters)) {
            return false;
        }
        e eVar = this.otsParameters;
        if (eVar == null ? lVar.otsParameters != null : !eVar.equals(lVar.otsParameters)) {
            return false;
        }
        if (!org.bouncycastle.util.a.a(this.masterSecret, lVar.masterSecret)) {
            return false;
        }
        m mVar2 = this.publicKey;
        if (mVar2 == null || (mVar = lVar.publicKey) == null) {
            return true;
        }
        return mVar2.equals(mVar);
    }

    public synchronized int f() {
        return this.q;
    }

    @Override // org.bouncycastle.pqc.crypto.lms.k, org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return org.bouncycastle.pqc.crypto.lms.a.f().i(0).i(this.parameters.f()).i(this.otsParameters.g()).d(this.I).i(this.q).i(this.maxQ).i(this.masterSecret.length).d(this.masterSecret).b();
    }

    public int hashCode() {
        int iM = ((this.q * 31) + org.bouncycastle.util.a.m(this.I)) * 31;
        p pVar = this.parameters;
        int iHashCode = (iM + (pVar != null ? pVar.hashCode() : 0)) * 31;
        e eVar = this.otsParameters;
        int iHashCode2 = (((((iHashCode + (eVar != null ? eVar.hashCode() : 0)) * 31) + this.maxQ) * 31) + org.bouncycastle.util.a.m(this.masterSecret)) * 31;
        m mVar = this.publicKey;
        return iHashCode2 + (mVar != null ? mVar.hashCode() : 0);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.e(this.masterSecret);
    }

    f j() {
        f fVar;
        synchronized (this) {
            try {
                int i10 = this.q;
                if (i10 >= this.maxQ) {
                    throw new f9.a("ots private key exhausted");
                }
                fVar = new f(this.otsParameters, this.I, i10, this.masterSecret);
                n();
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    public e k() {
        return this.otsParameters;
    }

    public m l() {
        m mVar;
        synchronized (this) {
            try {
                if (this.publicKey == null) {
                    this.publicKey = new m(this.parameters, this.otsParameters, c(T1), this.I);
                }
                mVar = this.publicKey;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mVar;
    }

    public p m() {
        return this.parameters;
    }

    synchronized void n() {
        this.q++;
    }
}
