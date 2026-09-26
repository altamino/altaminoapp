package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@Stable
final class UnionInsetsConsumingModifier extends InsetsConsumingModifier {

    @NotNull
    private final WindowInsets insets;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnionInsetsConsumingModifier(@NotNull WindowInsets insets, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo, null);
        t.j(insets, "insets");
        t.j(inspectorInfo, "inspectorInfo");
        this.insets = insets;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifier
    @NotNull
    public WindowInsets a(@NotNull WindowInsets modifierLocalInsets) {
        t.j(modifierLocalInsets, "modifierLocalInsets");
        return WindowInsetsKt.e(this.insets, modifierLocalInsets);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnionInsetsConsumingModifier) {
            return t.e(((UnionInsetsConsumingModifier) obj).insets, this.insets);
        }
        return false;
    }

    public int hashCode() {
        return this.insets.hashCode();
    }
}
