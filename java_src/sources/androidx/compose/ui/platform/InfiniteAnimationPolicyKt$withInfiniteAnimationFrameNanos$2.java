package androidx.compose.ui.platform;

import androidx.compose.runtime.MonotonicFrameClockKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes5.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2", f = "InfiniteAnimationPolicy.kt", l = {65}, m = "invokeSuspend")
final class InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2<R> extends kotlin.coroutines.jvm.internal.l implements e8.l<kotlin.coroutines.d<? super R>, Object> {
    final /* synthetic */ e8.l<Long, R> $onFrame;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(e8.l<? super Long, ? extends R> lVar, kotlin.coroutines.d<? super InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2> dVar) {
        super(1, dVar);
        this.$onFrame = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@NotNull kotlin.coroutines.d<?> dVar) {
        return new InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2(this.$onFrame, dVar);
    }

    @Override // e8.l
    @Nullable
    public final Object invoke(@Nullable kotlin.coroutines.d<? super R> dVar) {
        return ((InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2) create(dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w7.w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w7.w.b(obj);
            e8.l<Long, R> lVar = this.$onFrame;
            this.label = 1;
            obj = MonotonicFrameClockKt.b(lVar, this);
            if (obj == objE) {
                return objE;
            }
        }
        return obj;
    }
}
