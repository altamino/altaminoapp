package g9;

import org.bouncycastle.pqc.math.linearalgebra.i;
import org.bouncycastle.pqc.math.linearalgebra.j;
import org.bouncycastle.pqc.math.linearalgebra.l;

/* JADX INFO: loaded from: classes8.dex */
public class b extends a {
    private org.bouncycastle.pqc.math.linearalgebra.b field;
    private j goppaPoly;
    private org.bouncycastle.pqc.math.linearalgebra.a h;
    private int k;
    private int n;
    private i p;
    private j[] qInv;

    public b(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.b bVar, j jVar, org.bouncycastle.pqc.math.linearalgebra.a aVar, i iVar, String str) {
        super(true, str);
        this.n = i10;
        this.k = i11;
        this.field = bVar;
        this.goppaPoly = jVar;
        this.h = aVar;
        this.p = iVar;
        this.qInv = new l(bVar, jVar).c();
    }

    public org.bouncycastle.pqc.math.linearalgebra.b b() {
        return this.field;
    }

    public j c() {
        return this.goppaPoly;
    }

    public org.bouncycastle.pqc.math.linearalgebra.a d() {
        return this.h;
    }

    public int e() {
        return this.k;
    }

    public int f() {
        return this.n;
    }

    public i g() {
        return this.p;
    }

    public b(int i10, int i11, org.bouncycastle.pqc.math.linearalgebra.b bVar, j jVar, i iVar, String str) {
        this(i10, i11, bVar, jVar, org.bouncycastle.pqc.math.linearalgebra.d.a(bVar, jVar), iVar, str);
    }
}
