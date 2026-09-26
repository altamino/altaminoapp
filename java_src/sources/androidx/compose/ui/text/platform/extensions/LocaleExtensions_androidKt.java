package androidx.compose.ui.text.platform.extensions;

import androidx.compose.ui.text.intl.AndroidLocale;
import java.util.Locale;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class LocaleExtensions_androidKt {
    @NotNull
    public static final Locale a(@NotNull androidx.compose.ui.text.intl.Locale locale) {
        t.j(locale, "<this>");
        return ((AndroidLocale) locale.a()).b();
    }
}
