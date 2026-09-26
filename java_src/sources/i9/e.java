package i9;

/* JADX INFO: loaded from: classes3.dex */
public class e extends b {
    private short[][] coeffquadratic;
    private short[] coeffscalar;
    private short[][] coeffsingular;

    public e(int i10, short[][] sArr, short[][] sArr2, short[] sArr3) {
        super(false, i10);
        this.coeffquadratic = sArr;
        this.coeffsingular = sArr2;
        this.coeffscalar = sArr3;
    }

    public short[][] b() {
        return this.coeffquadratic;
    }

    public short[] c() {
        return this.coeffscalar;
    }

    public short[][] d() {
        return this.coeffsingular;
    }
}
