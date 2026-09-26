package kotlinx.coroutines.flow.internal;

import io.agora.rtc.Constants;
import kotlinx.coroutines.j0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public abstract class g<S, T> extends e<T> {

    @NotNull
    protected final kotlinx.coroutines.flow.g<S> flow;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.flow.h<? super T>, kotlin.coroutines.d<? super l0>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ g<S, T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g<S, T> gVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.this$0 = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.this$0, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(hVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                kotlinx.coroutines.flow.h<? super T> hVar = (kotlinx.coroutines.flow.h) this.L$0;
                g<S, T> gVar = this.this$0;
                this.label = 1;
                if (gVar.q(hVar, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.internal.e, kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return n(this, hVar, dVar);
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @Nullable
    protected Object h(@NotNull kotlinx.coroutines.channels.r<? super T> rVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return o(this, rVar, dVar);
    }

    @Nullable
    protected abstract Object q(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @NotNull kotlin.coroutines.d<? super l0> dVar);

    static /* synthetic */ <S, T> Object n(g<S, T> gVar, kotlinx.coroutines.flow.h<? super T> hVar, kotlin.coroutines.d<? super l0> dVar) {
        if (gVar.capacity == -3) {
            kotlin.coroutines.g context = dVar.getContext();
            kotlin.coroutines.g gVarD = j0.d(context, gVar.context);
            if (kotlin.jvm.internal.t.e(gVarD, context)) {
                Object objQ = gVar.q(hVar, dVar);
                return objQ == kotlin.coroutines.intrinsics.d.e() ? objQ : l0.INSTANCE;
            }
            kotlin.coroutines.e.b bVar = kotlin.coroutines.e.Key;
            if (kotlin.jvm.internal.t.e(gVarD.get(bVar), context.get(bVar))) {
                Object objP = gVar.p(hVar, gVarD, dVar);
                return objP == kotlin.coroutines.intrinsics.d.e() ? objP : l0.INSTANCE;
            }
        }
        Object objCollect = super.collect(hVar, dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
    }

    static /* synthetic */ <S, T> Object o(g<S, T> gVar, kotlinx.coroutines.channels.r<? super T> rVar, kotlin.coroutines.d<? super l0> dVar) {
        Object objQ = gVar.q(new w(rVar), dVar);
        return objQ == kotlin.coroutines.intrinsics.d.e() ? objQ : l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @NotNull
    public String toString() {
        return this.flow + " -> " + super.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(@NotNull kotlinx.coroutines.flow.g<? extends S> gVar, @NotNull kotlin.coroutines.g gVar2, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        super(gVar2, i10, aVar);
        this.flow = gVar;
    }

    private final Object p(kotlinx.coroutines.flow.h<? super T> hVar, kotlin.coroutines.g gVar, kotlin.coroutines.d<? super l0> dVar) {
        Object objC = f.c(gVar, f.d(hVar, dVar.getContext()), null, new a(this, null), dVar, 4, null);
        if (objC == kotlin.coroutines.intrinsics.d.e()) {
            return objC;
        }
        return l0.INSTANCE;
    }
}
