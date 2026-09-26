package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationVector1D;
import e8.l;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class DefaultFlingBehavior$performFling$2 extends v implements l<AnimationScope<Float, AnimationVector1D>, l0> {
    final /* synthetic */ m0 $lastValue;
    final /* synthetic */ ScrollScope $this_performFling;
    final /* synthetic */ m0 $velocityLeft;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultFlingBehavior$performFling$2(m0 m0Var, ScrollScope scrollScope, m0 m0Var2) {
        super(1);
        this.$lastValue = m0Var;
        this.$this_performFling = scrollScope;
        this.$velocityLeft = m0Var2;
    }

    public final void a(@NotNull AnimationScope<Float, AnimationVector1D> animateDecay) {
        t.j(animateDecay, "$this$animateDecay");
        float fFloatValue = animateDecay.e().floatValue() - this.$lastValue.element;
        float fA = this.$this_performFling.a(fFloatValue);
        this.$lastValue.element = animateDecay.e().floatValue();
        this.$velocityLeft.element = animateDecay.f().floatValue();
        if (Math.abs(fFloatValue - fA) > 0.5f) {
            animateDecay.a();
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
        a(animationScope);
        return l0.INSTANCE;
    }
}
