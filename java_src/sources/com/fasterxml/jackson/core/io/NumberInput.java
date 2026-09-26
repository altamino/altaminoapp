package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
public final class NumberInput {
    static final long L_BILLION = 1000000000;
    public static final String NASTY_SMALL_DOUBLE = "2.2250738585072012e-308";
    static final String MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
    static final String MAX_LONG_STR = String.valueOf(Long.MAX_VALUE);

    public static boolean inLongRange(char[] cArr, int i10, int i11, boolean z6) {
        String str = z6 ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        if (i11 < length) {
            return true;
        }
        if (i11 > length) {
            return false;
        }
        for (int i12 = 0; i12 < length; i12++) {
            int iCharAt = cArr[i10 + i12] - str.charAt(i12);
            if (iCharAt != 0) {
                return iCharAt < 0;
            }
        }
        return true;
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException unused) {
            throw _badBigDecimal(str);
        }
    }

    public static int parseInt(char[] cArr, int i10, int i11) {
        int i12 = cArr[i10] - '0';
        int i13 = i11 + i10;
        int i14 = i10 + 1;
        if (i14 >= i13) {
            return i12;
        }
        int i15 = (i12 * 10) + (cArr[i14] - '0');
        int i16 = i10 + 2;
        if (i16 >= i13) {
            return i15;
        }
        int i17 = (i15 * 10) + (cArr[i16] - '0');
        int i18 = i10 + 3;
        if (i18 >= i13) {
            return i17;
        }
        int i19 = (i17 * 10) + (cArr[i18] - '0');
        int i20 = i10 + 4;
        if (i20 >= i13) {
            return i19;
        }
        int i21 = (i19 * 10) + (cArr[i20] - '0');
        int i22 = i10 + 5;
        if (i22 >= i13) {
            return i21;
        }
        int i23 = (i21 * 10) + (cArr[i22] - '0');
        int i24 = i10 + 6;
        if (i24 >= i13) {
            return i23;
        }
        int i25 = (i23 * 10) + (cArr[i24] - '0');
        int i26 = i10 + 7;
        if (i26 >= i13) {
            return i25;
        }
        int i27 = (i25 * 10) + (cArr[i26] - '0');
        int i28 = i10 + 8;
        return i28 < i13 ? (i27 * 10) + (cArr[i28] - '0') : i27;
    }

    public static long parseLong(char[] cArr, int i10, int i11) {
        int i12 = i11 - 9;
        return (((long) parseInt(cArr, i10, i12)) * 1000000000) + ((long) parseInt(cArr, i10 + i12, 9));
    }

    private static NumberFormatException _badBigDecimal(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }

    public static double parseAsDouble(String str, double d) {
        if (str == null) {
            return d;
        }
        String strTrim = str.trim();
        if (strTrim.length() == 0) {
            return d;
        }
        try {
            return parseDouble(strTrim);
        } catch (NumberFormatException unused) {
            return d;
        }
    }

    public static int parseAsInt(String str, int i10) {
        String strTrim;
        int length;
        if (str == null || (length = (strTrim = str.trim()).length()) == 0) {
            return i10;
        }
        int i11 = 0;
        if (length > 0) {
            char cCharAt = strTrim.charAt(0);
            if (cCharAt == '+') {
                strTrim = strTrim.substring(1);
                length = strTrim.length();
            } else if (cCharAt == '-') {
                i11 = 1;
            }
        }
        while (i11 < length) {
            char cCharAt2 = strTrim.charAt(i11);
            if (cCharAt2 > '9' || cCharAt2 < '0') {
                try {
                    return (int) parseDouble(strTrim);
                } catch (NumberFormatException unused) {
                    return i10;
                }
            }
            i11++;
        }
        try {
            return Integer.parseInt(strTrim);
        } catch (NumberFormatException unused2) {
            return i10;
        }
    }

    public static long parseAsLong(String str, long j6) {
        String strTrim;
        int length;
        if (str == null || (length = (strTrim = str.trim()).length()) == 0) {
            return j6;
        }
        int i10 = 0;
        if (length > 0) {
            char cCharAt = strTrim.charAt(0);
            if (cCharAt == '+') {
                strTrim = strTrim.substring(1);
                length = strTrim.length();
            } else if (cCharAt == '-') {
                i10 = 1;
            }
        }
        while (i10 < length) {
            char cCharAt2 = strTrim.charAt(i10);
            if (cCharAt2 > '9' || cCharAt2 < '0') {
                try {
                    return (long) parseDouble(strTrim);
                } catch (NumberFormatException unused) {
                    return j6;
                }
            }
            i10++;
        }
        try {
            return Long.parseLong(strTrim);
        } catch (NumberFormatException unused2) {
            return j6;
        }
    }

    public static double parseDouble(String str) throws NumberFormatException {
        if (NASTY_SMALL_DOUBLE.equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static boolean inLongRange(String str, boolean z6) {
        String str2 = z6 ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            int iCharAt = str.charAt(i10) - str2.charAt(i10);
            if (iCharAt != 0) {
                return iCharAt < 0;
            }
        }
        return true;
    }

    public static BigDecimal parseBigDecimal(char[] cArr) throws NumberFormatException {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static long parseLong(String str) {
        if (str.length() <= 9) {
            return parseInt(str);
        }
        return Long.parseLong(str);
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i10, int i11) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i10, i11);
        } catch (NumberFormatException unused) {
            throw _badBigDecimal(new String(cArr, i10, i11));
        }
    }

    public static int parseInt(String str) {
        char cCharAt = str.charAt(0);
        int length = str.length();
        int i10 = 1;
        boolean z6 = cCharAt == '-';
        if (z6) {
            if (length != 1 && length <= 10) {
                cCharAt = str.charAt(1);
                i10 = 2;
            } else {
                return Integer.parseInt(str);
            }
        } else if (length > 9) {
            return Integer.parseInt(str);
        }
        if (cCharAt > '9' || cCharAt < '0') {
            return Integer.parseInt(str);
        }
        int i11 = cCharAt - '0';
        if (i10 < length) {
            int i12 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 > '9' || cCharAt2 < '0') {
                return Integer.parseInt(str);
            }
            i11 = (i11 * 10) + (cCharAt2 - '0');
            if (i12 < length) {
                int i13 = i10 + 2;
                char cCharAt3 = str.charAt(i12);
                if (cCharAt3 > '9' || cCharAt3 < '0') {
                    return Integer.parseInt(str);
                }
                i11 = (i11 * 10) + (cCharAt3 - '0');
                if (i13 < length) {
                    while (true) {
                        int i14 = i13 + 1;
                        char cCharAt4 = str.charAt(i13);
                        if (cCharAt4 > '9' || cCharAt4 < '0') {
                            break;
                        }
                        i11 = (i11 * 10) + (cCharAt4 - '0');
                        if (i14 < length) {
                            i13 = i14;
                        }
                    }
                    return Integer.parseInt(str);
                }
            }
        }
        return z6 ? -i11 : i11;
    }
}
