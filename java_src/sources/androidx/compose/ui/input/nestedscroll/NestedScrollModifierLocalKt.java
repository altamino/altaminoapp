package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class NestedScrollModifierLocalKt {

    @NotNull
    private static final ProvidableModifierLocal<NestedScrollModifierLocal> ModifierLocalNestedScroll = ModifierLocalKt.a(NestedScrollModifierLocalKt$ModifierLocalNestedScroll$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<NestedScrollModifierLocal> a() {
        return ModifierLocalNestedScroll;
    }
}
