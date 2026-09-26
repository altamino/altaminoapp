package androidx.compose.ui.text.intl;

import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class AndroidLocaleDelegateAPI23 implements PlatformLocaleDelegate {
    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    @NotNull
    public List<PlatformLocale> a() {
        java.util.Locale locale = java.util.Locale.getDefault();
        t.i(locale, "getDefault()");
        return u.e(new AndroidLocale(locale));
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    @NotNull
    public PlatformLocale b(@NotNull String languageTag) {
        t.j(languageTag, "languageTag");
        java.util.Locale localeForLanguageTag = java.util.Locale.forLanguageTag(languageTag);
        t.i(localeForLanguageTag, "forLanguageTag(languageTag)");
        return new AndroidLocale(localeForLanguageTag);
    }
}
