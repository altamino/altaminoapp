package androidx.compose.ui.text.intl;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PlatformLocaleKt {

    @NotNull
    private static final PlatformLocaleDelegate platformLocaleDelegate = AndroidPlatformLocale_androidKt.a();

    @NotNull
    public static final PlatformLocaleDelegate a() {
        return platformLocaleDelegate;
    }
}
