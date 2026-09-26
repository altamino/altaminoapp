package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class LazyBeyondBoundsModifierKt {
    @Composable
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, boolean z6, @Nullable Composer composer, int i10) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(beyondBoundsInfo, "beyondBoundsInfo");
        composer.G(1245943849);
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        Object[] objArr = {state, beyondBoundsInfo, Boolean.valueOf(z6), layoutDirection};
        composer.G(-568225417);
        boolean zK = false;
        for (int i11 = 0; i11 < 4; i11++) {
            zK |= composer.k(objArr[i11]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new LazyListBeyondBoundsModifierLocal(state, beyondBoundsInfo, z6, layoutDirection);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = modifier.B((Modifier) objH);
        composer.Q();
        return modifierB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void c() {
        throw new IllegalStateException("Lazy list does not support beyond bounds layout for the specified direction".toString());
    }
}
