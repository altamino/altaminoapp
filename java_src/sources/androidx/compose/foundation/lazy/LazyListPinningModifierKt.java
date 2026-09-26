package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyListPinningModifierKt {
    @Composable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, @Nullable Composer composer, int i10) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(beyondBoundsInfo, "beyondBoundsInfo");
        composer.G(854917725);
        int i11 = MutableVector.$stable;
        composer.G(511388516);
        boolean zK = composer.k(state) | composer.k(beyondBoundsInfo);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new LazyListPinningModifier(state, beyondBoundsInfo);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = modifier.B((Modifier) objH);
        composer.Q();
        return modifierB;
    }
}
