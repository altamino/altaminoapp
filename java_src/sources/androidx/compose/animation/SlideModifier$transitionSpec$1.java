package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.unit.IntOffset;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class SlideModifier$transitionSpec$1 extends v implements l<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> {
    final /* synthetic */ SlideModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SlideModifier$transitionSpec$1(SlideModifier slideModifier) {
        super(1);
        this.this$0 = slideModifier;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FiniteAnimationSpec<IntOffset> invoke(@NotNull Transition.Segment<EnterExitState> segment) {
        FiniteAnimationSpec<IntOffset> finiteAnimationSpecA;
        FiniteAnimationSpec<IntOffset> finiteAnimationSpecA2;
        t.j(segment, "$this$null");
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.Visible;
        if (segment.a(enterExitState, enterExitState2)) {
            Slide value = this.this$0.b().getValue();
            return (value == null || (finiteAnimationSpecA2 = value.a()) == null) ? EnterExitTransitionKt.DefaultOffsetAnimationSpec : finiteAnimationSpecA2;
        }
        if (!segment.a(enterExitState2, EnterExitState.PostExit)) {
            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
        }
        Slide value2 = this.this$0.c().getValue();
        return (value2 == null || (finiteAnimationSpecA = value2.a()) == null) ? EnterExitTransitionKt.DefaultOffsetAnimationSpec : finiteAnimationSpecA;
    }
}
