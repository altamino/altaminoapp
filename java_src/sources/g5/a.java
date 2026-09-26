package g5;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements Cloneable {
    private int[] bits;
    private int size;

    public a() {
        this.size = 0;
        this.bits = new int[1];
    }

    public int i() {
        return this.size;
    }

    public void l(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < 8; i15++) {
                if (g(i10)) {
                    i14 |= 1 << (7 - i15);
                }
                i10++;
            }
            bArr[i11 + i13] = (byte) i14;
        }
    }

    public a(int i10) {
        this.size = i10;
        this.bits = k(i10);
    }

    private void f(int i10) {
        if (i10 > (this.bits.length << 5)) {
            int[] iArrK = k(i10);
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, iArrK, 0, iArr.length);
            this.bits = iArrK;
        }
    }

    private static int[] k(int i10) {
        return new int[(i10 + 31) / 32];
    }

    public void b(boolean z6) {
        f(this.size + 1);
        if (z6) {
            int[] iArr = this.bits;
            int i10 = this.size;
            int i11 = i10 / 32;
            iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
        }
        this.size++;
    }

    public void c(a aVar) {
        int i10 = aVar.size;
        f(this.size + i10);
        for (int i11 = 0; i11 < i10; i11++) {
            b(aVar.g(i11));
        }
    }

    public void d(int i10, int i11) {
        if (i11 < 0 || i11 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        f(this.size + i11);
        while (i11 > 0) {
            boolean z6 = true;
            if (((i10 >> (i11 - 1)) & 1) != 1) {
                z6 = false;
            }
            b(z6);
            i11--;
        }
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a clone() {
        return new a((int[]) this.bits.clone(), this.size);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.size == aVar.size && Arrays.equals(this.bits, aVar.bits);
    }

    public boolean g(int i10) {
        return ((1 << (i10 & 31)) & this.bits[i10 / 32]) != 0;
    }

    public int hashCode() {
        return (this.size * 31) + Arrays.hashCode(this.bits);
    }

    public int j() {
        return (this.size + 7) / 8;
    }

    public void m(a aVar) {
        if (this.size != aVar.size) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = iArr[i10] ^ aVar.bits[i10];
            i10++;
        }
    }

    public String toString() {
        int i10 = this.size;
        StringBuilder sb = new StringBuilder(i10 + (i10 / 8) + 1);
        for (int i11 = 0; i11 < this.size; i11++) {
            if ((i11 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(g(i11) ? 'X' : '.');
        }
        return sb.toString();
    }

    a(int[] iArr, int i10) {
        this.bits = iArr;
        this.size = i10;
    }
}
