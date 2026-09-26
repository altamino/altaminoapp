package u9;

import java.security.spec.KeySpec;

/* JADX INFO: loaded from: classes9.dex */
public class b implements KeySpec {
    private short[][] coeffquadratic;
    private short[] coeffscalar;
    private short[][] coeffsingular;
    private int docLength;

    public b(int i10, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.docLength = i10;
        this.coeffquadratic = sArr;
        this.coeffsingular = sArr2;
        this.coeffscalar = sArr3;
    }

    public short[][] a() {
        return this.coeffquadratic;
    }

    public short[] b() {
        return this.coeffscalar;
    }

    public short[][] c() {
        return this.coeffsingular;
    }

    public int d() {
        return this.docLength;
    }
}
