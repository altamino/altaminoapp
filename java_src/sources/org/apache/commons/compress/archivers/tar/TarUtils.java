package org.apache.commons.compress.archivers.tar;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;

/* JADX INFO: loaded from: classes6.dex */
public class TarUtils {
    private static final int BYTE_MASK = 255;
    static final ZipEncoding DEFAULT_ENCODING = ZipEncodingHelper.getZipEncoding(null);
    static final ZipEncoding FALLBACK_ENCODING = new ZipEncoding() { // from class: org.apache.commons.compress.archivers.tar.TarUtils.1
        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public boolean canEncode(String str) {
            return true;
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public String decode(byte[] bArr) {
            StringBuilder sb = new StringBuilder(bArr.length);
            for (byte b7 : bArr) {
                if (b7 == 0) {
                    break;
                }
                sb.append((char) (b7 & 255));
            }
            return sb.toString();
        }

        @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
        public ByteBuffer encode(String str) {
            int length = str.length();
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                bArr[i10] = (byte) str.charAt(i10);
            }
            return ByteBuffer.wrap(bArr);
        }
    };

    public static long computeCheckSum(byte[] bArr) {
        long j6 = 0;
        for (byte b7 : bArr) {
            j6 += (long) (b7 & 255);
        }
        return j6;
    }

    public static int formatNameBytes(String str, byte[] bArr, int i10, int i11) {
        try {
            try {
                return formatNameBytes(str, bArr, i10, i11, DEFAULT_ENCODING);
            } catch (IOException unused) {
                return formatNameBytes(str, bArr, i10, i11, FALLBACK_ENCODING);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String parseName(byte[] bArr, int i10, int i11) {
        try {
            try {
                return parseName(bArr, i10, i11, DEFAULT_ENCODING);
            } catch (IOException unused) {
                return parseName(bArr, i10, i11, FALLBACK_ENCODING);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static String exceptionMessage(byte[] bArr, int i10, int i11, int i12, byte b7) {
        return "Invalid byte " + ((int) b7) + " at offset " + (i12 - i10) + " in '" + new String(bArr, i10, i11).replaceAll("\u0000", "{NUL}") + "' len=" + i11;
    }

    public static int formatCheckSumOctalBytes(long j6, byte[] bArr, int i10, int i11) {
        int i12 = i11 - 2;
        formatUnsignedOctalString(j6, bArr, i10, i12);
        bArr[i12 + i10] = 0;
        bArr[(i11 - 1) + i10] = 32;
        return i10 + i11;
    }

    private static void formatLongBinary(long j6, byte[] bArr, int i10, int i11, boolean z6) {
        int i12 = (i11 - 1) * 8;
        long j10 = 1 << i12;
        long jAbs = Math.abs(j6);
        if (jAbs < 0 || jAbs >= j10) {
            throw new IllegalArgumentException("Value " + j6 + " is too large for " + i11 + " byte field.");
        }
        if (z6) {
            jAbs = ((jAbs ^ (j10 - 1)) + 1) | (255 << i12);
        }
        for (int i13 = (i11 + i10) - 1; i13 >= i10; i13--) {
            bArr[i13] = (byte) jAbs;
            jAbs >>= 8;
        }
    }

    public static int formatLongOctalBytes(long j6, byte[] bArr, int i10, int i11) {
        int i12 = i11 - 1;
        formatUnsignedOctalString(j6, bArr, i10, i12);
        bArr[i12 + i10] = 32;
        return i10 + i11;
    }

    public static int formatLongOctalOrBinaryBytes(long j6, byte[] bArr, int i10, int i11) {
        long j10 = i11 == 8 ? TarConstants.MAXID : TarConstants.MAXSIZE;
        boolean z6 = j6 < 0;
        if (!z6 && j6 <= j10) {
            return formatLongOctalBytes(j6, bArr, i10, i11);
        }
        if (i11 < 9) {
            formatLongBinary(j6, bArr, i10, i11, z6);
        } else {
            formatBigIntegerBinary(j6, bArr, i10, i11, z6);
        }
        bArr[i10] = (byte) (z6 ? 255 : 128);
        return i10 + i11;
    }

    public static int formatOctalBytes(long j6, byte[] bArr, int i10, int i11) {
        int i12 = i11 - 2;
        formatUnsignedOctalString(j6, bArr, i10, i12);
        bArr[i12 + i10] = 32;
        bArr[(i11 - 1) + i10] = 0;
        return i10 + i11;
    }

    public static void formatUnsignedOctalString(long j6, byte[] bArr, int i10, int i11) {
        int i12;
        int i13 = i11 - 1;
        if (j6 == 0) {
            i12 = i11 - 2;
            bArr[i13 + i10] = TarConstants.LF_NORMAL;
        } else {
            long j10 = j6;
            while (i13 >= 0 && j10 != 0) {
                bArr[i10 + i13] = (byte) (((byte) (7 & j10)) + TarConstants.LF_NORMAL);
                j10 >>>= 3;
                i13--;
            }
            if (j10 != 0) {
                throw new IllegalArgumentException(j6 + "=" + Long.toOctalString(j6) + " will not fit in octal number buffer of length " + i11);
            }
            i12 = i13;
        }
        while (i12 >= 0) {
            bArr[i10 + i12] = TarConstants.LF_NORMAL;
            i12--;
        }
    }

    private static long parseBinaryBigInteger(byte[] bArr, int i10, int i11, boolean z6) {
        int i12 = i11 - 1;
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10 + 1, bArr2, 0, i12);
        BigInteger bigInteger = new BigInteger(bArr2);
        if (z6) {
            bigInteger = bigInteger.add(BigInteger.valueOf(-1L)).not();
        }
        if (bigInteger.bitLength() <= 63) {
            long jLongValue = bigInteger.longValue();
            return z6 ? -jLongValue : jLongValue;
        }
        throw new IllegalArgumentException("At offset " + i10 + ", " + i11 + " byte binary number exceeds maximum signed long value");
    }

    private static long parseBinaryLong(byte[] bArr, int i10, int i11, boolean z6) {
        if (i11 >= 9) {
            throw new IllegalArgumentException("At offset " + i10 + ", " + i11 + " byte binary number exceeds maximum signed long value");
        }
        long jPow = 0;
        for (int i12 = 1; i12 < i11; i12++) {
            jPow = (jPow << 8) + ((long) (bArr[i10 + i12] & 255));
        }
        if (z6) {
            jPow = (jPow - 1) ^ (((long) Math.pow(2.0d, ((double) (i11 - 1)) * 8.0d)) - 1);
        }
        return z6 ? -jPow : jPow;
    }

    public static boolean parseBoolean(byte[] bArr, int i10) {
        return bArr[i10] == 1;
    }

    public static long parseOctal(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        if (i11 < 2) {
            throw new IllegalArgumentException("Length " + i11 + " must be at least 2");
        }
        long j6 = 0;
        if (bArr[i10] == 0) {
            return 0L;
        }
        int i13 = i10;
        while (i13 < i12 && bArr[i13] == 32) {
            i13++;
        }
        byte b7 = bArr[i12 - 1];
        while (i13 < i12 && (b7 == 0 || b7 == 32)) {
            b7 = bArr[i12 - 2];
            i12--;
        }
        while (i13 < i12) {
            byte b10 = bArr[i13];
            if (b10 < 48 || b10 > 55) {
                throw new IllegalArgumentException(exceptionMessage(bArr, i10, i11, i13, b10));
            }
            j6 = (j6 << 3) + ((long) (b10 - 48));
            i13++;
        }
        return j6;
    }

    public static long parseOctalOrBinary(byte[] bArr, int i10, int i11) {
        byte b7 = bArr[i10];
        if ((b7 & 128) == 0) {
            return parseOctal(bArr, i10, i11);
        }
        boolean z6 = b7 == -1;
        return i11 < 9 ? parseBinaryLong(bArr, i10, i11, z6) : parseBinaryBigInteger(bArr, i10, i11, z6);
    }

    public static boolean verifyCheckSum(byte[] bArr) {
        long octal = parseOctal(bArr, TarConstants.CHKSUM_OFFSET, 8);
        long j6 = 0;
        long j10 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b7 = bArr[i10];
            if (148 <= i10 && i10 < 156) {
                b7 = 32;
            }
            j6 += (long) (b7 & 255);
            j10 += (long) b7;
        }
        return octal == j6 || octal == j10;
    }

    private TarUtils() {
    }

    private static void formatBigIntegerBinary(long j6, byte[] bArr, int i10, int i11, boolean z6) {
        byte[] byteArray = BigInteger.valueOf(j6).toByteArray();
        int length = byteArray.length;
        if (length <= i11 - 1) {
            int i12 = (i11 + i10) - length;
            int i13 = 0;
            System.arraycopy(byteArray, 0, bArr, i12, length);
            if (z6) {
                i13 = 255;
            }
            byte b7 = (byte) i13;
            while (true) {
                i10++;
                if (i10 < i12) {
                    bArr[i10] = b7;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Value " + j6 + " is too large for " + i11 + " byte field.");
        }
    }

    public static int formatNameBytes(String str, byte[] bArr, int i10, int i11, ZipEncoding zipEncoding) throws IOException {
        int length = str.length();
        ByteBuffer byteBufferEncode = zipEncoding.encode(str);
        while (byteBufferEncode.limit() > i11 && length > 0) {
            length--;
            byteBufferEncode = zipEncoding.encode(str.substring(0, length));
        }
        int iLimit = byteBufferEncode.limit() - byteBufferEncode.position();
        System.arraycopy(byteBufferEncode.array(), byteBufferEncode.arrayOffset(), bArr, i10, iLimit);
        while (iLimit < i11) {
            bArr[i10 + iLimit] = 0;
            iLimit++;
        }
        return i10 + i11;
    }

    public static String parseName(byte[] bArr, int i10, int i11, ZipEncoding zipEncoding) throws IOException {
        int i12 = 0;
        for (int i13 = i10; i12 < i11 && bArr[i13] != 0; i13++) {
            i12++;
        }
        if (i12 <= 0) {
            return "";
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return zipEncoding.decode(bArr2);
    }
}
