package androidx.compose.foundation.layout;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class WindowInsetsPaddingKt {

    @NotNull
    private static final ProvidableModifierLocal<WindowInsets> ModifierLocalConsumedWindowInsets = ModifierLocalKt.a(WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<WindowInsets> a() {
        return ModifierLocalConsumedWindowInsets;
    }
}
