package i9;

/* JADX INFO: loaded from: classes3.dex */
public class d extends b {
    private short[][] A1inv;
    private short[][] A2inv;
    private short[] b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private short[] f3233b2;
    private a[] layers;
    private int[] vi;

    public d(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, a[] aVarArr) {
        super(true, iArr[iArr.length - 1] - iArr[0]);
        this.A1inv = sArr;
        this.b1 = sArr2;
        this.A2inv = sArr3;
        this.f3233b2 = sArr4;
        this.vi = iArr;
        this.layers = aVarArr;
    }

    public short[] b() {
        return this.b1;
    }

    public short[] c() {
        return this.f3233b2;
    }

    public short[][] d() {
        return this.A1inv;
    }

    public short[][] e() {
        return this.A2inv;
    }

    public a[] f() {
        return this.layers;
    }

    public int[] g() {
        return this.vi;
    }
}
