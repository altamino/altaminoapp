package l9;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class x {
    private static final Map<Integer, x> paramsLookupTable;
    private final int height;
    private final int k;
    private final w oid;
    private final String treeDigest;
    private final org.bouncycastle.asn1.u treeDigestOID;
    private final int treeDigestSize;
    private final int winternitzParameter;
    private final m wotsPlusParams;

    static {
        HashMap map = new HashMap();
        Integer numC = org.bouncycastle.util.d.c(1);
        org.bouncycastle.asn1.u uVar = t8.a.id_sha256;
        map.put(numC, new x(10, uVar));
        map.put(org.bouncycastle.util.d.c(2), new x(16, uVar));
        map.put(org.bouncycastle.util.d.c(3), new x(20, uVar));
        Integer numC2 = org.bouncycastle.util.d.c(4);
        org.bouncycastle.asn1.u uVar2 = t8.a.id_sha512;
        map.put(numC2, new x(10, uVar2));
        map.put(org.bouncycastle.util.d.c(5), new x(16, uVar2));
        map.put(org.bouncycastle.util.d.c(6), new x(20, uVar2));
        Integer numC3 = org.bouncycastle.util.d.c(7);
        org.bouncycastle.asn1.u uVar3 = t8.a.id_shake128;
        map.put(numC3, new x(10, uVar3));
        map.put(org.bouncycastle.util.d.c(8), new x(16, uVar3));
        map.put(org.bouncycastle.util.d.c(9), new x(20, uVar3));
        Integer numC4 = org.bouncycastle.util.d.c(10);
        org.bouncycastle.asn1.u uVar4 = t8.a.id_shake256;
        map.put(numC4, new x(10, uVar4));
        map.put(org.bouncycastle.util.d.c(11), new x(16, uVar4));
        map.put(org.bouncycastle.util.d.c(12), new x(20, uVar4));
        paramsLookupTable = Collections.unmodifiableMap(map);
    }

    public x(int i10, org.bouncycastle.asn1.u uVar) {
        if (i10 < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        }
        if (uVar == null) {
            throw new NullPointerException("digest == null");
        }
        this.height = i10;
        this.k = a();
        String strB = f.b(uVar);
        this.treeDigest = strB;
        this.treeDigestOID = uVar;
        m mVar = new m(uVar);
        this.wotsPlusParams = mVar;
        int iC = mVar.c();
        this.treeDigestSize = iC;
        int iD = mVar.d();
        this.winternitzParameter = iD;
        this.oid = e.c(strB, iC, iD, mVar.a(), i10);
    }

    private int a() {
        int i10 = 2;
        while (true) {
            int i11 = this.height;
            if (i10 > i11) {
                throw new IllegalStateException("should never happen...");
            }
            if ((i11 - i10) % 2 == 0) {
                return i10;
            }
            i10++;
        }
    }

    public static x k(int i10) {
        return paramsLookupTable.get(org.bouncycastle.util.d.c(i10));
    }

    public int b() {
        return this.height;
    }

    int c() {
        return this.k;
    }

    int d() {
        return this.wotsPlusParams.a();
    }

    w e() {
        return this.oid;
    }

    String f() {
        return this.treeDigest;
    }

    public org.bouncycastle.asn1.u g() {
        return this.treeDigestOID;
    }

    public int h() {
        return this.treeDigestSize;
    }

    k i() {
        return new k(this.wotsPlusParams);
    }

    int j() {
        return this.winternitzParameter;
    }

    public x(int i10, x8.c cVar) {
        this(i10, f.c(cVar.d()));
    }
}
