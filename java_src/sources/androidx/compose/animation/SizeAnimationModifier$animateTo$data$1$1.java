package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationEndReason;
import androidx.compose.animation.core.AnimationResult;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.unit.IntSize;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
@f(c = "androidx.compose.animation.SizeAnimationModifier$animateTo$data$1$1", f = "AnimationModifier.kt", l = {121}, m = "invokeSuspend")
final class SizeAnimationModifier$animateTo$data$1$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ long $targetSize;
    final /* synthetic */ SizeAnimationModifier.AnimData $this_apply;
    int label;
    final /* synthetic */ SizeAnimationModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SizeAnimationModifier$animateTo$data$1$1(SizeAnimationModifier.AnimData animData, long j6, SizeAnimationModifier sizeAnimationModifier, d<? super SizeAnimationModifier$animateTo$data$1$1> dVar) {
        super(2, dVar);
        this.$this_apply = animData;
        this.$targetSize = j6;
        this.this$0 = sizeAnimationModifier;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new SizeAnimationModifier$animateTo$data$1$1(this.$this_apply, this.$targetSize, this.this$0, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SizeAnimationModifier$animateTo$data$1$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        p<IntSize, IntSize, l0> pVarC;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            Animatable<IntSize, AnimationVector2D> animatableA = this.$this_apply.a();
            IntSize intSizeB = IntSize.b(this.$targetSize);
            AnimationSpec<IntSize> animationSpecB = this.this$0.b();
            this.label = 1;
            obj = Animatable.f(animatableA, intSizeB, animationSpecB, null, null, this, 12, null);
            if (obj == objE) {
                return objE;
            }
        }
        AnimationResult animationResult = (AnimationResult) obj;
        if (animationResult.a() == AnimationEndReason.Finished && (pVarC = this.this$0.c()) != 0) {
            pVarC.invoke(IntSize.b(this.$this_apply.b()), animationResult.b().getValue());
        }
        return l0.INSTANCE;
    }
}
