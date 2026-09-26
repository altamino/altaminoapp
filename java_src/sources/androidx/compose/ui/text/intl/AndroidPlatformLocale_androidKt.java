package androidx.compose.ui.text.intl;

import android.os.Build;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidPlatformLocale_androidKt {
    @NotNull
    public static final PlatformLocaleDelegate a() {
        return Build.VERSION.SDK_INT >= 24 ? new AndroidLocaleDelegateAPI24() : new AndroidLocaleDelegateAPI23();
    }
}
