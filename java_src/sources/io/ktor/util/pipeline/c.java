package io.ktor.util.pipeline;

import e8.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class c<TSubject, Call> {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final List<Object> SharedArrayList = new ArrayList();

    @NotNull
    private List<q<e<TSubject, Call>, TSubject, kotlin.coroutines.d<? super l0>, Object>> interceptors;

    @NotNull
    private final h phase;

    @NotNull
    private final i relation;
    private boolean shared;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public c(@NotNull h phase, @NotNull i relation, @NotNull List<q<e<TSubject, Call>, TSubject, kotlin.coroutines.d<? super l0>, Object>> interceptors) {
        t.j(phase, "phase");
        t.j(relation, "relation");
        t.j(interceptors, "interceptors");
        this.phase = phase;
        this.relation = relation;
        this.interceptors = interceptors;
        this.shared = true;
    }

    @NotNull
    public final h e() {
        return this.phase;
    }

    @NotNull
    public final i f() {
        return this.relation;
    }

    @NotNull
    public final List<q<e<TSubject, Call>, TSubject, kotlin.coroutines.d<? super l0>, Object>> i() {
        this.shared = true;
        return this.interceptors;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public c(@NotNull h phase, @NotNull i relation) {
        t.j(phase, "phase");
        t.j(relation, "relation");
        List<Object> list = SharedArrayList;
        t.h(list, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.Function3<io.ktor.util.pipeline.PipelineContext<TSubject of io.ktor.util.pipeline.PhaseContent, Call of io.ktor.util.pipeline.PhaseContent>, TSubject of io.ktor.util.pipeline.PhaseContent, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>{ io.ktor.util.pipeline.PipelineKt.PipelineInterceptorFunction<TSubject of io.ktor.util.pipeline.PhaseContent, Call of io.ktor.util.pipeline.PhaseContent> }>");
        this(phase, relation, v0.c(list));
        if (!list.isEmpty()) {
            throw new IllegalStateException("The shared empty array list has been modified".toString());
        }
    }

    public final void a(@NotNull q<? super e<TSubject, Call>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object> interceptor) {
        t.j(interceptor, "interceptor");
        if (this.shared) {
            d();
        }
        this.interceptors.add(interceptor);
    }

    public final void b(@NotNull List<q<e<TSubject, Call>, TSubject, kotlin.coroutines.d<? super l0>, Object>> destination) {
        t.j(destination, "destination");
        List<q<e<TSubject, Call>, TSubject, kotlin.coroutines.d<? super l0>, Object>> list = this.interceptors;
        if (destination instanceof ArrayList) {
            ((ArrayList) destination).ensureCapacity(destination.size() + list.size());
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            destination.add(list.get(i10));
        }
    }

    @NotNull
    public final List<q<e<TSubject, Call>, TSubject, kotlin.coroutines.d<? super l0>, Object>> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.interceptors);
        return arrayList;
    }

    public final int g() {
        return this.interceptors.size();
    }

    public final boolean h() {
        return this.interceptors.isEmpty();
    }

    @NotNull
    public String toString() {
        return "Phase `" + this.phase.a() + "`, " + g() + " handlers";
    }

    private final void d() {
        this.interceptors = c();
        this.shared = false;
    }
}
