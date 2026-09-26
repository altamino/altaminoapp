package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.compose.runtime.Recomposer$awaitIdle$2", f = "Recomposer.kt", l = {}, m = "invokeSuspend")
final class Recomposer$awaitIdle$2 extends l implements p<Recomposer.State, d<? super Boolean>, Object> {
    /* synthetic */ Object L$0;
    int label;

    Recomposer$awaitIdle$2(d<? super Recomposer$awaitIdle$2> dVar) {
        super(2, dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        Recomposer$awaitIdle$2 recomposer$awaitIdle$2 = new Recomposer$awaitIdle$2(dVar);
        recomposer$awaitIdle$2.L$0 = obj;
        return recomposer$awaitIdle$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull Recomposer.State state, @Nullable d<? super Boolean> dVar) {
        return ((Recomposer$awaitIdle$2) create(state, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean z6;
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            if (((Recomposer.State) this.L$0).compareTo(Recomposer.State.Idle) > 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            return kotlin.coroutines.jvm.internal.b.a(z6);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
