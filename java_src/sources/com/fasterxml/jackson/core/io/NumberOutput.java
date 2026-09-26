package com.fasterxml.jackson.core.io;

import androidx.exifinterface.media.ExifInterface;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes8.dex */
public final class NumberOutput {
    private static int BILLION = 1000000000;
    static final byte[] FULL_TRIPLETS_B;
    private static long MAX_INT_AS_LONG = 2147483647L;
    private static int MILLION = 1000000;
    private static long MIN_INT_AS_LONG = -2147483648L;
    private static final char NULL_CHAR = 0;
    private static long TEN_BILLION_L = 10000000000L;
    private static long THOUSAND_L = 1000;
    static final String[] sSmallIntStrs;
    static final String[] sSmallIntStrs2;
    static final String SMALLEST_LONG = String.valueOf(Long.MIN_VALUE);
    static final char[] LEADING_TRIPLETS = new char[4000];
    static final char[] FULL_TRIPLETS = new char[4000];

    private static int calcLongStrLength(long j6) {
        int i10 = 10;
        for (long j10 = TEN_BILLION_L; j6 >= j10 && i10 != 19; j10 = (j10 << 1) + (j10 << 3)) {
            i10++;
        }
        return i10;
    }

    private static int outputFullTriplet(int i10, char[] cArr, int i11) {
        int i12 = i10 << 2;
        char[] cArr2 = FULL_TRIPLETS;
        cArr[i11] = cArr2[i12];
        int i13 = i11 + 2;
        cArr[i11 + 1] = cArr2[i12 + 1];
        int i14 = i11 + 3;
        cArr[i13] = cArr2[i12 + 2];
        return i14;
    }

    public static int outputInt(int i10, char[] cArr, int i11) {
        int i12;
        if (i10 < 0) {
            if (i10 == Integer.MIN_VALUE) {
                return outputLong(i10, cArr, i11);
            }
            cArr[i11] = '-';
            i10 = -i10;
            i11++;
        }
        if (i10 < MILLION) {
            if (i10 >= 1000) {
                int i13 = i10 / 1000;
                return outputFullTriplet(i10 - (i13 * 1000), cArr, outputLeadingTriplet(i13, cArr, i11));
            }
            if (i10 >= 10) {
                return outputLeadingTriplet(i10, cArr, i11);
            }
            int i14 = i11 + 1;
            cArr[i11] = (char) (i10 + 48);
            return i14;
        }
        int i15 = BILLION;
        boolean z6 = i10 >= i15;
        if (z6) {
            i10 -= i15;
            if (i10 >= i15) {
                i10 -= i15;
                i12 = i11 + 1;
                cArr[i11] = '2';
            } else {
                i12 = i11 + 1;
                cArr[i11] = '1';
            }
            i11 = i12;
        }
        int i16 = i10 / 1000;
        int i17 = i16 / 1000;
        return outputFullTriplet(i10 - (i16 * 1000), cArr, outputFullTriplet(i16 - (i17 * 1000), cArr, z6 ? outputFullTriplet(i17, cArr, i11) : outputLeadingTriplet(i17, cArr, i11)));
    }

    private static int outputLeadingTriplet(int i10, char[] cArr, int i11) {
        int i12 = i10 << 2;
        char[] cArr2 = LEADING_TRIPLETS;
        int i13 = i12 + 1;
        char c7 = cArr2[i12];
        if (c7 != 0) {
            cArr[i11] = c7;
            i11++;
        }
        int i14 = i12 + 2;
        char c10 = cArr2[i13];
        if (c10 != 0) {
            cArr[i11] = c10;
            i11++;
        }
        int i15 = i11 + 1;
        cArr[i11] = cArr2[i14];
        return i15;
    }

    public static int outputLong(long j6, char[] cArr, int i10) {
        if (j6 < 0) {
            if (j6 > MIN_INT_AS_LONG) {
                return outputInt((int) j6, cArr, i10);
            }
            if (j6 == Long.MIN_VALUE) {
                String str = SMALLEST_LONG;
                int length = str.length();
                str.getChars(0, length, cArr, i10);
                return i10 + length;
            }
            cArr[i10] = '-';
            j6 = -j6;
            i10++;
        } else if (j6 <= MAX_INT_AS_LONG) {
            return outputInt((int) j6, cArr, i10);
        }
        int iCalcLongStrLength = calcLongStrLength(j6) + i10;
        int i11 = iCalcLongStrLength;
        while (j6 > MAX_INT_AS_LONG) {
            i11 -= 3;
            long j10 = THOUSAND_L;
            long j11 = j6 / j10;
            outputFullTriplet((int) (j6 - (j10 * j11)), cArr, i11);
            j6 = j11;
        }
        int i12 = (int) j6;
        while (i12 >= 1000) {
            i11 -= 3;
            int i13 = i12 / 1000;
            outputFullTriplet(i12 - (i13 * 1000), cArr, i11);
            i12 = i13;
        }
        outputLeadingTriplet(i12, cArr, i10);
        return iCalcLongStrLength;
    }

    public static String toString(int i10) {
        String[] strArr = sSmallIntStrs;
        if (i10 < strArr.length) {
            if (i10 >= 0) {
                return strArr[i10];
            }
            int i11 = (-i10) - 1;
            String[] strArr2 = sSmallIntStrs2;
            if (i11 < strArr2.length) {
                return strArr2[i11];
            }
        }
        return Integer.toString(i10);
    }

    static {
        int i10 = 0;
        int i11 = 0;
        while (i10 < 10) {
            char c7 = (char) (i10 + 48);
            char c10 = i10 == 0 ? (char) 0 : c7;
            int i12 = 0;
            while (i12 < 10) {
                char c11 = (char) (i12 + 48);
                char c12 = (i10 == 0 && i12 == 0) ? (char) 0 : c11;
                for (int i13 = 0; i13 < 10; i13++) {
                    char c13 = (char) (i13 + 48);
                    char[] cArr = LEADING_TRIPLETS;
                    cArr[i11] = c10;
                    int i14 = i11 + 1;
                    cArr[i14] = c12;
                    int i15 = i11 + 2;
                    cArr[i15] = c13;
                    char[] cArr2 = FULL_TRIPLETS;
                    cArr2[i11] = c7;
                    cArr2[i14] = c11;
                    cArr2[i15] = c13;
                    i11 += 4;
                }
                i12++;
            }
            i10++;
        }
        FULL_TRIPLETS_B = new byte[4000];
        for (int i16 = 0; i16 < 4000; i16++) {
            FULL_TRIPLETS_B[i16] = (byte) FULL_TRIPLETS[i16];
        }
        sSmallIntStrs = new String[]{"0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", "10"};
        sSmallIntStrs2 = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    private static int outputFullTriplet(int i10, byte[] bArr, int i11) {
        int i12 = i10 << 2;
        byte[] bArr2 = FULL_TRIPLETS_B;
        bArr[i11] = bArr2[i12];
        int i13 = i11 + 2;
        bArr[i11 + 1] = bArr2[i12 + 1];
        int i14 = i11 + 3;
        bArr[i13] = bArr2[i12 + 2];
        return i14;
    }

    private static int outputLeadingTriplet(int i10, byte[] bArr, int i11) {
        int i12 = i10 << 2;
        char[] cArr = LEADING_TRIPLETS;
        int i13 = i12 + 1;
        char c7 = cArr[i12];
        if (c7 != 0) {
            bArr[i11] = (byte) c7;
            i11++;
        }
        int i14 = i12 + 2;
        char c10 = cArr[i13];
        if (c10 != 0) {
            bArr[i11] = (byte) c10;
            i11++;
        }
        int i15 = i11 + 1;
        bArr[i11] = (byte) cArr[i14];
        return i15;
    }

    public static String toString(long j6) {
        if (j6 <= 2147483647L && j6 >= -2147483648L) {
            return toString((int) j6);
        }
        return Long.toString(j6);
    }

    public static String toString(double d) {
        return Double.toString(d);
    }

    public static int outputLong(long j6, byte[] bArr, int i10) {
        if (j6 < 0) {
            if (j6 > MIN_INT_AS_LONG) {
                return outputInt((int) j6, bArr, i10);
            }
            if (j6 == Long.MIN_VALUE) {
                int length = SMALLEST_LONG.length();
                int i11 = 0;
                while (i11 < length) {
                    bArr[i10] = (byte) SMALLEST_LONG.charAt(i11);
                    i11++;
                    i10++;
                }
                return i10;
            }
            bArr[i10] = 45;
            j6 = -j6;
            i10++;
        } else if (j6 <= MAX_INT_AS_LONG) {
            return outputInt((int) j6, bArr, i10);
        }
        int iCalcLongStrLength = calcLongStrLength(j6) + i10;
        int i12 = iCalcLongStrLength;
        while (j6 > MAX_INT_AS_LONG) {
            i12 -= 3;
            long j10 = THOUSAND_L;
            long j11 = j6 / j10;
            outputFullTriplet((int) (j6 - (j10 * j11)), bArr, i12);
            j6 = j11;
        }
        int i13 = (int) j6;
        while (i13 >= 1000) {
            i12 -= 3;
            int i14 = i13 / 1000;
            outputFullTriplet(i13 - (i14 * 1000), bArr, i12);
            i13 = i14;
        }
        outputLeadingTriplet(i13, bArr, i10);
        return iCalcLongStrLength;
    }

    public static int outputInt(int i10, byte[] bArr, int i11) {
        int iOutputLeadingTriplet;
        int i12;
        if (i10 < 0) {
            if (i10 == Integer.MIN_VALUE) {
                return outputLong(i10, bArr, i11);
            }
            bArr[i11] = 45;
            i10 = -i10;
            i11++;
        }
        if (i10 < MILLION) {
            if (i10 >= 1000) {
                int i13 = i10 / 1000;
                return outputFullTriplet(i10 - (i13 * 1000), bArr, outputLeadingTriplet(i13, bArr, i11));
            }
            if (i10 < 10) {
                int i14 = i11 + 1;
                bArr[i11] = (byte) (i10 + 48);
                return i14;
            }
            return outputLeadingTriplet(i10, bArr, i11);
        }
        int i15 = BILLION;
        boolean z6 = i10 >= i15;
        if (z6) {
            i10 -= i15;
            if (i10 >= i15) {
                i10 -= i15;
                i12 = i11 + 1;
                bArr[i11] = TarConstants.LF_SYMLINK;
            } else {
                i12 = i11 + 1;
                bArr[i11] = TarConstants.LF_LINK;
            }
            i11 = i12;
        }
        int i16 = i10 / 1000;
        int i17 = i10 - (i16 * 1000);
        int i18 = i16 / 1000;
        int i19 = i16 - (i18 * 1000);
        if (z6) {
            iOutputLeadingTriplet = outputFullTriplet(i18, bArr, i11);
        } else {
            iOutputLeadingTriplet = outputLeadingTriplet(i18, bArr, i11);
        }
        return outputFullTriplet(i17, bArr, outputFullTriplet(i19, bArr, iOutputLeadingTriplet));
    }
}
