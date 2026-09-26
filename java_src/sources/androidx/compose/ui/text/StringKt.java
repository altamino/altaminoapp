package androidx.compose.ui.text;

import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidStringDelegate_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class StringKt {

    @NotNull
    private static final PlatformStringDelegate stringDelegate = AndroidStringDelegate_androidKt.a();

    @NotNull
    public static final String a(@NotNull String str, @NotNull Locale locale) {
        t.j(str, "<this>");
        t.j(locale, "locale");
        return stringDelegate.a(str, locale.a());
    }

    @NotNull
    public static final String b(@NotNull String str, @NotNull LocaleList localeList) {
        t.j(str, "<this>");
        t.j(localeList, "localeList");
        return a(str, localeList.isEmpty() ? Locale.Companion.a() : localeList.c(0));
    }

    @NotNull
    public static final String c(@NotNull String str, @NotNull Locale locale) {
        t.j(str, "<this>");
        t.j(locale, "locale");
        return stringDelegate.b(str, locale.a());
    }

    @NotNull
    public static final String d(@NotNull String str, @NotNull LocaleList localeList) {
        t.j(str, "<this>");
        t.j(localeList, "localeList");
        return c(str, localeList.isEmpty() ? Locale.Companion.a() : localeList.c(0));
    }

    @NotNull
    public static final String e(@NotNull String str, @NotNull Locale locale) {
        t.j(str, "<this>");
        t.j(locale, "locale");
        return stringDelegate.d(str, locale.a());
    }

    @NotNull
    public static final String f(@NotNull String str, @NotNull LocaleList localeList) {
        t.j(str, "<this>");
        t.j(localeList, "localeList");
        return e(str, localeList.isEmpty() ? Locale.Companion.a() : localeList.c(0));
    }

    @NotNull
    public static final String g(@NotNull String str, @NotNull Locale locale) {
        t.j(str, "<this>");
        t.j(locale, "locale");
        return stringDelegate.c(str, locale.a());
    }

    @NotNull
    public static final String h(@NotNull String str, @NotNull LocaleList localeList) {
        t.j(str, "<this>");
        t.j(localeList, "localeList");
        return g(str, localeList.isEmpty() ? Locale.Companion.a() : localeList.c(0));
    }
}
