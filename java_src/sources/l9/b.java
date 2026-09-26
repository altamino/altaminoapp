package l9;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class b implements Serializable {
    private static final long serialVersionUID = -3464451825208522308L;
    private final Map<Integer, a> bdsState = new TreeMap();
    private transient long maxIndex;

    b(long j6) {
        this.maxIndex = j6;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readLong() : 0L;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(this.maxIndex);
    }

    a a(int i10) {
        return this.bdsState.get(org.bouncycastle.util.d.c(i10));
    }

    public long b() {
        return this.maxIndex;
    }

    void c(int i10, a aVar) {
        this.bdsState.put(org.bouncycastle.util.d.c(i10), aVar);
    }

    a d(int i10, byte[] bArr, byte[] bArr2, j jVar) {
        return this.bdsState.put(org.bouncycastle.util.d.c(i10), this.bdsState.get(org.bouncycastle.util.d.c(i10)).d(bArr, bArr2, jVar));
    }

    void e(r rVar, long j6, byte[] bArr, byte[] bArr2) {
        x xVarH = rVar.h();
        int iB = xVarH.b();
        long j10 = a0.j(j6, iB);
        int i10 = a0.i(j6, iB);
        j jVar = (j) new j.b().h(j10).p(i10).l();
        int i11 = (1 << iB) - 1;
        if (i10 < i11) {
            if (a(0) == null || i10 == 0) {
                c(0, new a(xVarH, bArr, bArr2, jVar));
            }
            d(0, bArr, bArr2, jVar);
        }
        for (int i12 = 1; i12 < rVar.b(); i12++) {
            int i13 = a0.i(j10, iB);
            j10 = a0.j(j10, iB);
            j jVar2 = (j) new j.b().g(i12).h(j10).p(i13).l();
            if (this.bdsState.get(Integer.valueOf(i12)) == null || a0.n(j6, iB, i12)) {
                this.bdsState.put(Integer.valueOf(i12), new a(xVarH, bArr, bArr2, jVar2));
            }
            if (i13 < i11 && a0.m(j6, iB, i12)) {
                d(i12, bArr, bArr2, jVar2);
            }
        }
    }

    public b f(org.bouncycastle.asn1.u uVar) {
        b bVar = new b(this.maxIndex);
        for (Integer num : this.bdsState.keySet()) {
            bVar.bdsState.put(num, this.bdsState.get(num).h(uVar));
        }
        return bVar;
    }

    b(b bVar, long j6) {
        for (Integer num : bVar.bdsState.keySet()) {
            this.bdsState.put(num, new a(bVar.bdsState.get(num)));
        }
        this.maxIndex = j6;
    }

    b(r rVar, long j6, byte[] bArr, byte[] bArr2) {
        this.maxIndex = (1 << rVar.a()) - 1;
        for (long j10 = 0; j10 < j6; j10++) {
            e(rVar, j10, bArr, bArr2);
        }
    }
}
