package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.material.SnackbarHostKt$animatedScale$1", f = "SnackbarHost.kt", l = {363}, m = "invokeSuspend")
final class SnackbarHostKt$animatedScale$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animation;
    final /* synthetic */ Animatable<Float, AnimationVector1D> $scale;
    final /* synthetic */ boolean $visible;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnackbarHostKt$animatedScale$1(Animatable<Float, AnimationVector1D> animatable, boolean z6, AnimationSpec<Float> animationSpec, d<? super SnackbarHostKt$animatedScale$1> dVar) {
        super(2, dVar);
        this.$scale = animatable;
        this.$visible = z6;
        this.$animation = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new SnackbarHostKt$animatedScale$1(this.$scale, this.$visible, this.$animation, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SnackbarHostKt$animatedScale$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        float f;
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
            Animatable<Float, AnimationVector1D> animatable = this.$scale;
            if (this.$visible) {
                f = 1.0f;
            } else {
                f = 0.8f;
            }
            Float fC = b.c(f);
            AnimationSpec<Float> animationSpec = this.$animation;
            this.label = 1;
            if (Animatable.f(animatable, fC, animationSpec, null, null, this, 12, null) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
