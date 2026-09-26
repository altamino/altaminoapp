package androidx.compose.foundation;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.compose.foundation.MutatorMutex$mutate$2", f = "MutatorMutex.kt", l = {173, 119}, m = "invokeSuspend")
final class MutatorMutex$mutate$2 extends l implements p<o0, d<Object>, Object> {
    final /* synthetic */ e8.l<d<Object>, Object> $block;
    final /* synthetic */ MutatePriority $priority;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ MutatorMutex this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MutatorMutex$mutate$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, e8.l<? super d<Object>, ? extends Object> lVar, d<? super MutatorMutex$mutate$2> dVar) {
        super(2, dVar);
        this.$priority = mutatePriority;
        this.this$0 = mutatorMutex;
        this.$block = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        MutatorMutex$mutate$2 mutatorMutex$mutate$2 = new MutatorMutex$mutate$2(this.$priority, this.this$0, this.$block, dVar);
        mutatorMutex$mutate$2.L$0 = obj;
        return mutatorMutex$mutate$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<Object> dVar) {
        return ((MutatorMutex$mutate$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.sync.a] */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlinx.coroutines.sync.a aVar;
        e8.l<d<Object>, Object> lVar;
        MutatorMutex.Mutator mutator;
        MutatorMutex mutatorMutex;
        MutatorMutex.Mutator mutator2;
        Throwable th;
        MutatorMutex mutatorMutex2;
        kotlinx.coroutines.sync.a aVar2;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        ?? r1 = this.label;
        try {
            try {
                if (r1 != 0) {
                    if (r1 != 1) {
                        if (r1 == 2) {
                            mutatorMutex2 = (MutatorMutex) this.L$2;
                            aVar2 = (kotlinx.coroutines.sync.a) this.L$1;
                            mutator2 = (MutatorMutex.Mutator) this.L$0;
                            try {
                                w.b(obj);
                                androidx.compose.animation.core.d.a(mutatorMutex2.currentMutator, mutator2, null);
                                aVar2.e(null);
                                return obj;
                            } catch (Throwable th2) {
                                th = th2;
                                androidx.compose.animation.core.d.a(mutatorMutex2.currentMutator, mutator2, null);
                                throw th;
                            }
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutatorMutex = (MutatorMutex) this.L$3;
                    lVar = (e8.l) this.L$2;
                    kotlinx.coroutines.sync.a aVar3 = (kotlinx.coroutines.sync.a) this.L$1;
                    mutator = (MutatorMutex.Mutator) this.L$0;
                    w.b(obj);
                    aVar = aVar3;
                } else {
                    w.b(obj);
                    o0 o0Var = (o0) this.L$0;
                    MutatePriority mutatePriority = this.$priority;
                    g.b bVar = o0Var.getCoroutineContext().get(b2.Key);
                    t.g(bVar);
                    MutatorMutex.Mutator mutator3 = new MutatorMutex.Mutator(mutatePriority, (b2) bVar);
                    this.this$0.e(mutator3);
                    aVar = this.this$0.mutex;
                    e8.l<d<Object>, Object> lVar2 = this.$block;
                    MutatorMutex mutatorMutex3 = this.this$0;
                    this.L$0 = mutator3;
                    this.L$1 = aVar;
                    this.L$2 = lVar2;
                    this.L$3 = mutatorMutex3;
                    this.label = 1;
                    if (aVar.d(null, this) == objE) {
                        return objE;
                    }
                    lVar = lVar2;
                    mutator = mutator3;
                    mutatorMutex = mutatorMutex3;
                }
                this.L$0 = mutator;
                this.L$1 = aVar;
                this.L$2 = mutatorMutex;
                this.L$3 = null;
                this.label = 2;
                Object objInvoke = lVar.invoke(this);
                if (objInvoke == objE) {
                    return objE;
                }
                mutatorMutex2 = mutatorMutex;
                aVar2 = aVar;
                obj = objInvoke;
                mutator2 = mutator;
                androidx.compose.animation.core.d.a(mutatorMutex2.currentMutator, mutator2, null);
                aVar2.e(null);
                return obj;
            } catch (Throwable th3) {
                mutator2 = mutator;
                th = th3;
                mutatorMutex2 = mutatorMutex;
                androidx.compose.animation.core.d.a(mutatorMutex2.currentMutator, mutator2, null);
                throw th;
            }
        } catch (Throwable th4) {
            r1.e(null);
            throw th4;
        }
    }
}
