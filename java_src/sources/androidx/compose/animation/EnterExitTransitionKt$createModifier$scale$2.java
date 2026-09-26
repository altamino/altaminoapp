package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$createModifier$scale$2 extends v implements q<Transition.Segment<EnterExitState>, Composer, Integer, FiniteAnimationSpec<Float>> {
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EnterExitTransitionKt$createModifier$scale$2(EnterTransition enterTransition, ExitTransition exitTransition) {
        super(3);
        this.$enter = enterTransition;
        this.$exit = exitTransition;
    }

    @Composable
    @NotNull
    public final FiniteAnimationSpec<Float> a(@NotNull Transition.Segment<EnterExitState> animateFloat, @Nullable Composer composer, int i10) {
        FiniteAnimationSpec<Float> finiteAnimationSpecA;
        Scale scaleC;
        t.j(animateFloat, "$this$animateFloat");
        composer.G(-53984035);
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.Visible;
        if (animateFloat.a(enterExitState, enterExitState2)) {
            Scale scaleC2 = this.$enter.a().c();
            if (scaleC2 == null || (finiteAnimationSpecA = scaleC2.a()) == null) {
                finiteAnimationSpecA = EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
            }
        } else if (!animateFloat.a(enterExitState2, EnterExitState.PostExit) || (scaleC = this.$exit.a().c()) == null || (finiteAnimationSpecA = scaleC.a()) == null) {
            finiteAnimationSpecA = EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
        }
        composer.Q();
        return finiteAnimationSpecA;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<EnterExitState> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
