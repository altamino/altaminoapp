package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a implements kotlin.coroutines.d<Object>, e, Serializable {

    @Nullable
    private final kotlin.coroutines.d<Object> completion;

    @NotNull
    public kotlin.coroutines.d<l0> create(@NotNull kotlin.coroutines.d<?> completion) {
        t.j(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Nullable
    public final kotlin.coroutines.d<Object> getCompletion() {
        return this.completion;
    }

    @Nullable
    protected abstract Object invokeSuspend(@NotNull Object obj);

    protected void releaseIntercepted() {
    }

    @Override // kotlin.coroutines.d
    public final void resumeWith(@NotNull Object obj) {
        kotlin.coroutines.d<Object> dVar = this;
        while (true) {
            h.b(dVar);
            a aVar = (a) dVar;
            kotlin.coroutines.d<Object> dVar2 = aVar.completion;
            t.g(dVar2);
            try {
                Object objInvokeSuspend = aVar.invokeSuspend(obj);
                if (objInvokeSuspend == kotlin.coroutines.intrinsics.d.e()) {
                    return;
                } else {
                    obj = v.b(objInvokeSuspend);
                }
            } catch (Throwable th) {
                v.a aVar2 = v.Companion;
                obj = v.b(w.a(th));
            }
            aVar.releaseIntercepted();
            if (!(dVar2 instanceof a)) {
                dVar2.resumeWith(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    @NotNull
    public kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> completion) {
        t.j(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public e getCallerFrame() {
        kotlin.coroutines.d<Object> dVar = this.completion;
        if (dVar instanceof e) {
            return (e) dVar;
        }
        return null;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public a(@Nullable kotlin.coroutines.d<Object> dVar) {
        this.completion = dVar;
    }

    @Nullable
    public StackTraceElement getStackTraceElement() {
        return g.d(this);
    }
}
