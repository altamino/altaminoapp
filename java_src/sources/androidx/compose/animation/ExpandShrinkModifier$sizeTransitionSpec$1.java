package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class ExpandShrinkModifier$sizeTransitionSpec$1 extends v implements l<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> {
    final /* synthetic */ ExpandShrinkModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExpandShrinkModifier$sizeTransitionSpec$1(ExpandShrinkModifier expandShrinkModifier) {
        super(1);
        this.this$0 = expandShrinkModifier;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FiniteAnimationSpec<IntSize> invoke(@NotNull Transition.Segment<EnterExitState> segment) {
        t.j(segment, "$this$null");
        EnterExitState enterExitState = EnterExitState.PreEnter;
        EnterExitState enterExitState2 = EnterExitState.Visible;
        FiniteAnimationSpec<IntSize> finiteAnimationSpecB = null;
        if (segment.a(enterExitState, enterExitState2)) {
            ChangeSize value = this.this$0.b().getValue();
            if (value != null) {
                finiteAnimationSpecB = value.b();
            }
        } else if (segment.a(enterExitState2, EnterExitState.PostExit)) {
            ChangeSize value2 = this.this$0.c().getValue();
            if (value2 != null) {
                finiteAnimationSpecB = value2.b();
            }
        } else {
            finiteAnimationSpecB = EnterExitTransitionKt.DefaultSizeAnimationSpec;
        }
        return finiteAnimationSpecB == null ? EnterExitTransitionKt.DefaultSizeAnimationSpec : finiteAnimationSpecB;
    }
}
