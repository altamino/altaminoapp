package kotlin.text;

import java.util.Locale;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class b0 {
    @NotNull
    public static final String a(char c7) {
        String strValueOf = String.valueOf(c7);
        kotlin.jvm.internal.t.h(strValueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = strValueOf.toUpperCase(locale);
        kotlin.jvm.internal.t.i(upperCase, "toUpperCase(...)");
        if (upperCase.length() > 1) {
            if (c7 != 329) {
                char cCharAt = upperCase.charAt(0);
                kotlin.jvm.internal.t.h(upperCase, "null cannot be cast to non-null type java.lang.String");
                String strSubstring = upperCase.substring(1);
                kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
                kotlin.jvm.internal.t.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = strSubstring.toLowerCase(locale);
                kotlin.jvm.internal.t.i(lowerCase, "toLowerCase(...)");
                return cCharAt + lowerCase;
            }
            return upperCase;
        }
        return String.valueOf(Character.toTitleCase(c7));
    }
}
