package androidx.compose.ui.platform;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class Api29Impl {

    @NotNull
    public static final Api29Impl INSTANCE = new Api29Impl();

    @DoNotInline
    public final int a(@NotNull android.view.accessibility.AccessibilityManager accessibilityManager, int i10, int i11) {
        kotlin.jvm.internal.t.j(accessibilityManager, "accessibilityManager");
        return accessibilityManager.getRecommendedTimeoutMillis(i10, i11);
    }

    private Api29Impl() {
    }
}
