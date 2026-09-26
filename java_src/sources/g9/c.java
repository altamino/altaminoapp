package g9;

/* JADX INFO: loaded from: classes8.dex */
public class c extends a {
    private org.bouncycastle.pqc.math.linearalgebra.a matrixG;
    private int n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3228t;

    public c(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.a aVar, String str) {
        super(false, str);
        this.n = i10;
        this.f3228t = i11;
        this.matrixG = new org.bouncycastle.pqc.math.linearalgebra.a(aVar);
    }

    public org.bouncycastle.pqc.math.linearalgebra.a b() {
        return this.matrixG;
    }

    public int c() {
        return this.n;
    }

    public int d() {
        return this.f3228t;
    }
}
