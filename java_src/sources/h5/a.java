package h5;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static final a AZTEC_DATA_6;
    public static final a AZTEC_DATA_8;
    public static final a AZTEC_PARAM;
    public static final a DATA_MATRIX_FIELD_256;
    public static final a MAXICODE_FIELD_64;
    public static final a QR_CODE_FIELD_256;
    private final int[] expTable;
    private final int generatorBase;
    private final int[] logTable;
    private final b one;
    private final int primitive;
    private final int size;
    private final b zero;
    public static final a AZTEC_DATA_12 = new a(4201, 4096, 1);
    public static final a AZTEC_DATA_10 = new a(1033, 1024, 1);

    static int a(int i10, int i11) {
        return i10 ^ i11;
    }

    public int d() {
        return this.generatorBase;
    }

    b e() {
        return this.zero;
    }

    static {
        a aVar = new a(67, 64, 1);
        AZTEC_DATA_6 = aVar;
        AZTEC_PARAM = new a(19, 16, 1);
        QR_CODE_FIELD_256 = new a(285, 256, 0);
        a aVar2 = new a(301, 256, 1);
        DATA_MATRIX_FIELD_256 = aVar2;
        AZTEC_DATA_8 = aVar2;
        MAXICODE_FIELD_64 = aVar;
    }

    b b(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.zero;
        }
        int[] iArr = new int[i10 + 1];
        iArr[0] = i11;
        return new b(this, iArr);
    }

    int c(int i10) {
        return this.expTable[i10];
    }

    int f(int i10) {
        if (i10 != 0) {
            return this.expTable[(this.size - this.logTable[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    int g(int i10) {
        if (i10 != 0) {
            return this.logTable[i10];
        }
        throw new IllegalArgumentException();
    }

    int h(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.expTable;
        int[] iArr2 = this.logTable;
        return iArr[(iArr2[i10] + iArr2[i11]) % (this.size - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.primitive) + kotlinx.serialization.json.internal.b.COMMA + this.size + ')';
    }

    public a(int i10, int i11, int i12) {
        this.primitive = i10;
        this.size = i11;
        this.generatorBase = i12;
        this.expTable = new int[i11];
        this.logTable = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.expTable[i14] = i13;
            i13 <<= 1;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.logTable[this.expTable[i15]] = i15;
        }
        this.zero = new b(this, new int[]{0});
        this.one = new b(this, new int[]{1});
    }
}
