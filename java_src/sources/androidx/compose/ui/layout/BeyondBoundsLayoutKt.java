package androidx.compose.ui.layout;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class BeyondBoundsLayoutKt {

    @NotNull
    private static final ProvidableModifierLocal<BeyondBoundsLayout> ModifierLocalBeyondBoundsLayout = ModifierLocalKt.a(BeyondBoundsLayoutKt$ModifierLocalBeyondBoundsLayout$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<BeyondBoundsLayout> a() {
        return ModifierLocalBeyondBoundsLayout;
    }
}
