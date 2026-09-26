package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class Utf8Safe extends Utf8 {

    static class UnpairedSurrogateException extends IllegalArgumentException {
    }

    public static String b(byte[] bArr, int i10, int i11) {
        if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        int i12 = i10 + i11;
        char[] cArr = new char[i11];
        int i13 = 0;
        while (i10 < i12) {
            byte b7 = bArr[i10];
            if (!Utf8.DecodeUtil.g(b7)) {
                break;
            }
            i10++;
            Utf8.DecodeUtil.b(b7, cArr, i13);
            i13++;
        }
        int i14 = i13;
        while (i10 < i12) {
            int i15 = i10 + 1;
            byte b10 = bArr[i10];
            if (Utf8.DecodeUtil.g(b10)) {
                int i16 = i14 + 1;
                Utf8.DecodeUtil.b(b10, cArr, i14);
                while (i15 < i12) {
                    byte b11 = bArr[i15];
                    if (!Utf8.DecodeUtil.g(b11)) {
                        break;
                    }
                    i15++;
                    Utf8.DecodeUtil.b(b11, cArr, i16);
                    i16++;
                }
                i14 = i16;
                i10 = i15;
            } else if (Utf8.DecodeUtil.i(b10)) {
                if (i15 >= i12) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                i10 += 2;
                Utf8.DecodeUtil.d(b10, bArr[i15], cArr, i14);
                i14++;
            } else if (Utf8.DecodeUtil.h(b10)) {
                if (i15 >= i12 - 1) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                int i17 = i10 + 2;
                i10 += 3;
                Utf8.DecodeUtil.c(b10, bArr[i15], bArr[i17], cArr, i14);
                i14++;
            } else {
                if (i15 >= i12 - 2) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                byte b12 = bArr[i15];
                int i18 = i10 + 3;
                byte b13 = bArr[i10 + 2];
                i10 += 4;
                Utf8.DecodeUtil.a(b10, b12, b13, bArr[i18], cArr, i14);
                i14 += 2;
            }
        }
        return new String(cArr, 0, i14);
    }

    public static String c(ByteBuffer byteBuffer, int i10, int i11) {
        if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        int i12 = i10 + i11;
        char[] cArr = new char[i11];
        int i13 = 0;
        while (i10 < i12) {
            byte b7 = byteBuffer.get(i10);
            if (!Utf8.DecodeUtil.g(b7)) {
                break;
            }
            i10++;
            Utf8.DecodeUtil.b(b7, cArr, i13);
            i13++;
        }
        int i14 = i13;
        while (i10 < i12) {
            int i15 = i10 + 1;
            byte b10 = byteBuffer.get(i10);
            if (Utf8.DecodeUtil.g(b10)) {
                int i16 = i14 + 1;
                Utf8.DecodeUtil.b(b10, cArr, i14);
                while (i15 < i12) {
                    byte b11 = byteBuffer.get(i15);
                    if (!Utf8.DecodeUtil.g(b11)) {
                        break;
                    }
                    i15++;
                    Utf8.DecodeUtil.b(b11, cArr, i16);
                    i16++;
                }
                i14 = i16;
                i10 = i15;
            } else if (Utf8.DecodeUtil.i(b10)) {
                if (i15 >= i12) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                i10 += 2;
                Utf8.DecodeUtil.d(b10, byteBuffer.get(i15), cArr, i14);
                i14++;
            } else if (Utf8.DecodeUtil.h(b10)) {
                if (i15 >= i12 - 1) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                int i17 = i10 + 2;
                i10 += 3;
                Utf8.DecodeUtil.c(b10, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                i14++;
            } else {
                if (i15 >= i12 - 2) {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
                byte b12 = byteBuffer.get(i15);
                int i18 = i10 + 3;
                byte b13 = byteBuffer.get(i10 + 2);
                i10 += 4;
                Utf8.DecodeUtil.a(b10, b12, b13, byteBuffer.get(i18), cArr, i14);
                i14 += 2;
            }
        }
        return new String(cArr, 0, i14);
    }
}
