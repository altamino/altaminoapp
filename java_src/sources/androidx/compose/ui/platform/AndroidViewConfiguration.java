package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class AndroidViewConfiguration implements ViewConfiguration {
    public static final int $stable = 8;

    @NotNull
    private final android.view.ViewConfiguration viewConfiguration;

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public long a() {
        return 40L;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public /* synthetic */ long e() {
        return g1.a(this);
    }

    public AndroidViewConfiguration(@NotNull android.view.ViewConfiguration viewConfiguration) {
        kotlin.jvm.internal.t.j(viewConfiguration, "viewConfiguration");
        this.viewConfiguration = viewConfiguration;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public float b() {
        return this.viewConfiguration.getScaledTouchSlop();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public long c() {
        return android.view.ViewConfiguration.getDoubleTapTimeout();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public long d() {
        return android.view.ViewConfiguration.getLongPressTimeout();
    }
}
