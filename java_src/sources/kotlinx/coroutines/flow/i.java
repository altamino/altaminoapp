package kotlinx.coroutines.flow;

import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class i {

    @NotNull
    public static final String DEFAULT_CONCURRENCY_PROPERTY_NAME = "kotlinx.coroutines.flow.defaultConcurrency";

    @NotNull
    public static final <T> g<T> A(T t5) {
        return j.e(t5);
    }

    @NotNull
    public static final <T> g<T> B(@NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.g gVar2) {
        return m.f(gVar, gVar2);
    }

    @NotNull
    public static final <T> b2 C(@NotNull g<? extends T> gVar, @NotNull kotlinx.coroutines.o0 o0Var) {
        return l.d(gVar, o0Var);
    }

    @NotNull
    public static final <T, R> g<R> D(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar) {
        return r.a(gVar, pVar);
    }

    @NotNull
    public static final <T> g<T> E(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super T>, ? super Throwable, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar) {
        return o.d(gVar, qVar);
    }

    @NotNull
    public static final <T> g<T> F(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return u.b(gVar, pVar);
    }

    @NotNull
    public static final <T> g<T> G(@NotNull g<? extends T> gVar, @NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return o.e(gVar, pVar);
    }

    @NotNull
    public static final <T> b0<T> H(@NotNull b0<? extends T> b0Var, @NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return t.e(b0Var, pVar);
    }

    @NotNull
    public static final <T> b0<T> I(@NotNull g<? extends T> gVar, @NotNull kotlinx.coroutines.o0 o0Var, @NotNull h0 h0Var, int i10) {
        return t.f(gVar, o0Var, h0Var, i10);
    }

    @Nullable
    public static final <T> Object J(@NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return s.e(gVar, dVar);
    }

    @NotNull
    public static final <T> l0<T> K(@NotNull g<? extends T> gVar, @NotNull kotlinx.coroutines.o0 o0Var, @NotNull h0 h0Var, T t5) {
        return t.g(gVar, o0Var, h0Var, t5);
    }

    @NotNull
    public static final <T> g<T> L(@NotNull g<? extends T> gVar, int i10) {
        return q.d(gVar, i10);
    }

    @NotNull
    public static final <T, R> g<R> M(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super R>, ? super T, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar) {
        return r.b(gVar, qVar);
    }

    @NotNull
    public static final <T, R> g<R> N(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super R>, ? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> qVar) {
        return q.e(gVar, qVar);
    }

    @NotNull
    public static final <T> g<T> a(@NotNull Iterable<? extends T> iterable) {
        return j.a(iterable);
    }

    @NotNull
    public static final <T> b0<T> b(@NotNull w<T> wVar) {
        return t.a(wVar);
    }

    @NotNull
    public static final <T> l0<T> c(@NotNull x<T> xVar) {
        return t.b(xVar);
    }

    @NotNull
    public static final <T> g<T> d(@NotNull g<? extends T> gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return m.a(gVar, i10, aVar);
    }

    @NotNull
    public static final <T> g<T> f(@NotNull e8.p<? super kotlinx.coroutines.channels.r<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return j.b(pVar);
    }

    @NotNull
    public static final <T> g<T> g(@NotNull g<? extends T> gVar) {
        return m.c(gVar);
    }

    @NotNull
    public static final <T> g<T> h(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super T>, ? super Throwable, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar) {
        return p.a(gVar, qVar);
    }

    @Nullable
    public static final <T> Object i(@NotNull g<? extends T> gVar, @NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super Throwable> dVar) {
        return p.b(gVar, hVar, dVar);
    }

    @NotNull
    public static final <T> g<T> j(@NotNull e8.p<? super kotlinx.coroutines.channels.r<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return j.c(pVar);
    }

    @Nullable
    public static final Object k(@NotNull g<?> gVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return l.a(gVar, dVar);
    }

    @Nullable
    public static final <T> Object l(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return l.b(gVar, pVar, dVar);
    }

    @NotNull
    public static final <T1, T2, R> g<R> m(@NotNull g<? extends T1> gVar, @NotNull g<? extends T2> gVar2, @NotNull e8.q<? super T1, ? super T2, ? super kotlin.coroutines.d<? super R>, ? extends Object> qVar) {
        return v.b(gVar, gVar2, qVar);
    }

    @NotNull
    public static final <T> g<T> n(@NotNull g<? extends T> gVar) {
        return m.e(gVar);
    }

    @NotNull
    public static final <T> g<T> o(@NotNull g<? extends T> gVar) {
        return n.a(gVar);
    }

    @NotNull
    public static final <T> g<T> p(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar) {
        return q.b(gVar, pVar);
    }

    @Nullable
    public static final <T> Object q(@NotNull h<? super T> hVar, @NotNull kotlinx.coroutines.channels.t<? extends T> tVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return k.b(hVar, tVar, dVar);
    }

    @Nullable
    public static final <T> Object r(@NotNull h<? super T> hVar, @NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return l.c(hVar, gVar, dVar);
    }

    public static final void s(@NotNull h<?> hVar) {
        o.b(hVar);
    }

    @NotNull
    public static final <T> g<T> t(@NotNull g<? extends T> gVar) {
        return u.a(gVar);
    }

    @Nullable
    public static final <T> Object u(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return s.a(gVar, pVar, dVar);
    }

    @Nullable
    public static final <T> Object v(@NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return s.b(gVar, dVar);
    }

    @Nullable
    public static final <T> Object w(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return s.c(gVar, pVar, dVar);
    }

    @Nullable
    public static final <T> Object x(@NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return s.d(gVar, dVar);
    }

    @NotNull
    public static final <T> g<T> y(@NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return j.d(pVar);
    }

    @NotNull
    public static final <T1, T2, R> g<R> z(@NotNull g<? extends T1> gVar, @NotNull g<? extends T2> gVar2, @NotNull e8.q<? super T1, ? super T2, ? super kotlin.coroutines.d<? super R>, ? extends Object> qVar) {
        return v.c(gVar, gVar2, qVar);
    }
}
