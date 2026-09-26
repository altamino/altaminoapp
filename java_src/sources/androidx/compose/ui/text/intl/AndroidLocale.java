package androidx.compose.ui.text.intl;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidLocale implements PlatformLocale {

    @NotNull
    private final java.util.Locale javaLocale;

    @NotNull
    public final java.util.Locale b() {
        return this.javaLocale;
    }

    public AndroidLocale(@NotNull java.util.Locale javaLocale) {
        t.j(javaLocale, "javaLocale");
        this.javaLocale = javaLocale;
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocale
    @NotNull
    public String a() {
        String languageTag = this.javaLocale.toLanguageTag();
        t.i(languageTag, "javaLocale.toLanguageTag()");
        return languageTag;
    }
}
