package org.bouncycastle.pqc.math.linearalgebra;

/* JADX INFO: loaded from: classes10.dex */
public abstract class h {
    public static final char MATRIX_TYPE_RANDOM_LT = 'L';
    public static final char MATRIX_TYPE_RANDOM_REGULAR = 'R';
    public static final char MATRIX_TYPE_RANDOM_UT = 'U';
    public static final char MATRIX_TYPE_UNIT = 'I';
    public static final char MATRIX_TYPE_ZERO = 'Z';
    protected int numColumns;
    protected int numRows;

    public int a() {
        return this.numColumns;
    }

    public int b() {
        return this.numRows;
    }
}
