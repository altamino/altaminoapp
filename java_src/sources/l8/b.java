package l8;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.v0;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.d3;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.m0;
import kotlinx.coroutines.k2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
public final class b {
    @Nullable
    public static final <T, R> Object b(@NotNull e0<? super T> e0Var, R r, @NotNull p<? super R, ? super d<? super T>, ? extends Object> pVar) {
        Object c0Var;
        Object objX0;
        try {
            c0Var = ((p) v0.e(pVar, 2)).invoke(r, e0Var);
        } catch (Throwable th) {
            c0Var = new c0(th, false, 2, null);
        }
        if (c0Var != kotlin.coroutines.intrinsics.d.e() && (objX0 = e0Var.x0(c0Var)) != k2.COMPLETING_WAITING_CHILDREN) {
            if (objX0 instanceof c0) {
                throw ((c0) objX0).cause;
            }
            return k2.h(objX0);
        }
        return kotlin.coroutines.intrinsics.d.e();
    }

    @Nullable
    public static final <T, R> Object c(@NotNull e0<? super T> e0Var, R r, @NotNull p<? super R, ? super d<? super T>, ? extends Object> pVar) throws Throwable {
        Object c0Var;
        Object objX0;
        try {
            c0Var = ((p) v0.e(pVar, 2)).invoke(r, e0Var);
        } catch (Throwable th) {
            c0Var = new c0(th, false, 2, null);
        }
        if (c0Var != kotlin.coroutines.intrinsics.d.e() && (objX0 = e0Var.x0(c0Var)) != k2.COMPLETING_WAITING_CHILDREN) {
            if (objX0 instanceof c0) {
                Throwable th2 = ((c0) objX0).cause;
                if (!(th2 instanceof d3) || ((d3) th2).coroutine != e0Var) {
                    throw th2;
                }
                if (c0Var instanceof c0) {
                    throw ((c0) c0Var).cause;
                }
            } else {
                c0Var = k2.h(objX0);
            }
            return c0Var;
        }
        return kotlin.coroutines.intrinsics.d.e();
    }

    public static final <R, T> void a(@NotNull p<? super R, ? super d<? super T>, ? extends Object> pVar, R r, @NotNull d<? super T> dVar) {
        d dVarA = h.a(dVar);
        try {
            g context = dVar.getContext();
            Object objC = m0.c(context, null);
            try {
                Object objInvoke = ((p) v0.e(pVar, 2)).invoke(r, dVarA);
                m0.a(context, objC);
                if (objInvoke != kotlin.coroutines.intrinsics.d.e()) {
                    dVarA.resumeWith(v.b(objInvoke));
                }
            } catch (Throwable th) {
                m0.a(context, objC);
                throw th;
            }
        } catch (Throwable th2) {
            v.a aVar = v.Companion;
            dVarA.resumeWith(v.b(w.a(th2)));
        }
    }
}
