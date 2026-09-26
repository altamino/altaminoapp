package l5;

/* JADX INFO: loaded from: classes10.dex */
public enum a {
    L(1),
    M(0),
    Q(3),
    H(2);

    private static final a[] FOR_BITS;
    private final int bits;

    public int a() {
        return this.bits;
    }

    static {
        a aVar = L;
        a aVar2 = M;
        a aVar3 = Q;
        FOR_BITS = new a[]{aVar2, aVar, H, aVar3};
    }

    a(int i10) {
        this.bits = i10;
    }
}
