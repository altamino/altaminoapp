package coil.intercept;

import coil.request.h;
import coil.request.j;
import coil.size.i;
import java.util.List;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements b.a {

    @NotNull
    private final coil.c eventListener;
    private final int index;

    @NotNull
    private final h initialRequest;

    @NotNull
    private final List<b> interceptors;
    private final boolean isPlaceholderCached;

    @NotNull
    private final h request;

    @NotNull
    private final i size;

    @f(c = "coil.intercept.RealInterceptorChain", f = "RealInterceptorChain.kt", l = {25}, m = "proceed")
    static final class a extends d {
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
            return c.this.g(null, this);
        }
    }

    @Override // coil.intercept.b.a
    @NotNull
    public h a() {
        return this.request;
    }

    @NotNull
    public final coil.c e() {
        return this.eventListener;
    }

    public final boolean f() {
        return this.isPlaceholderCached;
    }

    @Override // coil.intercept.b.a
    @NotNull
    public i getSize() {
        return this.size;
    }

    private final c c(int i10, h hVar, i iVar) {
        return new c(this.initialRequest, this.interceptors, i10, hVar, iVar, this.eventListener, this.isPlaceholderCached);
    }

    static /* synthetic */ c d(c cVar, int i10, h hVar, i iVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = cVar.index;
        }
        if ((i11 & 2) != 0) {
            hVar = cVar.a();
        }
        if ((i11 & 4) != 0) {
            iVar = cVar.getSize();
        }
        return cVar.c(i10, hVar, iVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public Object g(@NotNull h hVar, @NotNull kotlin.coroutines.d<? super coil.request.i> dVar) {
        a aVar;
        c cVar;
        b bVar;
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
            w.b(obj);
            int i12 = this.index;
            if (i12 > 0) {
                b(hVar, this.interceptors.get(i12 - 1));
            }
            b bVar2 = this.interceptors.get(this.index);
            c cVarD = d(this, this.index + 1, hVar, null, 4, null);
            aVar.L$0 = this;
            aVar.L$1 = bVar2;
            aVar.label = 1;
            Object objA = bVar2.a(cVarD, aVar);
            if (objA == objE) {
                return objE;
            }
            cVar = this;
            obj = objA;
            bVar = bVar2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = (b) aVar.L$1;
            cVar = (c) aVar.L$0;
            w.b(obj);
        }
        coil.request.i iVar = (coil.request.i) obj;
        cVar.b(iVar.b(), bVar);
        return iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@NotNull h hVar, @NotNull List<? extends b> list, int i10, @NotNull h hVar2, @NotNull i iVar, @NotNull coil.c cVar, boolean z6) {
        this.initialRequest = hVar;
        this.interceptors = list;
        this.index = i10;
        this.request = hVar2;
        this.size = iVar;
        this.eventListener = cVar;
        this.isPlaceholderCached = z6;
    }

    private final void b(h hVar, b bVar) {
        if (hVar.l() == this.initialRequest.l()) {
            if (hVar.m() != j.INSTANCE) {
                if (hVar.M() == this.initialRequest.M()) {
                    if (hVar.z() == this.initialRequest.z()) {
                        if (hVar.K() == this.initialRequest.K()) {
                            return;
                        }
                        throw new IllegalStateException(("Interceptor '" + bVar + "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.").toString());
                    }
                    throw new IllegalStateException(("Interceptor '" + bVar + "' cannot modify the request's lifecycle.").toString());
                }
                throw new IllegalStateException(("Interceptor '" + bVar + "' cannot modify the request's target.").toString());
            }
            throw new IllegalStateException(("Interceptor '" + bVar + "' cannot set the request's data to null.").toString());
        }
        throw new IllegalStateException(("Interceptor '" + bVar + "' cannot modify the request's context.").toString());
    }
}
