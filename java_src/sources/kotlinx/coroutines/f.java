package kotlinx.coroutines;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class f {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", l = {66}, m = "joinAll")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
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
            return f.c(null, this);
        }
    }

    @Nullable
    public static final <T> Object b(@NotNull v0<? extends T>[] v0VarArr, @NotNull kotlin.coroutines.d<? super List<? extends T>> dVar) {
        return v0VarArr.length == 0 ? kotlin.collections.v.m() : new e(v0VarArr).c(dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object c(@NotNull Collection<? extends b2> collection, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        a aVar;
        Iterator it;
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
            it = collection.iterator();
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) aVar.L$0;
            w7.w.b(obj);
        }
        while (it.hasNext()) {
            b2 b2Var = (b2) it.next();
            aVar.L$0 = it;
            aVar.label = 1;
            if (b2Var.t0(aVar) == objE) {
                return objE;
            }
        }
        return w7.l0.INSTANCE;
    }

    @Nullable
    public static final <T> Object a(@NotNull Collection<? extends v0<? extends T>> collection, @NotNull kotlin.coroutines.d<? super List<? extends T>> dVar) {
        if (collection.isEmpty()) {
            return kotlin.collections.v.m();
        }
        return new e((v0[]) collection.toArray(new v0[0])).c(dVar);
    }
}
