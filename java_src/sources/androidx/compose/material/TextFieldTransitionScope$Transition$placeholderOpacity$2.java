package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class TextFieldTransitionScope$Transition$placeholderOpacity$2 extends v implements q<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>> {
    public static final TextFieldTransitionScope$Transition$placeholderOpacity$2 INSTANCE = new TextFieldTransitionScope$Transition$placeholderOpacity$2();

    TextFieldTransitionScope$Transition$placeholderOpacity$2() {
        super(3);
    }

    @Composable
    @NotNull
    public final FiniteAnimationSpec<Float> a(@NotNull Transition.Segment<InputPhase> animateFloat, @Nullable Composer composer, int i10) {
        FiniteAnimationSpec<Float> finiteAnimationSpecJ;
        t.j(animateFloat, "$this$animateFloat");
        composer.G(-1079955085);
        InputPhase inputPhase = InputPhase.Focused;
        InputPhase inputPhase2 = InputPhase.UnfocusedEmpty;
        if (animateFloat.a(inputPhase, inputPhase2)) {
            finiteAnimationSpecJ = AnimationSpecKt.k(67, 0, EasingKt.b(), 2, null);
        } else {
            finiteAnimationSpecJ = (animateFloat.a(inputPhase2, inputPhase) || animateFloat.a(InputPhase.UnfocusedNotEmpty, inputPhase2)) ? AnimationSpecKt.j(83, 67, EasingKt.b()) : AnimationSpecKt.i(0.0f, 0.0f, null, 7, null);
        }
        composer.Q();
        return finiteAnimationSpecJ;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<InputPhase> segment, Composer composer, Integer num) {
        return a(segment, composer, num.intValue());
    }
}
