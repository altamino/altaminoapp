package androidx.compose.ui.text.font;

import android.os.Build;
import androidx.annotation.VisibleForTesting;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class PlatformTypefacesKt {
    @NotNull
    public static final PlatformTypefaces a() {
        return Build.VERSION.SDK_INT >= 28 ? new PlatformTypefacesApi28() : new PlatformTypefacesApi();
    }

    @VisibleForTesting
    @NotNull
    public static final String b(@NotNull String name, @NotNull FontWeight fontWeight) {
        t.j(name, "name");
        t.j(fontWeight, "fontWeight");
        int iK = fontWeight.k() / 100;
        if (iK >= 0 && iK < 2) {
            return name + "-thin";
        }
        if (2 <= iK && iK < 4) {
            return name + "-light";
        }
        if (iK == 4) {
            return name;
        }
        if (iK == 5) {
            return name + "-medium";
        }
        if ((6 <= iK && iK < 8) || 8 > iK || iK >= 11) {
            return name;
        }
        return name + "-black";
    }
}
