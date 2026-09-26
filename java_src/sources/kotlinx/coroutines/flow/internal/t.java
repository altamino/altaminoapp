package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.f2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class t<T> extends kotlin.coroutines.jvm.internal.d implements kotlinx.coroutines.flow.h<T> {

    @NotNull
    public final kotlin.coroutines.g collectContext;
    public final int collectContextSize;

    @NotNull
    public final kotlinx.coroutines.flow.h<T> collector;

    @Nullable
    private kotlin.coroutines.d<? super l0> completion;

    @Nullable
    private kotlin.coroutines.g lastEmissionContext;

    static final class a extends kotlin.jvm.internal.v implements e8.p<Integer, kotlin.coroutines.g.b, Integer> {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @NotNull
        public final Integer a(int i10, @NotNull kotlin.coroutines.g.b bVar) {
            return Integer.valueOf(i10 + 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, kotlin.coroutines.g.b bVar) {
            return a(num.intValue(), bVar);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @NotNull kotlin.coroutines.g gVar) {
        super(q.INSTANCE, kotlin.coroutines.h.INSTANCE);
        this.collector = hVar;
        this.collectContext = gVar;
        this.collectContextSize = ((Number) gVar.fold(0, a.INSTANCE)).intValue();
    }

    private final void f(kotlin.coroutines.g gVar, kotlin.coroutines.g gVar2, T t5) {
        if (gVar2 instanceof l) {
            h((l) gVar2, t5);
        }
        v.a(this, gVar);
    }

    private final void h(l lVar, Object obj) {
        throw new IllegalStateException(kotlin.text.m.f("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + lVar.e + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kotlin.coroutines.jvm.internal.a, kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        kotlin.coroutines.d<? super l0> dVar = this.completion;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.d, kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        kotlin.coroutines.g gVar = this.lastEmissionContext;
        return gVar == null ? kotlin.coroutines.h.INSTANCE : gVar;
    }

    private final Object g(kotlin.coroutines.d<? super l0> dVar, T t5) {
        kotlin.coroutines.g context = dVar.getContext();
        f2.j(context);
        kotlin.coroutines.g gVar = this.lastEmissionContext;
        if (gVar != context) {
            f(context, gVar, t5);
            this.lastEmissionContext = context;
        }
        this.completion = dVar;
        e8.q qVar = u.emitFun;
        kotlinx.coroutines.flow.h<T> hVar = this.collector;
        kotlin.jvm.internal.t.h(hVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object objInvoke = qVar.invoke(hVar, t5, this);
        if (!kotlin.jvm.internal.t.e(objInvoke, kotlin.coroutines.intrinsics.d.e())) {
            this.completion = null;
        }
        return objInvoke;
    }

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        try {
            Object objG = g(dVar, t5);
            if (objG == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            if (objG == kotlin.coroutines.intrinsics.d.e()) {
                return objG;
            }
            return l0.INSTANCE;
        } catch (Throwable th) {
            this.lastEmissionContext = new l(th, dVar.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public Object invokeSuspend(@NotNull Object obj) {
        Throwable thE = w7.v.e(obj);
        if (thE != null) {
            this.lastEmissionContext = new l(thE, getContext());
        }
        kotlin.coroutines.d<? super l0> dVar = this.completion;
        if (dVar != null) {
            dVar.resumeWith(obj);
        }
        return kotlin.coroutines.intrinsics.d.e();
    }

    @Override // kotlin.coroutines.jvm.internal.d, kotlin.coroutines.jvm.internal.a
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
