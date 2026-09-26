package l9;

/* JADX INFO: loaded from: classes6.dex */
final class m {
    private final int digestSize;
    private final int len;
    private final int len1;
    private final int len2;
    private final w oid;
    private final org.bouncycastle.asn1.u treeDigest;
    private final int winternitzParameter;

    protected m(org.bouncycastle.asn1.u uVar) {
        if (uVar == null) {
            throw new NullPointerException("treeDigest == null");
        }
        this.treeDigest = uVar;
        x8.c cVarA = f.a(uVar);
        int iH = a0.h(cVarA);
        this.digestSize = iH;
        this.winternitzParameter = 16;
        int iCeil = (int) Math.ceil(((double) (iH * 8)) / ((double) a0.o(16)));
        this.len1 = iCeil;
        int iFloor = ((int) Math.floor(a0.o((16 - 1) * iCeil) / a0.o(16))) + 1;
        this.len2 = iFloor;
        int i10 = iCeil + iFloor;
        this.len = i10;
        l lVarC = l.c(cVarA.d(), iH, 16, i10);
        this.oid = lVarC;
        if (lVarC != null) {
            return;
        }
        throw new IllegalArgumentException("cannot find OID for digest algorithm: " + cVarA.d());
    }

    protected int a() {
        return this.len;
    }

    public org.bouncycastle.asn1.u b() {
        return this.treeDigest;
    }

    protected int c() {
        return this.digestSize;
    }

    protected int d() {
        return this.winternitzParameter;
    }
}
