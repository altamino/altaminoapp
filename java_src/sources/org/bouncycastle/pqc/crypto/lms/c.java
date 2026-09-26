package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c extends k {
    private long index;
    private final long indexLimit;
    private final boolean isShard;
    private List<l> keys;
    private final int l;
    private d publicKey;
    private List<n> sig;

    public c(int i10, List<l> list, List<n> list2, long j6, long j10) {
        super(true);
        this.index = 0L;
        this.l = i10;
        this.keys = Collections.unmodifiableList(list);
        this.sig = Collections.unmodifiableList(list2);
        this.index = j6;
        this.indexLimit = j10;
        this.isShard = false;
        i();
    }

    public static c b(Object obj) throws Throwable {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("unknown version for hss private key");
            }
            int i10 = dataInputStream.readInt();
            long j6 = dataInputStream.readLong();
            long j10 = dataInputStream.readLong();
            boolean z6 = dataInputStream.readBoolean();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(l.g(obj));
            }
            for (int i12 = 0; i12 < i10 - 1; i12++) {
                arrayList2.add(n.a(obj));
            }
            return new c(i10, arrayList, arrayList2, j6, j10, z6);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return b(v9.a.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                c cVarB = b(dataInputStream3);
                dataInputStream3.close();
                return cVarB;
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

    public static c c(byte[] bArr, byte[] bArr2) throws Throwable {
        c cVarB = b(bArr);
        cVarB.publicKey = d.a(bArr2);
        return cVarB;
    }

    private static c h(c cVar) {
        try {
            return b(cVar.getEncoded());
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public synchronized long a() {
        return this.index;
    }

    protected Object clone() throws CloneNotSupportedException {
        return h(this);
    }

    synchronized List<l> d() {
        return this.keys;
    }

    public int e() {
        return this.l;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.l == cVar.l && this.isShard == cVar.isShard && this.indexLimit == cVar.indexLimit && this.index == cVar.index && this.keys.equals(cVar.keys)) {
            return this.sig.equals(cVar.sig);
        }
        return false;
    }

    public synchronized d f() {
        return new d(this.l, g().l());
    }

    l g() {
        return this.keys.get(0);
    }

    @Override // org.bouncycastle.pqc.crypto.lms.k, org.bouncycastle.util.c
    public synchronized byte[] getEncoded() throws IOException {
        a aVarA;
        try {
            aVarA = a.f().i(0).i(this.l).j(this.index).j(this.indexLimit).a(this.isShard);
            Iterator<l> it = this.keys.iterator();
            while (it.hasNext()) {
                aVarA.c(it.next());
            }
            Iterator<n> it2 = this.sig.iterator();
            while (it2.hasNext()) {
                aVarA.c(it2.next());
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVarA.b();
    }

    public int hashCode() {
        int iHashCode = ((((((this.l * 31) + (this.isShard ? 1 : 0)) * 31) + this.keys.hashCode()) * 31) + this.sig.hashCode()) * 31;
        long j6 = this.indexLimit;
        int i10 = (iHashCode + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j10 = this.index;
        return i10 + ((int) (j10 ^ (j10 >>> 32)));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x00d3  */
    void i() {
        boolean z6;
        List<l> listD = d();
        int size = listD.size();
        long[] jArr = new long[size];
        long jA = a();
        for (int size2 = listD.size() - 1; size2 >= 0; size2--) {
            p pVarM = listD.get(size2).m();
            jArr[size2] = ((long) ((1 << pVarM.c()) - 1)) & jA;
            jA >>>= pVarM.c();
        }
        l[] lVarArr = (l[]) listD.toArray(new l[listD.size()]);
        List<n> list = this.sig;
        n[] nVarArr = (n[]) list.toArray(new n[list.size()]);
        l lVarG = g();
        if (lVarArr[0].f() - 1 != jArr[0]) {
            lVarArr[0] = i.a(lVarG.m(), lVarG.k(), (int) jArr[0], lVarG.e(), lVarG.i());
            z6 = true;
        } else {
            z6 = false;
        }
        for (int i10 = 1; i10 < size; i10++) {
            int i11 = i10 - 1;
            l lVar = lVarArr[i11];
            byte[] bArr = new byte[16];
            byte[] bArr2 = new byte[32];
            s sVar = new s(lVar.e(), lVar.i(), b.a(lVar.k().b()));
            sVar.e((int) jArr[i11]);
            sVar.d(-2);
            sVar.a(bArr2, true);
            byte[] bArr3 = new byte[32];
            boolean z10 = false;
            sVar.a(bArr3, false);
            System.arraycopy(bArr3, 0, bArr, 0, 16);
            if (i10 < size - 1) {
                if (jArr[i10] == lVarArr[i10].f() - 1) {
                    z10 = true;
                }
            } else if (jArr[i10] == lVarArr[i10].f()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (org.bouncycastle.util.a.a(bArr, lVarArr[i10].e()) && org.bouncycastle.util.a.a(bArr2, lVarArr[i10].i())) {
                if (!z10) {
                    lVarArr[i10] = i.a(listD.get(i10).m(), listD.get(i10).k(), (int) jArr[i10], bArr, bArr2);
                }
            } else {
                l lVarA = i.a(listD.get(i10).m(), listD.get(i10).k(), (int) jArr[i10], bArr, bArr2);
                lVarArr[i10] = lVarA;
                nVarArr[i11] = i.c(lVarArr[i11], lVarA.l().b());
            }
            z6 = true;
        }
        if (z6) {
            j(lVarArr, nVarArr);
        }
    }

    protected void j(l[] lVarArr, n[] nVarArr) {
        synchronized (this) {
            this.keys = Collections.unmodifiableList(Arrays.asList(lVarArr));
            this.sig = Collections.unmodifiableList(Arrays.asList(nVarArr));
        }
    }

    private c(int i10, List<l> list, List<n> list2, long j6, long j10, boolean z6) {
        super(true);
        this.index = 0L;
        this.l = i10;
        this.keys = Collections.unmodifiableList(list);
        this.sig = Collections.unmodifiableList(list2);
        this.index = j6;
        this.indexLimit = j10;
        this.isShard = z6;
    }
}
