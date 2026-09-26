package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlinx.serialization.json.internal.b;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.bouncycastle.pqc.math.linearalgebra.h;

/* JADX INFO: loaded from: classes10.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z6) {
        return format(date, z6, TIMEZONE_UTC);
    }

    /* JADX WARN: Code duplicated, block: B:85:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:86:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f5  */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x01d5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:91:0x01f5, please report this as an issue */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i10;
        int i11;
        int i12;
        int i13;
        int length;
        TimeZone timeZone;
        char cCharAt;
        try {
            int index = parsePosition.getIndex();
            int i14 = index + 4;
            int i15 = parseInt(str, index, i14);
            if (checkOffset(str, i14, '-')) {
                i14 = index + 5;
            }
            int i16 = i14 + 2;
            int i17 = parseInt(str, i14, i16);
            if (checkOffset(str, i16, '-')) {
                i16 = i14 + 3;
            }
            int i18 = i16 + 2;
            int i19 = parseInt(str, i16, i18);
            boolean zCheckOffset = checkOffset(str, i18, 'T');
            if (!zCheckOffset && str.length() <= i18) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i15, i17 - 1, i19);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i18);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i20 = i16 + 5;
                int i21 = parseInt(str, i16 + 3, i20);
                if (checkOffset(str, i20, b.COLON)) {
                    i20 = i16 + 6;
                }
                int i22 = i20 + 2;
                int i23 = parseInt(str, i20, i22);
                if (checkOffset(str, i22, b.COLON)) {
                    i22 = i20 + 3;
                }
                if (str.length() <= i22 || (cCharAt = str.charAt(i22)) == 'Z' || cCharAt == '+' || cCharAt == '-') {
                    i11 = i23;
                    i12 = 0;
                    i13 = 0;
                    i18 = i22;
                    i10 = i21;
                } else {
                    int i24 = i22 + 2;
                    i13 = parseInt(str, i22, i24);
                    if (i13 > 59 && i13 < 63) {
                        i13 = 59;
                    }
                    if (checkOffset(str, i24, '.')) {
                        int i25 = i22 + 3;
                        int iIndexOfNonDigit = indexOfNonDigit(str, i22 + 4);
                        int iMin = Math.min(iIndexOfNonDigit, i22 + 6);
                        int i26 = parseInt(str, i25, iMin);
                        int i27 = iMin - i25;
                        if (i27 == 1) {
                            i26 *= 100;
                        } else if (i27 == 2) {
                            i26 *= 10;
                        }
                        i10 = i21;
                        i18 = iIndexOfNonDigit;
                        i11 = i23;
                        i12 = i26;
                    } else {
                        i10 = i21;
                        i18 = i24;
                        i11 = i23;
                        i12 = 0;
                    }
                }
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
                i13 = 0;
            }
            if (str.length() <= i18) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            char cCharAt2 = str.charAt(i18);
            if (cCharAt2 == 'Z') {
                timeZone = TIMEZONE_UTC;
                length = i18 + 1;
            } else {
                if (cCharAt2 != '+' && cCharAt2 != '-') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt2 + "'");
                }
                String strSubstring = str.substring(i18);
                if (strSubstring.length() < 5) {
                    strSubstring = strSubstring + TarConstants.VERSION_POSIX;
                }
                length = i18 + strSubstring.length();
                if ("+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                    timeZone = TIMEZONE_UTC;
                } else {
                    String str3 = "GMT" + strSubstring;
                    TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                    String id = timeZone2.getID();
                    if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                    }
                    timeZone = timeZone2;
                }
            }
            GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
            gregorianCalendar2.setLenient(false);
            gregorianCalendar2.set(1, i15);
            gregorianCalendar2.set(2, i17 - 1);
            gregorianCalendar2.set(5, i19);
            gregorianCalendar2.set(11, i10);
            gregorianCalendar2.set(12, i11);
            gregorianCalendar2.set(13, i13);
            gregorianCalendar2.set(14, i12);
            parsePosition.setIndex(length);
            return gregorianCalendar2.getTime();
        } catch (IndexOutOfBoundsException e) {
            e = e;
            if (str == null) {
                str2 = null;
            } else {
                str2 = b.STRING + str + b.STRING;
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (NumberFormatException e2) {
            e = e2;
            if (str == null) {
                str2 = null;
            } else {
                str2 = b.STRING + str + b.STRING;
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException2 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (IllegalArgumentException e6) {
            e = e6;
            if (str == null) {
                str2 = null;
            } else {
                str2 = b.STRING + str + b.STRING;
            }
            message = e.getMessage();
            if (message != null) {
                message = "(" + e.getClass().getName() + ")";
            } else {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException3 = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException3.initCause(e);
            throw parseException3;
        }
    }

    private static int parseInt(String str, int i10, int i11) throws NumberFormatException {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i13 = i10 + 1;
            int iDigit = Character.digit(str.charAt(i10), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = -iDigit;
        } else {
            i12 = 0;
            i13 = i10;
        }
        while (i13 < i11) {
            int i14 = i13 + 1;
            int iDigit2 = Character.digit(str.charAt(i13), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = (i12 * 10) - iDigit2;
            i13 = i14;
        }
        return -i12;
    }

    private static boolean checkOffset(String str, int i10, char c7) {
        if (i10 < str.length() && str.charAt(i10) == c7) {
            return true;
        }
        return false;
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

    private static int indexOfNonDigit(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= '0' && cCharAt <= '9') {
                i10++;
            } else {
                return i10;
            }
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i10, int i11) {
        String string = Integer.toString(i10);
        for (int length = i11 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }
}
