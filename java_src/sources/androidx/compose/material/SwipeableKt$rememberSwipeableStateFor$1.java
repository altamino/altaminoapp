package androidx.compose.material;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.compose.material.SwipeableKt$rememberSwipeableStateFor$1", f = "Swipeable.kt", l = {512}, m = "invokeSuspend")
final class SwipeableKt$rememberSwipeableStateFor$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ SwipeableState<T> $swipeableState;
    final /* synthetic */ T $value;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableKt$rememberSwipeableStateFor$1(T t5, SwipeableState<T> swipeableState, d<? super SwipeableKt$rememberSwipeableStateFor$1> dVar) {
        super(2, dVar);
        this.$value = t5;
        this.$swipeableState = swipeableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new SwipeableKt$rememberSwipeableStateFor$1(this.$value, this.$swipeableState, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((SwipeableKt$rememberSwipeableStateFor$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            if (!t.e(this.$value, this.$swipeableState.p())) {
                SwipeableState<T> swipeableState = this.$swipeableState;
                T t5 = this.$value;
                this.label = 1;
                if (SwipeableState.k(swipeableState, t5, null, this, 2, null) == objE) {
                    return objE;
                }
            }
        }
        return l0.INSTANCE;
    }
}
