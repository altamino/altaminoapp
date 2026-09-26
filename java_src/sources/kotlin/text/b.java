package kotlin.text;

import java.util.Locale;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class b {
    public static int a(int i10) {
        if (new j8.i(2, 36).p(i10)) {
            return i10;
        }
        throw new IllegalArgumentException("radix " + i10 + " was not in valid range " + new j8.i(2, 36));
    }

    @NotNull
    public static String d(char c7, @NotNull Locale locale) {
        kotlin.jvm.internal.t.j(locale, "locale");
        String strValueOf = String.valueOf(c7);
        kotlin.jvm.internal.t.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strValueOf.toLowerCase(locale);
        kotlin.jvm.internal.t.i(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @NotNull
    public static String e(char c7, @NotNull Locale locale) {
        kotlin.jvm.internal.t.j(locale, "locale");
        String strF = f(c7, locale);
        if (strF.length() <= 1) {
            String strValueOf = String.valueOf(c7);
            kotlin.jvm.internal.t.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strValueOf.toUpperCase(Locale.ROOT);
            kotlin.jvm.internal.t.i(upperCase, "toUpperCase(...)");
            return !kotlin.jvm.internal.t.e(strF, upperCase) ? strF : String.valueOf(Character.toTitleCase(c7));
        }
        if (c7 == 329) {
            return strF;
        }
        char cCharAt = strF.charAt(0);
        kotlin.jvm.internal.t.h(strF, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = strF.substring(1);
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        kotlin.jvm.internal.t.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.t.i(lowerCase, "toLowerCase(...)");
        return cCharAt + lowerCase;
    }

    @NotNull
    public static final String f(char c7, @NotNull Locale locale) {
        kotlin.jvm.internal.t.j(locale, "locale");
        String strValueOf = String.valueOf(c7);
        kotlin.jvm.internal.t.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        kotlin.jvm.internal.t.i(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public static final int b(char c7, int i10) {
        return Character.digit((int) c7, i10);
    }

    public static boolean c(char c7) {
        if (!Character.isWhitespace(c7) && !Character.isSpaceChar(c7)) {
            return false;
        }
        return true;
    }
}
