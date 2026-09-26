package kotlinx.coroutines.flow;

import kotlinx.coroutines.f2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class d<T> implements c<T> {

    @NotNull
    private final g<T> flow;

    static final class a<T> implements h {
        final /* synthetic */ h<T> $collector;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.d$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.CancellableFlowImpl$collect$2", f = "Context.kt", l = {275}, m = "emit")
        static final class C0433a extends kotlin.coroutines.jvm.internal.d {
            int label;
            /* synthetic */ Object result;
            final /* synthetic */ a<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0433a(a<? super T> aVar, kotlin.coroutines.d<? super C0433a> dVar) {
                super(dVar);
                this.this$0 = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return this.this$0.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        a(h<? super T> hVar) {
            this.$collector = hVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            C0433a c0433a;
            if (dVar instanceof C0433a) {
                c0433a = (C0433a) dVar;
                int i10 = c0433a.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    c0433a.label = i10 - Integer.MIN_VALUE;
                } else {
                    c0433a = new C0433a(this, dVar);
                }
            } else {
                c0433a = new C0433a(this, dVar);
            }
            Object obj = c0433a.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = c0433a.label;
            if (i11 == 0) {
                w7.w.b(obj);
                f2.j(c0433a.getContext());
                h<T> hVar = this.$collector;
                c0433a.label = 1;
                if (hVar.emit(t5, c0433a) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
            }
            return w7.l0.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objCollect = this.flow.collect(new a(hVar), dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull g<? extends T> gVar) {
        this.flow = gVar;
    }
}
