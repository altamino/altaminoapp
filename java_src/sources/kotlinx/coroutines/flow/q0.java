package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class q0<T> implements b0<T> {

    @NotNull
    private final e8.p<h<? super T>, kotlin.coroutines.d<? super w7.l0>, Object> action;

    @NotNull
    private final b0<T> sharedFlow;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.SubscribedSharedFlow", f = "Share.kt", l = {409}, m = "collect")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ q0<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(q0<T> q0Var, kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
            this.this$0 = q0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.collect(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.b0, kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<?> dVar) {
        a aVar;
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
        int i11 = aVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            b0<T> b0Var = this.sharedFlow;
            p0 p0Var = new p0(hVar, this.action);
            aVar.label = 1;
            if (b0Var.collect(p0Var, aVar) == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w7.w.b(obj);
        }
        throw new w7.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q0(@NotNull b0<? extends T> b0Var, @NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        this.sharedFlow = b0Var;
        this.action = pVar;
    }
}
