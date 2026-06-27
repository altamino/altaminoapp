package com.linkedin.urls.detection;

import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class CharUtils {
    public static boolean isAlpha(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    public static boolean isDot(char c) {
        return c == '.';
    }

    public static boolean isHex(char c) {
        return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
    }

    private static boolean isLatinAccentsChars(char c) {
        return (c >= 192 && c <= 214) || (c >= 216 && c <= 246) || ((c >= 248 && c <= 255) || ((c >= 256 && c <= 591) || c == 595 || c == 596 || c == 598 || c == 599 || c == 601 || c == 603 || c == 611 || c == 616 || c == 623 || c == 626 || c == 649 || c == 651 || c == 699 || ((c >= 768 && c <= 879) || (c >= 7680 && c <= 7935))));
    }

    public static boolean isNumeric(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isWhiteSpace(char c) {
        return c == '\n' || c == '\t' || c == '\r' || c == ' ';
    }

    public static boolean isAlphaNumeric(char c) {
        return isAlpha(c) || isNumeric(c);
    }

    public static boolean isValidDomainStartChar(char c) {
        return isAlphaNumeric(c) || c == '@' || c == 65312 || c == '$' || c == '#' || c == 65283 || (c >= 8234 && c <= 8238);
    }

    public static boolean isValidDomainChar(char c) {
        return isAlphaNumeric(c) || c == '-' || isLatinAccentsChars(c);
    }

    public static boolean isValidPathChar(char c) {
        return isAlphaNumeric(c) || c == '!' || c == '*' || c == '\'' || c == ';' || c == ':' || c == '=' || c == '+' || c == ',' || c == '.' || c == '$' || c == '/' || c == '%' || c == '-' || c == '_' || c == '~' || c == '|' || c == '&' || c == '@' || isLatinAccentsChars(c);
    }

    public static boolean isValidPathEndChar(char c) {
        return isAlphaNumeric(c) || c == '=' || c == '_' || c == '#' || c == '/' || c == '-' || c == '+' || isLatinAccentsChars(c);
    }

    public static boolean isValidQueryChar(char c) {
        return isAlphaNumeric(c) || c == '!' || c == '?' || c == '*' || c == '\'' || c == '(' || c == ')' || c == ';' || c == ':' || c == '&' || c == '=' || c == '+' || c == '$' || c == '/' || c == '%' || c == '#' || c == '-' || c == '_' || c == '.' || c == ',' || c == '~' || c == '|' || c == '@';
    }

    public static boolean isValidQueryEndChar(char c) {
        return isAlphaNumeric(c) || c == '_' || c == '&' || c == '=' || c == '#' || c == '/';
    }

    public static boolean isHashtagNumberChar(char c) {
        return isNumeric(c) || (c >= 65296 && c <= 65305) || c == '_';
    }

    public static boolean isHashtagAlphaChars(char c) {
        return isAlpha(c) || isLatinAccentsChars(c) || (c >= 1024 && c <= 1279) || ((c >= 1280 && c <= 1319) || ((c >= 11744 && c <= 11775) || ((c >= 42560 && c <= 42655) || ((c >= 1425 && c <= 1471) || ((c >= 1473 && c <= 1474) || ((c >= 1476 && c <= 1477) || c == 1479 || ((c >= 1488 && c <= 1514) || ((c >= 1520 && c <= 1524) || ((c >= 64285 && c <= 64296) || ((c >= 64298 && c <= 64310) || ((c >= 64312 && c <= 64316) || c == 64318 || ((c >= 64320 && c <= 64321) || ((c >= 64323 && c <= 64324) || ((c >= 64326 && c <= 64335) || ((c >= 1552 && c <= 1562) || ((c >= 1568 && c <= 1631) || ((c >= 1646 && c <= 1747) || ((c >= 1749 && c <= 1756) || ((c >= 1758 && c <= 1768) || ((c >= 1770 && c <= 1775) || ((c >= 1786 && c <= 1788) || c == 1791 || ((c >= 1872 && c <= 1919) || c == 2208 || ((c >= 2210 && c <= 2220) || ((c >= 2276 && c <= 2302) || ((c >= 64336 && c <= 64433) || ((c >= 64467 && c <= 64829) || ((c >= 64848 && c <= 64911) || ((c >= 64914 && c <= 64967) || ((c >= 65008 && c <= 65019) || ((c >= 65136 && c <= 65140) || ((c >= 65142 && c <= 65276) || c == 8204 || ((c >= 3585 && c <= 3642) || ((c >= 3648 && c <= 3662) || ((c >= 4352 && c <= 4607) || ((c >= 12592 && c <= 12677) || ((c >= 43360 && c <= 43391) || ((c >= 44032 && c <= 55215) || ((c >= 55216 && c <= 55295) || ((c >= 12352 && c <= 12447) || ((c >= 12448 && c <= 12543) || ((c >= 19968 && c <= 40959) || c == 12291 || c == 12293 || c == 12347 || ((c >= 65313 && c <= 65338) || ((c >= 65345 && c <= 65370) || ((c >= 65382 && c <= 65439) || (c >= 65441 && c <= 65500)))))))))))))))))))))))))))))))))))))))))))));
    }

    public static String[] splitByDot(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str)) {
            return new String[]{""};
        }
        InputTextReader inputTextReader = new InputTextReader(str);
        while (!inputTextReader.eof()) {
            char c = inputTextReader.read();
            if (isDot(c)) {
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else if (c == '%' && inputTextReader.canReadChars(2) && inputTextReader.peek(2).equalsIgnoreCase("2e")) {
                inputTextReader.read();
                inputTextReader.read();
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else {
                sb.append(c);
            }
        }
        arrayList.add(sb.toString());
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
