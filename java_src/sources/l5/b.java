package l5;

/* JADX INFO: loaded from: classes10.dex */
public enum b {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);

    private final int bits;
    private final int[] characterCountBitsForVersions;

    public int a() {
        return this.bits;
    }

    b(int[] iArr, int i10) {
        this.characterCountBitsForVersions = iArr;
        this.bits = i10;
    }

    public int b(c cVar) {
        char c7;
        int iF = cVar.f();
        if (iF <= 9) {
            c7 = 0;
        } else if (iF <= 26) {
            c7 = 1;
        } else {
            c7 = 2;
        }
        return this.characterCountBitsForVersions[c7];
    }
}
