package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class p0<T> implements h<T> {

    @NotNull
    private final e8.p<h<? super T>, kotlin.coroutines.d<? super w7.l0>, Object> action;

    @NotNull
    private final h<T> collector;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {419, TypedValues.CycleType.TYPE_WAVE_PERIOD}, m = "onSubscription")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ p0<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(p0<T> p0Var, kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
            this.this$0 = p0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.e(this);
        }
    }

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return this.collector.emit(t5, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.t] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    @Nullable
    public final Object e(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        a aVar;
        kotlinx.coroutines.flow.internal.t tVar;
        p0<T> p0Var;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(this, dVar);
            }
        } else {
            aVar = new a(this, dVar);
        }
        Object obj = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        ?? r5 = aVar.label;
        try {
            if (r5 != 0) {
                if (r5 == 1) {
                    tVar = (kotlinx.coroutines.flow.internal.t) aVar.L$1;
                    p0Var = (p0) aVar.L$0;
                    w7.w.b(obj);
                } else {
                    if (r5 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w7.w.b(obj);
                }
                return w7.l0.INSTANCE;
            }
            w7.w.b(obj);
            tVar = new kotlinx.coroutines.flow.internal.t(this.collector, aVar.getContext());
            e8.p<h<? super T>, kotlin.coroutines.d<? super w7.l0>, Object> pVar = this.action;
            aVar.L$0 = this;
            aVar.L$1 = tVar;
            aVar.label = 1;
            if (pVar.invoke(tVar, aVar) == objE) {
                return objE;
            }
            p0Var = this;
            tVar.releaseIntercepted();
            h<T> hVar = p0Var.collector;
            r5 = hVar instanceof p0;
            if (r5 == 0) {
                return w7.l0.INSTANCE;
            }
            aVar.L$0 = null;
            aVar.L$1 = null;
            aVar.label = 2;
            if (((p0) hVar).e(aVar) == objE) {
                return objE;
            }
            return w7.l0.INSTANCE;
        } catch (Throwable th) {
            r5.releaseIntercepted();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p0(@NotNull h<? super T> hVar, @NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        this.collector = hVar;
        this.action = pVar;
    }
}
