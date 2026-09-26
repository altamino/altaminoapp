package androidx.compose.ui.state;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ToggleableStateKt {
    @NotNull
    public static final ToggleableState a(boolean z6) {
        return z6 ? ToggleableState.On : ToggleableState.Off;
    }
}
