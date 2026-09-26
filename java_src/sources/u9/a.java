package u9;

import java.security.spec.KeySpec;

/* JADX INFO: loaded from: classes9.dex */
public class a implements KeySpec {
    private short[][] A1inv;
    private short[][] A2inv;
    private short[] b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private short[] f3354b2;
    private i9.a[] layers;
    private int[] vi;

    public a(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, i9.a[] aVarArr) {
        this.A1inv = sArr;
        this.b1 = sArr2;
        this.A2inv = sArr3;
        this.f3354b2 = sArr4;
        this.vi = iArr;
        this.layers = aVarArr;
    }

    public short[] a() {
        return this.b1;
    }

    public short[] b() {
        return this.f3354b2;
    }

    public short[][] c() {
        return this.A1inv;
    }

    public short[][] d() {
        return this.A2inv;
    }

    public i9.a[] e() {
        return this.layers;
    }

    public int[] f() {
        return this.vi;
    }
}
