package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.PlatformStringDelegate;
import androidx.compose.ui.text.intl.AndroidLocale;
import androidx.compose.ui.text.intl.PlatformLocale;
import kotlin.jvm.internal.t;
import kotlin.text.b;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class AndroidStringDelegate implements PlatformStringDelegate {
    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String a(@NotNull String string, @NotNull PlatformLocale locale) {
        t.j(string, "string");
        t.j(locale, "locale");
        if (string.length() <= 0) {
            return string;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = string.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? b.e(cCharAt, ((AndroidLocale) locale).b()) : String.valueOf(cCharAt)));
        String strSubstring = string.substring(1);
        t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring);
        return sb.toString();
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String b(@NotNull String string, @NotNull PlatformLocale locale) {
        t.j(string, "string");
        t.j(locale, "locale");
        if (string.length() <= 0) {
            return string;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) b.d(string.charAt(0), ((AndroidLocale) locale).b()));
        String strSubstring = string.substring(1);
        t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring);
        return sb.toString();
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String c(@NotNull String string, @NotNull PlatformLocale locale) {
        t.j(string, "string");
        t.j(locale, "locale");
        String upperCase = string.toUpperCase(((AndroidLocale) locale).b());
        t.i(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    @NotNull
    public String d(@NotNull String string, @NotNull PlatformLocale locale) {
        t.j(string, "string");
        t.j(locale, "locale");
        String lowerCase = string.toLowerCase(((AndroidLocale) locale).b());
        t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }
}
