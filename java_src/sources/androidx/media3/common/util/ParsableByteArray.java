package androidx.media3.common.util;

import androidx.annotation.Nullable;
import com.google.common.collect.d0;
import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class ParsableByteArray {
    private static final char[] CR_AND_LF = {'\r', '\n'};
    private static final char[] LF = {'\n'};
    private static final d0<Charset> SUPPORTED_CHARSETS_FOR_READLINE = d0.B(com.google.common.base.e.US_ASCII, com.google.common.base.e.UTF_8, com.google.common.base.e.UTF_16, com.google.common.base.e.UTF_16BE, com.google.common.base.e.UTF_16LE);
    private byte[] data;
    private int limit;
    private int position;

    public ParsableByteArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    @Nullable
    public String B() {
        return n((char) 0);
    }

    public void R(byte[] bArr) {
        S(bArr, bArr.length);
    }

    public void S(byte[] bArr, int i10) {
        this.data = bArr;
        this.limit = i10;
        this.position = 0;
    }

    public int a() {
        return this.limit - this.position;
    }

    public byte[] e() {
        return this.data;
    }

    public int f() {
        return this.position;
    }

    public int g() {
        return this.limit;
    }

    private void W(Charset charset) {
        if (m(charset, CR_AND_LF) == '\r') {
            m(charset, LF);
        }
    }

    private int d(Charset charset) {
        int i10;
        if (charset.equals(com.google.common.base.e.UTF_8) || charset.equals(com.google.common.base.e.US_ASCII)) {
            i10 = 1;
        } else {
            if (!charset.equals(com.google.common.base.e.UTF_16) && !charset.equals(com.google.common.base.e.UTF_16LE) && !charset.equals(com.google.common.base.e.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i10 = 2;
        }
        int i11 = this.position;
        while (true) {
            int i12 = this.limit;
            if (i11 >= i12 - (i10 - 1)) {
                return i12;
            }
            if ((charset.equals(com.google.common.base.e.UTF_8) || charset.equals(com.google.common.base.e.US_ASCII)) && Util.D0(this.data[i11])) {
                return i11;
            }
            if (charset.equals(com.google.common.base.e.UTF_16) || charset.equals(com.google.common.base.e.UTF_16BE)) {
                byte[] bArr = this.data;
                if (bArr[i11] == 0 && Util.D0(bArr[i11 + 1])) {
                    return i11;
                }
            }
            if (charset.equals(com.google.common.base.e.UTF_16LE)) {
                byte[] bArr2 = this.data;
                if (bArr2[i11 + 1] == 0 && Util.D0(bArr2[i11])) {
                    return i11;
                }
            }
            i11 += i10;
        }
    }

    private int i(Charset charset) {
        byte bA;
        char c7;
        int i10 = 1;
        if ((charset.equals(com.google.common.base.e.UTF_8) || charset.equals(com.google.common.base.e.US_ASCII)) && a() >= 1) {
            bA = (byte) com.google.common.primitives.b.a(com.google.common.primitives.h.b(this.data[this.position]));
        } else {
            if ((charset.equals(com.google.common.base.e.UTF_16) || charset.equals(com.google.common.base.e.UTF_16BE)) && a() >= 2) {
                byte[] bArr = this.data;
                int i11 = this.position;
                c7 = com.google.common.primitives.b.c(bArr[i11], bArr[i11 + 1]);
            } else {
                if (!charset.equals(com.google.common.base.e.UTF_16LE) || a() < 2) {
                    return 0;
                }
                byte[] bArr2 = this.data;
                int i12 = this.position;
                c7 = com.google.common.primitives.b.c(bArr2[i12 + 1], bArr2[i12]);
            }
            bA = (byte) c7;
            i10 = 2;
        }
        return (com.google.common.primitives.b.a(bA) << 16) + i10;
    }

    public long A() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 7;
        long j6 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
        this.position = i10 + 8;
        return (((long) bArr[i11]) & 255) | j6;
    }

    public String C(int i10) {
        if (i10 == 0) {
            return "";
        }
        int i11 = this.position;
        int i12 = (i11 + i10) - 1;
        String strF = Util.F(this.data, i11, (i12 >= this.limit || this.data[i12] != 0) ? i10 : i10 - 1);
        this.position += i10;
        return strF;
    }

    public short D() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = (bArr[i10] & 255) << 8;
        this.position = i10 + 2;
        return (short) ((bArr[i11] & 255) | i12);
    }

    public String E(int i10) {
        return F(i10, com.google.common.base.e.UTF_8);
    }

    public String F(int i10, Charset charset) {
        String str = new String(this.data, this.position, i10, charset);
        this.position += i10;
        return str;
    }

    public int H() {
        byte[] bArr = this.data;
        int i10 = this.position;
        this.position = i10 + 1;
        return bArr[i10] & 255;
    }

    public int I() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
        this.position = i10 + 4;
        return i11;
    }

    public long J() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 3;
        long j6 = ((((long) bArr[i10]) & 255) << 24) | ((((long) bArr[i10 + 1]) & 255) << 16) | ((((long) bArr[i10 + 2]) & 255) << 8);
        this.position = i10 + 4;
        return (((long) bArr[i11]) & 255) | j6;
    }

    public int K() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 2;
        int i12 = ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10] & 255) << 16);
        this.position = i10 + 3;
        return (bArr[i11] & 255) | i12;
    }

    public int N() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = (bArr[i10] & 255) << 8;
        this.position = i10 + 2;
        return (bArr[i11] & 255) | i12;
    }

    public long O() {
        int i10;
        int i11;
        long j6 = this.data[this.position];
        int i12 = 7;
        while (true) {
            if (i12 >= 0) {
                int i13 = 1 << i12;
                if ((((long) i13) & j6) == 0) {
                    if (i12 < 6) {
                        j6 &= (long) (i13 - 1);
                        i11 = 7 - i12;
                        break;
                    }
                    if (i12 == 7) {
                        i11 = 1;
                        break;
                    }
                } else {
                    i12--;
                }
            }
            i11 = 0;
            break;
        }
        if (i11 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j6);
        }
        for (i10 = 1; i10 < i11; i10++) {
            byte b7 = this.data[this.position + i10];
            if ((b7 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j6);
            }
            j6 = (j6 << 6) | ((long) (b7 & Utf8.REPLACEMENT_BYTE));
        }
        this.position += i11;
        return j6;
    }

    public void T(int i10) {
        Assertions.a(i10 >= 0 && i10 <= this.data.length);
        this.limit = i10;
    }

    public void U(int i10) {
        Assertions.a(i10 >= 0 && i10 <= this.limit);
        this.position = i10;
    }

    public void V(int i10) {
        U(this.position + i10);
    }

    public int b() {
        return this.data.length;
    }

    public char h(Charset charset) {
        Assertions.b(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: " + charset);
        return (char) (i(charset) >> 16);
    }

    public int j() {
        return this.data[this.position] & 255;
    }

    public void k(ParsableBitArray parsableBitArray, int i10) {
        l(parsableBitArray.data, 0, i10);
        parsableBitArray.p(0);
    }

    public void l(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.data, this.position, bArr, i10, i11);
        this.position += i11;
    }

    public int q() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24);
        int i12 = i10 + 3;
        int i13 = i11 | ((bArr[i10 + 2] & 255) << 8);
        this.position = i10 + 4;
        return (bArr[i12] & 255) | i13;
    }

    public int r() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 2;
        int i12 = ((bArr[i10 + 1] & 255) << 8) | (((bArr[i10] & 255) << 24) >> 8);
        this.position = i10 + 3;
        return (bArr[i11] & 255) | i12;
    }

    @Nullable
    public String s() {
        return t(com.google.common.base.e.UTF_8);
    }

    @Nullable
    public String t(Charset charset) {
        Assertions.b(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: " + charset);
        if (a() == 0) {
            return null;
        }
        if (!charset.equals(com.google.common.base.e.US_ASCII)) {
            P();
        }
        String strF = F(d(charset) - this.position, charset);
        if (this.position == this.limit) {
            return strF;
        }
        W(charset);
        return strF;
    }

    public int u() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
        int i12 = i10 + 3;
        int i13 = i11 | ((bArr[i10 + 2] & 255) << 16);
        this.position = i10 + 4;
        return ((bArr[i12] & 255) << 24) | i13;
    }

    public long v() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 7;
        long j6 = (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        this.position = i10 + 8;
        return ((((long) bArr[i11]) & 255) << 56) | j6;
    }

    public short w() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.position = i10 + 2;
        return (short) (((bArr[i11] & 255) << 8) | i12);
    }

    public long x() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 3;
        long j6 = (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16);
        this.position = i10 + 4;
        return ((((long) bArr[i11]) & 255) << 24) | j6;
    }

    public int z() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.position = i10 + 2;
        return ((bArr[i11] & 255) << 8) | i12;
    }

    public ParsableByteArray(int i10) {
        this.data = new byte[i10];
        this.limit = i10;
    }

    private char m(Charset charset, char[] cArr) {
        int i10 = i(charset);
        if (i10 != 0) {
            char c7 = (char) (i10 >> 16);
            if (com.google.common.primitives.b.b(cArr, c7)) {
                this.position += i10 & 65535;
                return c7;
            }
            return (char) 0;
        }
        return (char) 0;
    }

    public int G() {
        return (H() << 21) | (H() << 14) | (H() << 7) | H();
    }

    public int L() {
        int iQ = q();
        if (iQ >= 0) {
            return iQ;
        }
        throw new IllegalStateException("Top bit not zero: " + iQ);
    }

    public long M() {
        long jA = A();
        if (jA >= 0) {
            return jA;
        }
        throw new IllegalStateException("Top bit not zero: " + jA);
    }

    @Nullable
    public Charset P() {
        if (a() >= 3) {
            byte[] bArr = this.data;
            int i10 = this.position;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.position = i10 + 3;
                return com.google.common.base.e.UTF_8;
            }
        }
        if (a() >= 2) {
            byte[] bArr2 = this.data;
            int i11 = this.position;
            byte b7 = bArr2[i11];
            if (b7 == -2 && bArr2[i11 + 1] == -1) {
                this.position = i11 + 2;
                return com.google.common.base.e.UTF_16BE;
            }
            if (b7 == -1 && bArr2[i11 + 1] == -2) {
                this.position = i11 + 2;
                return com.google.common.base.e.UTF_16LE;
            }
            return null;
        }
        return null;
    }

    public void Q(int i10) {
        byte[] bArr;
        if (b() < i10) {
            bArr = new byte[i10];
        } else {
            bArr = this.data;
        }
        S(bArr, i10);
    }

    public void c(int i10) {
        if (i10 > b()) {
            this.data = Arrays.copyOf(this.data, i10);
        }
    }

    @Nullable
    public String n(char c7) {
        if (a() == 0) {
            return null;
        }
        int i10 = this.position;
        while (i10 < this.limit && this.data[i10] != c7) {
            i10++;
        }
        byte[] bArr = this.data;
        int i11 = this.position;
        String strF = Util.F(bArr, i11, i10 - i11);
        this.position = i10;
        if (i10 < this.limit) {
            this.position = i10 + 1;
        }
        return strF;
    }

    public double o() {
        return Double.longBitsToDouble(A());
    }

    public float p() {
        return Float.intBitsToFloat(q());
    }

    public int y() {
        int iU = u();
        if (iU >= 0) {
            return iU;
        }
        throw new IllegalStateException("Top bit not zero: " + iU);
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i10) {
        this.data = bArr;
        this.limit = i10;
    }
}
