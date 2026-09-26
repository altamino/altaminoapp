package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class FocusInteractionKt {
    @Composable
    @NotNull
    public static final State<Boolean> a(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        t.j(interactionSource, "<this>");
        composer.G(-1805515472);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        EffectsKt.d(interactionSource, new FocusInteractionKt$collectIsFocusedAsState$1(interactionSource, mutableState, null), composer, i10 & 14);
        composer.Q();
        return mutableState;
    }
}
