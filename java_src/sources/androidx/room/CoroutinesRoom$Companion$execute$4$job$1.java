package androidx.room;

import java.util.concurrent.Callable;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1", f = "CoroutinesRoom.kt", l = {}, m = "invokeSuspend")
final class CoroutinesRoom$Companion$execute$4$job$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ Callable<Object> $callable;
    final /* synthetic */ kotlinx.coroutines.o<Object> $continuation;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoroutinesRoom$Companion$execute$4$job$1(Callable<Object> callable, kotlinx.coroutines.o<Object> oVar, kotlin.coroutines.d<? super CoroutinesRoom$Companion$execute$4$job$1> dVar) {
        super(2, dVar);
        this.$callable = callable;
        this.$continuation = oVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new CoroutinesRoom$Companion$execute$4$job$1(this.$callable, this.$continuation, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((CoroutinesRoom$Companion$execute$4$job$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w7.w.b(obj);
            try {
                this.$continuation.resumeWith(w7.v.b(this.$callable.call()));
            } catch (Throwable th) {
                kotlinx.coroutines.o<Object> oVar = this.$continuation;
                w7.v.a aVar = w7.v.Companion;
                oVar.resumeWith(w7.v.b(w7.w.a(th)));
            }
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
