package io.ktor.util.pipeline;

import e8.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public class d<TSubject, TContext> {

    @NotNull
    private volatile /* synthetic */ Object _interceptors;

    @NotNull
    private final io.ktor.util.b attributes;
    private final boolean developmentMode;
    private boolean interceptorsListShared;

    @Nullable
    private h interceptorsListSharedPhase;
    private int interceptorsQuantity;

    @NotNull
    private final List<Object> phasesRaw;

    public d(@NotNull h... phases) {
        t.j(phases, "phases");
        this.attributes = io.ktor.util.d.a(true);
        this.phasesRaw = v.s(Arrays.copyOf(phases, phases.length));
        this._interceptors = null;
    }

    private final void n() {
        o(null);
        this.interceptorsListShared = false;
        this.interceptorsListSharedPhase = null;
    }

    private final void o(List<? extends q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> list) {
        this._interceptors = list;
    }

    public void a() {
    }

    public boolean g() {
        return this.developmentMode;
    }

    private final List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> b() {
        int iO;
        int i10 = this.interceptorsQuantity;
        if (i10 == 0) {
            m(v.m());
            return v.m();
        }
        List<Object> list = this.phasesRaw;
        int i11 = 0;
        if (i10 == 1 && (iO = v.o(list)) >= 0) {
            int i12 = 0;
            while (true) {
                Object obj = list.get(i12);
                c<TSubject, TContext> cVar = obj instanceof c ? (c) obj : null;
                if (cVar != null && !cVar.h()) {
                    List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> listI = cVar.i();
                    p(cVar);
                    return listI;
                }
                if (i12 == iO) {
                    break;
                }
                i12++;
            }
        }
        ArrayList arrayList = new ArrayList();
        int iO2 = v.o(list);
        if (iO2 >= 0) {
            while (true) {
                Object obj2 = list.get(i11);
                c cVar2 = obj2 instanceof c ? (c) obj2 : null;
                if (cVar2 != null) {
                    cVar2.b(arrayList);
                }
                if (i11 == iO2) {
                    break;
                }
                i11++;
            }
        }
        m(arrayList);
        return arrayList;
    }

    private final c<TSubject, TContext> e(h hVar) {
        List<Object> list = this.phasesRaw;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj == hVar) {
                c<TSubject, TContext> cVar = new c<>(hVar, i.c.INSTANCE);
                list.set(i10, cVar);
                return cVar;
            }
            if (obj instanceof c) {
                c<TSubject, TContext> cVar2 = (c) obj;
                if (cVar2.e() == hVar) {
                    return cVar2;
                }
            }
        }
        return null;
    }

    private final int f(h hVar) {
        List<Object> list = this.phasesRaw;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj == hVar || ((obj instanceof c) && ((c) obj).e() == hVar)) {
                return i10;
            }
        }
        return -1;
    }

    private final List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> h() {
        return (List) this._interceptors;
    }

    private final boolean i(h hVar) {
        List<Object> list = this.phasesRaw;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj == hVar) {
                return true;
            }
            if ((obj instanceof c) && ((c) obj).e() == hVar) {
                return true;
            }
        }
        return false;
    }

    public final void j(@NotNull h reference, @NotNull h phase) throws b {
        i iVarF;
        h hVarA;
        t.j(reference, "reference");
        t.j(phase, "phase");
        if (i(phase)) {
            return;
        }
        int iF = f(reference);
        if (iF == -1) {
            throw new b("Phase " + reference + " was not registered for this pipeline");
        }
        int i10 = iF + 1;
        int iO = v.o(this.phasesRaw);
        if (i10 <= iO) {
            while (true) {
                Object obj = this.phasesRaw.get(i10);
                c cVar = obj instanceof c ? (c) obj : null;
                if (cVar != null && (iVarF = cVar.f()) != null) {
                    i.a aVar = iVarF instanceof i.a ? (i.a) iVarF : null;
                    if (aVar != null && (hVarA = aVar.a()) != null && t.e(hVarA, reference)) {
                        iF = i10;
                    }
                    if (i10 == iO) {
                        break;
                    } else {
                        i10++;
                    }
                } else {
                    break;
                }
            }
        }
        this.phasesRaw.add(iF + 1, new c(phase, new i.a(reference)));
    }

    public final void k(@NotNull h reference, @NotNull h phase) throws b {
        t.j(reference, "reference");
        t.j(phase, "phase");
        if (i(phase)) {
            return;
        }
        int iF = f(reference);
        if (iF != -1) {
            this.phasesRaw.add(iF, new c(phase, new i.b(reference)));
            return;
        }
        throw new b("Phase " + reference + " was not registered for this pipeline");
    }

    public final void l(@NotNull h phase, @NotNull q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(phase, "phase");
        t.j(block, "block");
        c<TSubject, TContext> cVarE = e(phase);
        if (cVarE == null) {
            throw new b("Phase " + phase + " was not registered for this pipeline");
        }
        if (r(phase, block)) {
            this.interceptorsQuantity++;
            return;
        }
        cVarE.a(block);
        this.interceptorsQuantity++;
        n();
        a();
    }

    private final e<TSubject, TContext> c(TContext tcontext, TSubject tsubject, kotlin.coroutines.g gVar) {
        return f.a(tcontext, q(), tsubject, gVar, g());
    }

    private final void m(List<? extends q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> list) {
        o(list);
        this.interceptorsListShared = false;
        this.interceptorsListSharedPhase = null;
    }

    private final void p(c<TSubject, TContext> cVar) {
        o(cVar.i());
        this.interceptorsListShared = false;
        this.interceptorsListSharedPhase = cVar.e();
    }

    private final List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> q() {
        if (h() == null) {
            b();
        }
        this.interceptorsListShared = true;
        List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> listH = h();
        t.g(listH);
        return listH;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean r(h hVar, q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object> qVar) {
        List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> listH = h();
        if (this.phasesRaw.isEmpty() || listH == null || this.interceptorsListShared || !v0.l(listH)) {
            return false;
        }
        if (t.e(this.interceptorsListSharedPhase, hVar)) {
            listH.add(qVar);
            return true;
        }
        if (!t.e(hVar, d0.v0(this.phasesRaw)) && f(hVar) != v.o(this.phasesRaw)) {
            return false;
        }
        c<TSubject, TContext> cVarE = e(hVar);
        t.g(cVarE);
        cVarE.a(qVar);
        listH.add(qVar);
        return true;
    }

    @Nullable
    public final Object d(@NotNull TContext tcontext, @NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        return c(tcontext, tsubject, dVar.getContext()).a(tsubject, dVar);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(@NotNull h phase, @NotNull List<? extends q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> interceptors) {
        this(phase);
        t.j(phase, "phase");
        t.j(interceptors, "interceptors");
        Iterator<T> it = interceptors.iterator();
        while (it.hasNext()) {
            l(phase, (q) it.next());
        }
    }
}
