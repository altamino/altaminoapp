package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.unit.IntOffset;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.compose.foundation.lazy.LazyListItemPlacementAnimator$getAnimatedOffset$1", f = "LazyListItemPlacementAnimator.kt", l = {266}, m = "invokeSuspend")
final class LazyListItemPlacementAnimator$getAnimatedOffset$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ PlaceableInfo $item;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListItemPlacementAnimator$getAnimatedOffset$1(PlaceableInfo placeableInfo, d<? super LazyListItemPlacementAnimator$getAnimatedOffset$1> dVar) {
        super(2, dVar);
        this.$item = placeableInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new LazyListItemPlacementAnimator$getAnimatedOffset$1(this.$item, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((LazyListItemPlacementAnimator$getAnimatedOffset$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            Animatable<IntOffset, AnimationVector2D> animatableA = this.$item.a();
            IntOffset intOffsetB = IntOffset.b(this.$item.d());
            this.label = 1;
            if (animatableA.u(intOffsetB, this) == objE) {
                return objE;
            }
        }
        this.$item.e(false);
        return l0.INSTANCE;
    }
}
