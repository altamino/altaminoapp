package g5;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements Cloneable {
    private final int[] bits;
    private final int height;
    private final int rowSize;
    private final int width;

    public b(int i10) {
        this(i10, i10);
    }

    public int g() {
        return this.height;
    }

    public int i() {
        return this.width;
    }

    public b(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.width = i10;
        this.height = i11;
        int i12 = (i10 + 31) / 32;
        this.rowSize = i12;
        this.bits = new int[i12 * i11];
    }

    private String b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.height * (this.width + 1));
        for (int i10 = 0; i10 < this.height; i10++) {
            for (int i11 = 0; i11 < this.width; i11++) {
                sb.append(f(i11, i10) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public void c() {
        int length = this.bits.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.bits[i10] = 0;
        }
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b clone() {
        return new b(this.width, this.height, this.rowSize, (int[]) this.bits.clone());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.width == bVar.width && this.height == bVar.height && this.rowSize == bVar.rowSize && Arrays.equals(this.bits, bVar.bits);
    }

    public boolean f(int i10, int i11) {
        return ((this.bits[(i11 * this.rowSize) + (i10 / 32)] >>> (i10 & 31)) & 1) != 0;
    }

    public int hashCode() {
        int i10 = this.width;
        return (((((((i10 * 31) + i10) * 31) + this.height) * 31) + this.rowSize) * 31) + Arrays.hashCode(this.bits);
    }

    public void j(int i10, int i11) {
        int i12 = (i11 * this.rowSize) + (i10 / 32);
        int[] iArr = this.bits;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    public void k(int i10, int i11, int i12, int i13) {
        if (i11 < 0 || i10 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i13 <= 0 || i12 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i14 = i12 + i10;
        int i15 = i13 + i11;
        if (i15 > this.height || i14 > this.width) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i11 < i15) {
            int i16 = this.rowSize * i11;
            for (int i17 = i10; i17 < i14; i17++) {
                int[] iArr = this.bits;
                int i18 = (i17 / 32) + i16;
                iArr[i18] = iArr[i18] | (1 << (i17 & 31));
            }
            i11++;
        }
    }

    public String l(String str, String str2) {
        return b(str, str2, "\n");
    }

    public String toString() {
        return l("X ", "  ");
    }

    private b(int i10, int i11, int i12, int[] iArr) {
        this.width = i10;
        this.height = i11;
        this.rowSize = i12;
        this.bits = iArr;
    }
}
