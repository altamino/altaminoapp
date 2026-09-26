package com.fasterxml.jackson.databind.util;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlinx.serialization.json.internal.b;
import org.bouncycastle.pqc.math.linearalgebra.h;

/* JADX INFO: loaded from: classes11.dex */
public class ISO8601Utils {
    private static final String GMT_ID = "GMT";
    private static final TimeZone TIMEZONE_GMT = TimeZone.getTimeZone(GMT_ID);

    public static String format(Date date) {
        return format(date, false, TIMEZONE_GMT);
    }

    public static TimeZone timeZoneGMT() {
        return TIMEZONE_GMT;
    }

    public static String format(Date date, boolean z6) {
        return format(date, z6, TIMEZONE_GMT);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e5  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00e5, please report this as an issue */
    public static Date parse(String str) {
        String str2;
        int i10;
        try {
            int i11 = parseInt(str, 0, 4);
            checkOffset(str, 4, '-');
            int i12 = parseInt(str, 5, 7);
            checkOffset(str, 7, '-');
            int i13 = parseInt(str, 8, 10);
            checkOffset(str, 10, 'T');
            int i14 = parseInt(str, 11, 13);
            checkOffset(str, 13, b.COLON);
            int i15 = parseInt(str, 14, 16);
            checkOffset(str, 16, b.COLON);
            int i16 = 19;
            int i17 = parseInt(str, 17, 19);
            if (str.charAt(19) == '.') {
                checkOffset(str, 19, '.');
                i10 = parseInt(str, 20, 23);
                i16 = 23;
            } else {
                i10 = 0;
            }
            char cCharAt = str.charAt(i16);
            String str3 = GMT_ID;
            if (cCharAt == '+' || cCharAt == '-') {
                str3 = GMT_ID + str.substring(i16);
            } else if (cCharAt != 'Z') {
                throw new IndexOutOfBoundsException("Invalid time zone indicator " + cCharAt);
            }
            TimeZone timeZone = TimeZone.getTimeZone(str3);
            if (!timeZone.getID().equals(str3)) {
                throw new IndexOutOfBoundsException();
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i11);
            gregorianCalendar.set(2, i12 - 1);
            gregorianCalendar.set(5, i13);
            gregorianCalendar.set(11, i14);
            gregorianCalendar.set(12, i15);
            gregorianCalendar.set(13, i17);
            gregorianCalendar.set(14, i10);
            return gregorianCalendar.getTime();
        } catch (IndexOutOfBoundsException e) {
            e = e;
            if (str == null) {
                str2 = null;
            } else {
                str2 = b.STRING + str + "'";
            }
            throw new IllegalArgumentException("Failed to parse date [" + str2 + "]: " + e.getMessage(), e);
        } catch (NumberFormatException e2) {
            e = e2;
            if (str == null) {
                str2 = null;
            } else {
                str2 = b.STRING + str + "'";
            }
            throw new IllegalArgumentException("Failed to parse date [" + str2 + "]: " + e.getMessage(), e);
        } catch (IllegalArgumentException e6) {
            e = e6;
            if (str == null) {
                str2 = null;
            } else {
                str2 = b.STRING + str + "'";
            }
            throw new IllegalArgumentException("Failed to parse date [" + str2 + "]: " + e.getMessage(), e);
        }
    }

    private static int parseInt(String str, int i10, int i11) throws NumberFormatException {
        int i12;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            int i13 = i10 + 1;
            int iDigit = Character.digit(str.charAt(i10), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str);
            }
            i12 = -iDigit;
            i10 = i13;
        } else {
            i12 = 0;
        }
        while (i10 < i11) {
            int i14 = i10 + 1;
            int iDigit2 = Character.digit(str.charAt(i10), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str);
            }
            i12 = (i12 * 10) - iDigit2;
            i10 = i14;
        }
        return -i12;
    }

    private static void checkOffset(String str, int i10, char c7) throws IndexOutOfBoundsException {
        char cCharAt = str.charAt(i10);
        if (cCharAt == c7) {
            return;
        }
        throw new IndexOutOfBoundsException("Expected '" + c7 + "' character but found '" + cCharAt + "'");
    }

    public static String format(Date date, boolean z6, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z6 ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(b.COLON);
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(b.COLON);
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z6) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i10 = offset / 60000;
            int iAbs = Math.abs(i10 / 60);
            int iAbs2 = Math.abs(i10 % 60);
            sb.append(offset >= 0 ? '+' : '-');
            padInt(sb, iAbs, 2);
            sb.append(b.COLON);
            padInt(sb, iAbs2, 2);
        } else {
            sb.append(h.MATRIX_TYPE_ZERO);
        }
        return sb.toString();
    }

    private static void padInt(StringBuilder sb, int i10, int i11) {
        String string = Integer.toString(i10);
        for (int length = i11 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }
}
