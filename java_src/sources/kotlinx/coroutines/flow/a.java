package kotlinx.coroutines.flow;

import com.narvii.util.http.ApiService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a<T> implements g<T>, c<T> {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.a$a, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {ApiService.API_ERR_USER_NOT_IN_COMMUNITY}, m = "collect")
    static final class C0432a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ a<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0432a(a<T> aVar, kotlin.coroutines.d<? super C0432a> dVar) {
            super(dVar);
            this.this$0 = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.collect(null, this);
        }
    }

    @Nullable
    public abstract Object f(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public final Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        C0432a c0432a;
        Throwable th;
        kotlinx.coroutines.flow.internal.t tVar;
        if (dVar instanceof C0432a) {
            c0432a = (C0432a) dVar;
            int i10 = c0432a.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0432a.label = i10 - Integer.MIN_VALUE;
            } else {
                c0432a = new C0432a(this, dVar);
            }
        } else {
            c0432a = new C0432a(this, dVar);
        }
        Object obj = c0432a.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = c0432a.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            tVar = (kotlinx.coroutines.flow.internal.t) c0432a.L$0;
            try {
                w7.w.b(obj);
                tVar.releaseIntercepted();
                return w7.l0.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                tVar.releaseIntercepted();
                throw th;
            }
        }
        w7.w.b(obj);
        kotlinx.coroutines.flow.internal.t tVar2 = new kotlinx.coroutines.flow.internal.t(hVar, c0432a.getContext());
        try {
            c0432a.L$0 = tVar2;
            c0432a.label = 1;
            if (f(tVar2, c0432a) == objE) {
                return objE;
            }
            tVar = tVar2;
            tVar.releaseIntercepted();
            return w7.l0.INSTANCE;
        } catch (Throwable th3) {
            th = th3;
            tVar = tVar2;
            tVar.releaseIntercepted();
            throw th;
        }
    }
}
