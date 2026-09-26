package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class b<T> extends e<T> {

    @NotNull
    private final e8.p<kotlinx.coroutines.channels.r<? super T>, kotlin.coroutines.d<? super w7.l0>, Object> block;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {334}, m = "collectTo")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ b<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(b<T> bVar, kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
            this.this$0 = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.h(null, this);
        }
    }

    public /* synthetic */ b(e8.p pVar, kotlin.coroutines.g gVar, int i10, kotlinx.coroutines.channels.a aVar, int i11, kotlin.jvm.internal.k kVar) {
        this(pVar, (i11 & 2) != 0 ? kotlin.coroutines.h.INSTANCE : gVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? kotlinx.coroutines.channels.a.SUSPEND : aVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.e, kotlinx.coroutines.flow.internal.e
    @Nullable
    protected Object h(@NotNull kotlinx.coroutines.channels.r<? super T> rVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
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
            aVar.L$0 = rVar;
            aVar.label = 1;
            if (super.h(rVar, aVar) == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rVar = (kotlinx.coroutines.channels.r) aVar.L$0;
            w7.w.b(obj);
        }
        if (rVar.t()) {
            return w7.l0.INSTANCE;
        }
        throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    @Override // kotlinx.coroutines.flow.e, kotlinx.coroutines.flow.internal.e
    @NotNull
    protected kotlinx.coroutines.flow.internal.e<T> i(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return new b(this.block, gVar, i10, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull e8.p<? super kotlinx.coroutines.channels.r<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar, @NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        super(pVar, gVar, i10, aVar);
        this.block = pVar;
    }
}
