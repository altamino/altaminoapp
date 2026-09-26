package androidx.emoji2.text.flatbuffer;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    static class DecodeUtil {
        static void b(byte b7, char[] cArr, int i10) {
            cArr[i10] = (char) b7;
        }

        private static char e(int i10) {
            return (char) ((i10 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean f(byte b7) {
            return b7 > -65;
        }

        static boolean g(byte b7) {
            return b7 >= 0;
        }

        static boolean h(byte b7) {
            return b7 < -16;
        }

        static boolean i(byte b7) {
            return b7 < -32;
        }

        private static char j(int i10) {
            return (char) ((i10 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int k(byte b7) {
            return b7 & okio.Utf8.REPLACEMENT_BYTE;
        }

        static void d(byte b7, byte b10, char[] cArr, int i10) throws IllegalArgumentException {
            if (b7 < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            }
            if (f(b10)) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            cArr[i10] = (char) (((b7 & c.US) << 6) | k(b10));
        }

        DecodeUtil() {
        }

        static void a(byte b7, byte b10, byte b11, byte b12, char[] cArr, int i10) throws IllegalArgumentException {
            if (!f(b10) && (((b7 << c.FS) + (b10 + 112)) >> 30) == 0 && !f(b11) && !f(b12)) {
                int iK = ((b7 & 7) << 18) | (k(b10) << 12) | (k(b11) << 6) | k(b12);
                cArr[i10] = e(iK);
                cArr[i10 + 1] = j(iK);
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        static void c(byte b7, byte b10, byte b11, char[] cArr, int i10) throws IllegalArgumentException {
            if (!f(b10) && ((b7 != -32 || b10 >= -96) && ((b7 != -19 || b10 < -96) && !f(b11)))) {
                cArr[i10] = (char) (((b7 & c.SI) << 12) | (k(b10) << 6) | k(b11));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }
    }

    static class UnpairedSurrogateException extends IllegalArgumentException {
    }

    public static Utf8 a() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }
}
