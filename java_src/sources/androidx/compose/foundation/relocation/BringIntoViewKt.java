package androidx.compose.foundation.relocation;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class BringIntoViewKt {

    @NotNull
    private static final ProvidableModifierLocal<BringIntoViewParent> ModifierLocalBringIntoViewParent = ModifierLocalKt.a(BringIntoViewKt$ModifierLocalBringIntoViewParent$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<BringIntoViewParent> a() {
        return ModifierLocalBringIntoViewParent;
    }
}
