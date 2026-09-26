package androidx.room;

import java.util.concurrent.Callable;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes8.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.room.CoroutinesRoom$Companion$execute$2", f = "CoroutinesRoom.kt", l = {}, m = "invokeSuspend")
final class CoroutinesRoom$Companion$execute$2<R> extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super R>, Object> {
    final /* synthetic */ Callable<R> $callable;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoroutinesRoom$Companion$execute$2(Callable<R> callable, kotlin.coroutines.d<? super CoroutinesRoom$Companion$execute$2> dVar) {
        super(2, dVar);
        this.$callable = callable;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new CoroutinesRoom$Companion$execute$2(this.$callable, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super R> dVar) {
        return ((CoroutinesRoom$Companion$execute$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w7.w.b(obj);
            return this.$callable.call();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
