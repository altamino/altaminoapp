package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import kotlin.coroutines.d;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
final class DefaultFlingBehavior implements FlingBehavior {

    @NotNull
    private final DecayAnimationSpec<Float> flingDecay;

    public DefaultFlingBehavior(@NotNull DecayAnimationSpec<Float> flingDecay) {
        t.j(flingDecay, "flingDecay");
        this.flingDecay = flingDecay;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    @Nullable
    public Object a(@NotNull ScrollScope scrollScope, float f, @NotNull d<? super Float> dVar) {
        DefaultFlingBehavior$performFling$1 defaultFlingBehavior$performFling$1;
        float f6;
        m0 m0Var;
        if (dVar instanceof DefaultFlingBehavior$performFling$1) {
            defaultFlingBehavior$performFling$1 = (DefaultFlingBehavior$performFling$1) dVar;
            int i10 = defaultFlingBehavior$performFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                defaultFlingBehavior$performFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                defaultFlingBehavior$performFling$1 = new DefaultFlingBehavior$performFling$1(this, dVar);
            }
        } else {
            defaultFlingBehavior$performFling$1 = new DefaultFlingBehavior$performFling$1(this, dVar);
        }
        DefaultFlingBehavior$performFling$1 defaultFlingBehavior$performFling$2 = defaultFlingBehavior$performFling$1;
        Object obj = defaultFlingBehavior$performFling$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = defaultFlingBehavior$performFling$2.label;
        if (i11 == 0) {
            w.b(obj);
            if (Math.abs(f) > 1.0f) {
                m0 m0Var2 = new m0();
                m0Var2.element = f;
                m0 m0Var3 = new m0();
                AnimationState animationStateB = AnimationStateKt.b(0.0f, f, 0L, 0L, false, 28, null);
                DecayAnimationSpec<Float> decayAnimationSpec = this.flingDecay;
                DefaultFlingBehavior$performFling$2 defaultFlingBehavior$performFling$3 = new DefaultFlingBehavior$performFling$2(m0Var3, scrollScope, m0Var2);
                defaultFlingBehavior$performFling$2.L$0 = m0Var2;
                defaultFlingBehavior$performFling$2.label = 1;
                if (SuspendAnimationKt.i(animationStateB, decayAnimationSpec, false, defaultFlingBehavior$performFling$3, defaultFlingBehavior$performFling$2, 2, null) == objE) {
                    return objE;
                }
                m0Var = m0Var2;
            } else {
                f6 = f;
            }
            return kotlin.coroutines.jvm.internal.b.c(f6);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        m0Var = (m0) defaultFlingBehavior$performFling$2.L$0;
        w.b(obj);
        f6 = m0Var.element;
        return kotlin.coroutines.jvm.internal.b.c(f6);
    }
}
