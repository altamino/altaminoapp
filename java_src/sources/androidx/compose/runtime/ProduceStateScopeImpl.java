package androidx.compose.runtime;

import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
final class ProduceStateScopeImpl<T> implements ProduceStateScope<T>, MutableState<T> {
    private final /* synthetic */ MutableState<T> $$delegate_0;

    @NotNull
    private final g coroutineContext;

    @Override // kotlinx.coroutines.o0
    @NotNull
    public g getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.compose.runtime.MutableState, androidx.compose.runtime.State
    public T getValue() {
        return this.$$delegate_0.getValue();
    }

    @Override // androidx.compose.runtime.MutableState
    public void setValue(T t5) {
        this.$$delegate_0.setValue(t5);
    }

    public ProduceStateScopeImpl(@NotNull MutableState<T> state, @NotNull g coroutineContext) {
        t.j(state, "state");
        t.j(coroutineContext, "coroutineContext");
        this.coroutineContext = coroutineContext;
        this.$$delegate_0 = state;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public Object a(@NotNull e8.a<l0> aVar, @NotNull d<?> dVar) {
        ProduceStateScopeImpl$awaitDispose$1 produceStateScopeImpl$awaitDispose$1;
        if (dVar instanceof ProduceStateScopeImpl$awaitDispose$1) {
            produceStateScopeImpl$awaitDispose$1 = (ProduceStateScopeImpl$awaitDispose$1) dVar;
            int i10 = produceStateScopeImpl$awaitDispose$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                produceStateScopeImpl$awaitDispose$1.label = i10 - Integer.MIN_VALUE;
            } else {
                produceStateScopeImpl$awaitDispose$1 = new ProduceStateScopeImpl$awaitDispose$1(this, dVar);
            }
        } else {
            produceStateScopeImpl$awaitDispose$1 = new ProduceStateScopeImpl$awaitDispose$1(this, dVar);
        }
        Object obj = produceStateScopeImpl$awaitDispose$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = produceStateScopeImpl$awaitDispose$1.label;
        try {
            if (i11 == 0) {
                w.b(obj);
                produceStateScopeImpl$awaitDispose$1.L$0 = aVar;
                produceStateScopeImpl$awaitDispose$1.label = 1;
                p pVar = new p(kotlin.coroutines.intrinsics.c.c(produceStateScopeImpl$awaitDispose$1), 1);
                pVar.x();
                Object objU = pVar.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    h.c(produceStateScopeImpl$awaitDispose$1);
                }
                if (objU == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar = (e8.a) produceStateScopeImpl$awaitDispose$1.L$0;
                w.b(obj);
            }
            throw new i();
        } catch (Throwable th) {
            aVar.invoke();
            throw th;
        }
    }
}
