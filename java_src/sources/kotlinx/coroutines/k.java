package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class k {
    private static final int RESUMED = 2;
    private static final int SUSPENDED = 1;
    private static final int UNDECIDED = 0;

    public static /* synthetic */ v0 b(o0 o0Var, kotlin.coroutines.g gVar, q0 q0Var, e8.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            q0Var = q0.DEFAULT;
        }
        return i.a(o0Var, gVar, q0Var, pVar);
    }

    public static /* synthetic */ b2 d(o0 o0Var, kotlin.coroutines.g gVar, q0 q0Var, e8.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            q0Var = q0.DEFAULT;
        }
        return i.c(o0Var, gVar, q0Var, pVar);
    }

    @NotNull
    public static final <T> v0<T> a(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar, @NotNull q0 q0Var, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar) {
        w0 w0Var;
        kotlin.coroutines.g gVarE = j0.e(o0Var, gVar);
        if (q0Var.c()) {
            w0Var = new l2(gVarE, pVar);
        } else {
            w0Var = new w0(gVarE, true);
        }
        ((a) w0Var).Z0(q0Var, w0Var, pVar);
        return (v0<T>) w0Var;
    }

    @NotNull
    public static final b2 c(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar, @NotNull q0 q0Var, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        a w2Var;
        kotlin.coroutines.g gVarE = j0.e(o0Var, gVar);
        if (q0Var.c()) {
            w2Var = new m2(gVarE, pVar);
        } else {
            w2Var = new w2(gVarE, true);
        }
        w2Var.Z0(q0Var, w2Var, pVar);
        return w2Var;
    }

    @Nullable
    public static final <T> Object e(@NotNull kotlin.coroutines.g gVar, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) throws Throwable {
        Object objA1;
        kotlin.coroutines.g context = dVar.getContext();
        kotlin.coroutines.g gVarD = j0.d(context, gVar);
        f2.j(gVarD);
        if (gVarD == context) {
            kotlinx.coroutines.internal.e0 e0Var = new kotlinx.coroutines.internal.e0(gVarD, dVar);
            objA1 = l8.b.b(e0Var, e0Var, pVar);
        } else {
            kotlin.coroutines.e.b bVar = kotlin.coroutines.e.Key;
            if (kotlin.jvm.internal.t.e(gVarD.get(bVar), context.get(bVar))) {
                h3 h3Var = new h3(gVarD, dVar);
                kotlin.coroutines.g context2 = h3Var.getContext();
                Object objC = kotlinx.coroutines.internal.m0.c(context2, null);
                try {
                    Object objB = l8.b.b(h3Var, h3Var, pVar);
                    kotlinx.coroutines.internal.m0.a(context2, objC);
                    objA1 = objB;
                } catch (Throwable th) {
                    kotlinx.coroutines.internal.m0.a(context2, objC);
                    throw th;
                }
            } else {
                a1 a1Var = new a1(gVarD, dVar);
                l8.a.d(pVar, a1Var, a1Var, null, 4, null);
                objA1 = a1Var.a1();
            }
        }
        if (objA1 == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objA1;
    }
}
