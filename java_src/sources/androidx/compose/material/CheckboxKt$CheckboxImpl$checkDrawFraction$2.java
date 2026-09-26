package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.state.ToggleableState;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class CheckboxKt$CheckboxImpl$checkDrawFraction$2 extends v implements q<Transition.Segment<ToggleableState>, Composer, Integer, FiniteAnimationSpec<Float>> {
    public static final CheckboxKt$CheckboxImpl$checkDrawFraction$2 INSTANCE = new CheckboxKt$CheckboxImpl$checkDrawFraction$2();

    CheckboxKt$CheckboxImpl$checkDrawFraction$2() {
        super(3);
    }

    @ComposableTarget
    @Composable
    @NotNull
    public final FiniteAnimationSpec<Float> a(@NotNull Transition.Segment<ToggleableState> animateFloat, @Nullable Composer composer, int i10) {
        FiniteAnimationSpec<Float> finiteAnimationSpecF;
        t.j(animateFloat, "$this$animateFloat");
        composer.G(-1707702900);
        ToggleableState toggleableStateC = animateFloat.c();
        ToggleableState toggleableState = ToggleableState.Off;
        if (toggleableStateC == toggleableState) {
            finiteAnimationSpecF = AnimationSpecKt.k(100, 0, null, 6, null);
        } else {
            finiteAnimationSpecF = animateFloat.b() == toggleableState ? AnimationSpecKt.f(100) : AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        }
        composer.Q();
        return finiteAnimationSpecF;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<ToggleableState> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
