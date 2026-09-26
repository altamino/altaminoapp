package androidx.compose.ui.text;

import androidx.compose.ui.text.intl.PlatformLocale;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface PlatformStringDelegate {
    @NotNull
    String a(@NotNull String str, @NotNull PlatformLocale platformLocale);

    @NotNull
    String b(@NotNull String str, @NotNull PlatformLocale platformLocale);

    @NotNull
    String c(@NotNull String str, @NotNull PlatformLocale platformLocale);

    @NotNull
    String d(@NotNull String str, @NotNull PlatformLocale platformLocale);
}
