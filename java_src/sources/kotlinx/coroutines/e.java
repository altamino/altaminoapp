package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class e<T> {

    @NotNull
    private static final AtomicIntegerFieldUpdater notCompletedCount$FU = AtomicIntegerFieldUpdater.newUpdater(e.class, "notCompletedCount");

    @NotNull
    private final v0<T>[] deferreds;
    private volatile int notCompletedCount;

    private final class a extends i2 {

        @NotNull
        private static final AtomicReferenceFieldUpdater _disposer$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer");

        @Nullable
        private volatile Object _disposer;

        @NotNull
        private final o<List<? extends T>> continuation;
        public g1 handle;

        public final void A(@NotNull g1 g1Var) {
            this.handle = g1Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(o<? super List<? extends T>> oVar) {
            this.continuation = oVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
            r(th);
            return w7.l0.INSTANCE;
        }

        @Override // kotlinx.coroutines.e0
        public void r(@Nullable Throwable th) {
            if (th != null) {
                Object objM = this.continuation.M(th);
                if (objM != null) {
                    this.continuation.K(objM);
                    e<T>.b bVarW = w();
                    if (bVarW != null) {
                        bVarW.e();
                        return;
                    }
                    return;
                }
                return;
            }
            if (e.notCompletedCount$FU.decrementAndGet(e.this) == 0) {
                o<List<? extends T>> oVar = this.continuation;
                v0[] v0VarArr = ((e) e.this).deferreds;
                ArrayList arrayList = new ArrayList(v0VarArr.length);
                for (v0 v0Var : v0VarArr) {
                    arrayList.add(v0Var.h());
                }
                oVar.resumeWith(w7.v.b(arrayList));
            }
        }

        @Nullable
        public final e<T>.b w() {
            return (b) _disposer$FU.get(this);
        }

        @NotNull
        public final g1 y() {
            g1 g1Var = this.handle;
            if (g1Var != null) {
                return g1Var;
            }
            kotlin.jvm.internal.t.B("handle");
            return null;
        }

        public final void z(@Nullable e<T>.b bVar) {
            _disposer$FU.set(this, bVar);
        }
    }

    private final class b extends m {

        @NotNull
        private final e<T>.a[] nodes;

        public b(e<T>.a[] aVarArr) {
            this.nodes = aVarArr;
        }

        public final void e() {
            for (e<T>.a aVar : this.nodes) {
                aVar.y().t();
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
            d(th);
            return w7.l0.INSTANCE;
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.nodes + kotlinx.serialization.json.internal.b.END_LIST;
        }

        @Override // kotlinx.coroutines.n
        public void d(@Nullable Throwable th) {
            e();
        }
    }

    @Nullable
    public final Object c(@NotNull kotlin.coroutines.d<? super List<? extends T>> dVar) throws Throwable {
        p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        int length = this.deferreds.length;
        a[] aVarArr = new a[length];
        for (int i10 = 0; i10 < length; i10++) {
            v0 v0Var = this.deferreds[i10];
            v0Var.start();
            a aVar = new a(pVar);
            aVar.A(v0Var.U(aVar));
            w7.l0 l0Var = w7.l0.INSTANCE;
            aVarArr[i10] = aVar;
        }
        e<T>.b bVar = new b(aVarArr);
        for (int i11 = 0; i11 < length; i11++) {
            aVarArr[i11].z(bVar);
        }
        if (pVar.m()) {
            bVar.e();
        } else {
            pVar.S(bVar);
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull v0<? extends T>[] v0VarArr) {
        this.deferreds = v0VarArr;
        this.notCompletedCount = v0VarArr.length;
    }
}
