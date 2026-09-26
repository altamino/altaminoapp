package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@Stable
final class PaddingValuesConsumingModifier extends InsetsConsumingModifier {

    @NotNull
    private final PaddingValues paddingValues;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaddingValuesConsumingModifier(@NotNull PaddingValues paddingValues, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo, null);
        t.j(paddingValues, "paddingValues");
        t.j(inspectorInfo, "inspectorInfo");
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifier
    @NotNull
    public WindowInsets a(@NotNull WindowInsets modifierLocalInsets) {
        t.j(modifierLocalInsets, "modifierLocalInsets");
        return WindowInsetsKt.b(WindowInsetsKt.c(this.paddingValues), modifierLocalInsets);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PaddingValuesConsumingModifier) {
            return t.e(((PaddingValuesConsumingModifier) obj).paddingValues, this.paddingValues);
        }
        return false;
    }

    public int hashCode() {
        return this.paddingValues.hashCode();
    }
}
