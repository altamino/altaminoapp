package io.ktor.util.pipeline;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class a<TSubject, TContext> extends e<TSubject, TContext> {

    @NotNull
    private final kotlin.coroutines.g coroutineContext;
    private int index;

    @NotNull
    private final List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> interceptors;

    @NotNull
    private TSubject subject;

    /* JADX INFO: renamed from: io.ktor.util.pipeline.a$a, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.util.pipeline.DebugPipelineContext", f = "DebugPipelineContext.kt", l = {80}, m = "proceedLoop")
    static final class C0411a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ a<TSubject, TContext> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0411a(a<TSubject, TContext> aVar, kotlin.coroutines.d<? super C0411a> dVar) {
            super(dVar);
            this.this$0 = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.i(this);
        }
    }

    @Override // io.ktor.util.pipeline.e
    @Nullable
    public Object a(@NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        this.index = 0;
        j(tsubject);
        return c(dVar);
    }

    public void g() {
        this.index = -1;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    @NotNull
    public TSubject h() {
        return this.subject;
    }

    public void j(@NotNull TSubject tsubject) {
        t.j(tsubject, "<set-?>");
        this.subject = tsubject;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull TContext context, @NotNull List<? extends q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> interceptors, @NotNull TSubject subject, @NotNull kotlin.coroutines.g coroutineContext) {
        super(context);
        t.j(context, "context");
        t.j(interceptors, "interceptors");
        t.j(subject, "subject");
        t.j(coroutineContext, "coroutineContext");
        this.interceptors = interceptors;
        this.coroutineContext = coroutineContext;
        this.subject = subject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(kotlin.coroutines.d<? super TSubject> dVar) {
        C0411a c0411a;
        a<TSubject, TContext> aVar;
        q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object> qVar;
        TSubject tsubjectH;
        if (dVar instanceof C0411a) {
            c0411a = (C0411a) dVar;
            int i10 = c0411a.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0411a.label = i10 - Integer.MIN_VALUE;
            } else {
                c0411a = new C0411a(this, dVar);
            }
        } else {
            c0411a = new C0411a(this, dVar);
        }
        Object obj = c0411a.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = c0411a.label;
        if (i11 == 0) {
            w.b(obj);
            aVar = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (a) c0411a.L$0;
            w.b(obj);
        }
        do {
            int i12 = aVar.index;
            if (i12 != -1) {
                List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> list = aVar.interceptors;
                if (i12 >= list.size()) {
                    aVar.g();
                } else {
                    qVar = list.get(i12);
                    aVar.index = i12 + 1;
                    t.h(qVar, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.coroutines.SuspendFunction2<io.ktor.util.pipeline.PipelineContext<TSubject of io.ktor.util.pipeline.DebugPipelineContext, TContext of io.ktor.util.pipeline.DebugPipelineContext>, TSubject of io.ktor.util.pipeline.DebugPipelineContext, kotlin.Unit>{ io.ktor.util.pipeline.PipelineKt.PipelineInterceptor<TSubject of io.ktor.util.pipeline.DebugPipelineContext, TContext of io.ktor.util.pipeline.DebugPipelineContext> }");
                    tsubjectH = aVar.h();
                    c0411a.L$0 = aVar;
                    c0411a.label = 1;
                }
            }
            return aVar.h();
        } while (qVar.invoke(aVar, tsubjectH, c0411a) != objE);
        return objE;
    }

    @Override // io.ktor.util.pipeline.e
    @Nullable
    public Object c(@NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        int i10 = this.index;
        if (i10 < 0) {
            return h();
        }
        if (i10 < this.interceptors.size()) {
            return i(dVar);
        }
        g();
        return h();
    }

    @Override // io.ktor.util.pipeline.e
    @Nullable
    public Object e(@NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        j(tsubject);
        return c(dVar);
    }
}
