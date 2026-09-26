package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes5.dex */
final class AnimatedContentScope$SizeModifier$measure$size$1<S> extends v implements l<Transition.Segment<S>, FiniteAnimationSpec<IntSize>> {
    final /* synthetic */ AnimatedContentScope<S> this$0;
    final /* synthetic */ AnimatedContentScope<S>.SizeModifier this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AnimatedContentScope$SizeModifier$measure$size$1(AnimatedContentScope<S> animatedContentScope, AnimatedContentScope<S>.SizeModifier sizeModifier) {
        super(1);
        this.this$0 = animatedContentScope;
        this.this$1 = sizeModifier;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FiniteAnimationSpec<IntSize> invoke(@NotNull Transition.Segment<S> animate) {
        FiniteAnimationSpec<IntSize> finiteAnimationSpecC;
        t.j(animate, "$this$animate");
        State<IntSize> state = this.this$0.m().get(animate.c());
        long j6 = state != null ? state.getValue().j() : IntSize.Companion.a();
        State<IntSize> state2 = this.this$0.m().get(animate.b());
        long j10 = state2 != null ? state2.getValue().j() : IntSize.Companion.a();
        SizeTransform value = this.this$1.a().getValue();
        return (value == null || (finiteAnimationSpecC = value.c(j6, j10)) == null) ? AnimationSpecKt.i(0.0f, 0.0f, null, 7, null) : finiteAnimationSpecC;
    }
}
