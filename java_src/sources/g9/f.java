package g9;

import org.bouncycastle.pqc.math.linearalgebra.i;
import org.bouncycastle.pqc.math.linearalgebra.j;
import org.bouncycastle.pqc.math.linearalgebra.l;

/* JADX INFO: loaded from: classes8.dex */
public class f extends d {
    private org.bouncycastle.pqc.math.linearalgebra.b field;
    private j goppaPoly;
    private org.bouncycastle.pqc.math.linearalgebra.a h;
    private int k;
    private int n;
    private String oid;
    private i p1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private i f3230p2;
    private j[] qInv;
    private org.bouncycastle.pqc.math.linearalgebra.a sInv;

    public f(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.b bVar, j jVar, i iVar, i iVar2, org.bouncycastle.pqc.math.linearalgebra.a aVar) {
        super(true, null);
        this.k = i11;
        this.n = i10;
        this.field = bVar;
        this.goppaPoly = jVar;
        this.sInv = aVar;
        this.p1 = iVar;
        this.f3230p2 = iVar2;
        this.h = org.bouncycastle.pqc.math.linearalgebra.d.a(bVar, jVar);
        this.qInv = new l(bVar, jVar).c();
    }

    public org.bouncycastle.pqc.math.linearalgebra.b a() {
        return this.field;
    }

    public j b() {
        return this.goppaPoly;
    }

    public int c() {
        return this.k;
    }

    public int d() {
        return this.n;
    }

    public i e() {
        return this.p1;
    }

    public i f() {
        return this.f3230p2;
    }

    public org.bouncycastle.pqc.math.linearalgebra.a g() {
        return this.sInv;
    }

    public f(int i10, int i11, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[][] bArr7) {
        super(true, null);
        this.n = i10;
        this.k = i11;
        org.bouncycastle.pqc.math.linearalgebra.b bVar = new org.bouncycastle.pqc.math.linearalgebra.b(bArr);
        this.field = bVar;
        this.goppaPoly = new j(bVar, bArr2);
        this.sInv = new org.bouncycastle.pqc.math.linearalgebra.a(bArr3);
        this.p1 = new i(bArr4);
        this.f3230p2 = new i(bArr5);
        this.h = new org.bouncycastle.pqc.math.linearalgebra.a(bArr6);
        this.qInv = new j[bArr7.length];
        for (int i12 = 0; i12 < bArr7.length; i12++) {
            this.qInv[i12] = new j(this.field, bArr7[i12]);
        }
    }
}
