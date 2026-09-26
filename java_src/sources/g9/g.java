package g9;

/* JADX INFO: loaded from: classes8.dex */
public class g extends d {
    private org.bouncycastle.pqc.math.linearalgebra.a g;
    private int n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3231t;

    public g(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.a aVar) {
        super(false, null);
        this.n = i10;
        this.f3231t = i11;
        this.g = new org.bouncycastle.pqc.math.linearalgebra.a(aVar);
    }

    public org.bouncycastle.pqc.math.linearalgebra.a a() {
        return this.g;
    }

    public int b() {
        return this.n;
    }

    public int c() {
        return this.f3231t;
    }
}
