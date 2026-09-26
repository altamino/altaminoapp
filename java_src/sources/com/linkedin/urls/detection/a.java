package com.linkedin.urls.detection;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static boolean a(char c7) {
        return (c7 >= 'a' && c7 <= 'z') || (c7 >= 'A' && c7 <= 'Z');
    }

    public static boolean c(char c7) {
        return c7 == '.';
    }

    public static boolean f(char c7) {
        return (c7 >= '0' && c7 <= '9') || (c7 >= 'a' && c7 <= 'f') || (c7 >= 'A' && c7 <= 'F');
    }

    private static boolean g(char c7) {
        return (c7 >= 192 && c7 <= 214) || (c7 >= 216 && c7 <= 246) || ((c7 >= 248 && c7 <= 255) || ((c7 >= 256 && c7 <= 591) || c7 == 595 || c7 == 596 || c7 == 598 || c7 == 599 || c7 == 601 || c7 == 603 || c7 == 611 || c7 == 616 || c7 == 623 || c7 == 626 || c7 == 649 || c7 == 651 || c7 == 699 || ((c7 >= 768 && c7 <= 879) || (c7 >= 7680 && c7 <= 7935))));
    }

    public static boolean h(char c7) {
        return c7 >= '0' && c7 <= '9';
    }

    public static boolean o(char c7) {
        return c7 == '\n' || c7 == '\t' || c7 == '\r' || c7 == ' ';
    }

    public static String[] p(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str)) {
            return new String[]{""};
        }
        d dVar = new d(str);
        while (!dVar.c()) {
            char cJ = dVar.j();
            if (c(cJ)) {
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else if (cJ == '%' && dVar.a(2) && dVar.h(2).equalsIgnoreCase("2e")) {
                dVar.j();
                dVar.j();
                arrayList.add(sb.toString());
                sb.setLength(0);
            } else {
                sb.append(cJ);
            }
        }
        arrayList.add(sb.toString());
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean b(char c7) {
        if (!a(c7) && !h(c7)) {
            return false;
        }
        return true;
    }

    public static boolean d(char c7) {
        if (!a(c7) && !g(c7) && ((c7 < 1024 || c7 > 1279) && ((c7 < 1280 || c7 > 1319) && ((c7 < 11744 || c7 > 11775) && ((c7 < 42560 || c7 > 42655) && ((c7 < 1425 || c7 > 1471) && ((c7 < 1473 || c7 > 1474) && ((c7 < 1476 || c7 > 1477) && c7 != 1479 && ((c7 < 1488 || c7 > 1514) && ((c7 < 1520 || c7 > 1524) && ((c7 < 64285 || c7 > 64296) && ((c7 < 64298 || c7 > 64310) && ((c7 < 64312 || c7 > 64316) && c7 != 64318 && ((c7 < 64320 || c7 > 64321) && ((c7 < 64323 || c7 > 64324) && ((c7 < 64326 || c7 > 64335) && ((c7 < 1552 || c7 > 1562) && ((c7 < 1568 || c7 > 1631) && ((c7 < 1646 || c7 > 1747) && ((c7 < 1749 || c7 > 1756) && ((c7 < 1758 || c7 > 1768) && ((c7 < 1770 || c7 > 1775) && ((c7 < 1786 || c7 > 1788) && c7 != 1791 && ((c7 < 1872 || c7 > 1919) && c7 != 2208 && ((c7 < 2210 || c7 > 2220) && ((c7 < 2276 || c7 > 2302) && ((c7 < 64336 || c7 > 64433) && ((c7 < 64467 || c7 > 64829) && ((c7 < 64848 || c7 > 64911) && ((c7 < 64914 || c7 > 64967) && ((c7 < 65008 || c7 > 65019) && ((c7 < 65136 || c7 > 65140) && ((c7 < 65142 || c7 > 65276) && c7 != 8204 && ((c7 < 3585 || c7 > 3642) && ((c7 < 3648 || c7 > 3662) && ((c7 < 4352 || c7 > 4607) && ((c7 < 12592 || c7 > 12677) && ((c7 < 43360 || c7 > 43391) && ((c7 < 44032 || c7 > 55215) && ((c7 < 55216 || c7 > 55295) && ((c7 < 12352 || c7 > 12447) && ((c7 < 12448 || c7 > 12543) && ((c7 < 19968 || c7 > 40959) && c7 != 12291 && c7 != 12293 && c7 != 12347 && ((c7 < 65313 || c7 > 65338) && ((c7 < 65345 || c7 > 65370) && ((c7 < 65382 || c7 > 65439) && (c7 < 65441 || c7 > 65500))))))))))))))))))))))))))))))))))))))))))))))) {
            return false;
        }
        return true;
    }

    public static boolean e(char c7) {
        if (!h(c7) && ((c7 < 65296 || c7 > 65305) && c7 != '_')) {
            return false;
        }
        return true;
    }

    public static boolean i(char c7) {
        if (!b(c7) && c7 != '-' && !g(c7)) {
            return false;
        }
        return true;
    }

    public static boolean j(char c7) {
        if (!b(c7) && c7 != '@' && c7 != 65312 && c7 != '$' && c7 != '#' && c7 != 65283 && (c7 < 8234 || c7 > 8238)) {
            return false;
        }
        return true;
    }

    public static boolean k(char c7) {
        if (!b(c7) && c7 != '!' && c7 != '*' && c7 != '\'' && c7 != ';' && c7 != ':' && c7 != '=' && c7 != '+' && c7 != ',' && c7 != '.' && c7 != '$' && c7 != '/' && c7 != '%' && c7 != '-' && c7 != '_' && c7 != '~' && c7 != '|' && c7 != '&' && c7 != '@' && !g(c7)) {
            return false;
        }
        return true;
    }

    public static boolean l(char c7) {
        if (!b(c7) && c7 != '=' && c7 != '_' && c7 != '#' && c7 != '/' && c7 != '-' && c7 != '+' && !g(c7)) {
            return false;
        }
        return true;
    }

    public static boolean m(char c7) {
        if (!b(c7) && c7 != '!' && c7 != '?' && c7 != '*' && c7 != '\'' && c7 != '(' && c7 != ')' && c7 != ';' && c7 != ':' && c7 != '&' && c7 != '=' && c7 != '+' && c7 != '$' && c7 != '/' && c7 != '%' && c7 != '#' && c7 != '-' && c7 != '_' && c7 != '.' && c7 != ',' && c7 != '~' && c7 != '|' && c7 != '@') {
            return false;
        }
        return true;
    }

    public static boolean n(char c7) {
        if (!b(c7) && c7 != '_' && c7 != '&' && c7 != '=' && c7 != '#' && c7 != '/') {
            return false;
        }
        return true;
    }
}
