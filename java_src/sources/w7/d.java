package w7;

import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class d<T, R> extends c<T, R> implements kotlin.coroutines.d<R> {

    @Nullable
    private kotlin.coroutines.d<Object> cont;

    @NotNull
    private e8.q<? super c<?, ?>, Object, ? super kotlin.coroutines.d<Object>, ? extends Object> function;

    @NotNull
    private Object result;

    @Nullable
    private Object value;

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        this.cont = null;
        this.result = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull e8.q<? super c<T, R>, ? super T, ? super kotlin.coroutines.d<? super R>, ? extends Object> block, T t5) {
        super(null);
        kotlin.jvm.internal.t.j(block, "block");
        this.function = block;
        this.value = t5;
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.cont = this;
        this.result = b.UNDEFINED_RESULT;
    }

    @Override // w7.c
    @Nullable
    public Object a(T t5, @NotNull kotlin.coroutines.d<? super R> dVar) {
        kotlin.jvm.internal.t.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        this.cont = dVar;
        this.value = t5;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objE;
    }

    public final R b() {
        while (true) {
            R r = (R) this.result;
            kotlin.coroutines.d<Object> dVar = this.cont;
            if (dVar == null) {
                w.b(r);
                return r;
            }
            if (v.d(b.UNDEFINED_RESULT, r)) {
                try {
                    e8.q<? super c<?, ?>, Object, ? super kotlin.coroutines.d<Object>, ? extends Object> qVar = this.function;
                    Object obj = this.value;
                    Object objD = !(qVar instanceof kotlin.coroutines.jvm.internal.a) ? kotlin.coroutines.intrinsics.c.d(qVar, this, obj, dVar) : ((e8.q) v0.e(qVar, 3)).invoke(this, obj, dVar);
                    if (objD != kotlin.coroutines.intrinsics.d.e()) {
                        dVar.resumeWith(v.b(objD));
                    }
                } catch (Throwable th) {
                    v.a aVar = v.Companion;
                    dVar.resumeWith(v.b(w.a(th)));
                }
            } else {
                this.result = b.UNDEFINED_RESULT;
                dVar.resumeWith(r);
            }
        }
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        return kotlin.coroutines.h.INSTANCE;
    }
}
