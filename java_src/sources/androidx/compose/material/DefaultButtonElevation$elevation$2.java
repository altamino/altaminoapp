package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.ui.unit.Dp;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@f(c = "androidx.compose.material.DefaultButtonElevation$elevation$2", f = "Button.kt", l = {551}, m = "invokeSuspend")
final class DefaultButtonElevation$elevation$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ Animatable<Dp, AnimationVector1D> $animatable;
    final /* synthetic */ float $target;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultButtonElevation$elevation$2(Animatable<Dp, AnimationVector1D> animatable, float f, d<? super DefaultButtonElevation$elevation$2> dVar) {
        super(2, dVar);
        this.$animatable = animatable;
        this.$target = f;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new DefaultButtonElevation$elevation$2(this.$animatable, this.$target, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((DefaultButtonElevation$elevation$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            Animatable<Dp, AnimationVector1D> animatable = this.$animatable;
            Dp dpC = Dp.c(this.$target);
            this.label = 1;
            if (animatable.u(dpC, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
