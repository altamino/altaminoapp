package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class f3 {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {104}, m = "withTimeoutOrNull")
    static final class a<T> extends kotlin.coroutines.jvm.internal.d {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f3.e(0L, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Instruction removed from duplicated block: B:9:0x0018, please report this as an issue */
    @NotNull
    public static final d3 a(long j6, @NotNull x0 x0Var, @NotNull b2 b2Var) {
        String strP;
        z0 z0Var = x0Var instanceof z0 ? (z0) x0Var : null;
        if (z0Var != null) {
            k8.b.a aVar = k8.b.Companion;
            strP = z0Var.p(k8.d.t(j6, k8.e.MILLISECONDS));
            if (strP == null) {
                strP = "Timed out waiting for " + j6 + " ms";
            }
        } else {
            strP = "Timed out waiting for " + j6 + " ms";
        }
        return new d3(strP, b2Var);
    }

    private static final <U, T extends U> Object b(e3<U, ? super T> e3Var, e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar) {
        f2.i(e3Var, y0.b(e3Var.uCont.getContext()).invokeOnTimeout(e3Var.time, e3Var, e3Var.getContext()));
        return l8.b.c(e3Var, e3Var, pVar);
    }

    @Nullable
    public static final <T> Object c(long j6, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        if (j6 <= 0) {
            throw new d3("Timed out immediately");
        }
        Object objB = b(new e3(j6, dVar), pVar);
        if (objB == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objB;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.e3] */
    @Nullable
    public static final <T> Object e(long j6, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        a aVar;
        kotlin.jvm.internal.p0 p0Var;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            if (j6 <= 0) {
                return null;
            }
            kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
            try {
                aVar.L$0 = pVar;
                aVar.L$1 = p0Var2;
                aVar.J$0 = j6;
                aVar.label = 1;
                ?? r5 = (T) new e3(j6, aVar);
                p0Var2.element = r5;
                Object objB = b(r5, pVar);
                if (objB == kotlin.coroutines.intrinsics.d.e()) {
                    kotlin.coroutines.jvm.internal.h.c(aVar);
                }
                return objB == objE ? objE : objB;
            } catch (d3 e) {
                e = e;
                p0Var = p0Var2;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p0Var = (kotlin.jvm.internal.p0) aVar.L$1;
            try {
                w7.w.b(obj);
                return obj;
            } catch (d3 e2) {
                e = e2;
            }
        }
        if (e.coroutine == p0Var.element) {
            return null;
        }
        throw e;
    }

    @Nullable
    public static final <T> Object d(long j6, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return c(y0.c(j6), pVar, dVar);
    }

    @Nullable
    public static final <T> Object f(long j6, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return e(y0.c(j6), pVar, dVar);
    }
}
