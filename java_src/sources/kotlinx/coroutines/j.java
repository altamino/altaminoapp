package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class j {
    public static /* synthetic */ Object b(kotlin.coroutines.g gVar, e8.p pVar, int i10, Object obj) throws InterruptedException {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        return i.e(gVar, pVar);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public static final <T> T a(@NotNull kotlin.coroutines.g gVar, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar) throws InterruptedException {
        k1 k1Var;
        k1 k1VarA;
        kotlin.coroutines.g gVarE;
        Thread threadCurrentThread = Thread.currentThread();
        kotlin.coroutines.e eVar = (kotlin.coroutines.e) gVar.get(kotlin.coroutines.e.Key);
        if (eVar == null) {
            k1VarA = b3.INSTANCE.b();
            gVarE = j0.e(t1.INSTANCE, gVar.plus(k1VarA));
        } else {
            k1 k1Var2 = null;
            if (eVar instanceof k1) {
                k1Var = (k1) eVar;
            } else {
                k1Var = null;
            }
            if (k1Var != null) {
                if (k1Var.O0()) {
                    k1Var2 = k1Var;
                }
                if (k1Var2 != null) {
                    k1VarA = k1Var2;
                } else {
                    k1VarA = b3.INSTANCE.a();
                }
            } else {
                k1VarA = b3.INSTANCE.a();
            }
            gVarE = j0.e(t1.INSTANCE, gVar);
        }
        g gVar2 = new g(gVarE, threadCurrentThread, k1VarA);
        gVar2.Z0(q0.DEFAULT, gVar2, pVar);
        return (T) gVar2.a1();
    }
}
