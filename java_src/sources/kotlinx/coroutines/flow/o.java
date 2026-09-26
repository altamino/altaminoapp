package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class o {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", l = {216}, m = "invokeSafely$FlowKt__EmittersKt")
    static final class a<T> extends kotlin.coroutines.jvm.internal.d {
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
            return o.c(null, null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class b<T> implements g<T> {
        final /* synthetic */ e8.q $action$inlined;
        final /* synthetic */ g $this_onCompletion$inlined;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {115, 122, 129}, m = "collect")
        public static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            public a(kotlin.coroutines.d dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return b.this.collect(null, this);
            }
        }

        public b(g gVar, e8.q qVar) {
            this.$this_onCompletion$inlined = gVar;
            this.$action$inlined = qVar;
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0086 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:35:0x0087  */
        /* JADX WARN: Code duplicated, block: B:46:0x00ab A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
            a aVar;
            b<T> bVar;
            r0 r0Var;
            e8.q qVar;
            kotlinx.coroutines.flow.internal.t tVar;
            Throwable th;
            kotlinx.coroutines.flow.internal.t tVar2;
            Object objInvoke;
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
                try {
                    g gVar = this.$this_onCompletion$inlined;
                    aVar.L$0 = this;
                    aVar.L$1 = hVar;
                    aVar.label = 1;
                    if (gVar.collect(hVar, aVar) == objE) {
                        return objE;
                    }
                    bVar = this;
                    tVar = new kotlinx.coroutines.flow.internal.t(hVar, aVar.getContext());
                    e8.q qVar2 = bVar.$action$inlined;
                    aVar.L$0 = tVar;
                    aVar.L$1 = null;
                    aVar.label = 3;
                    kotlin.jvm.internal.r.c(6);
                    objInvoke = qVar2.invoke(tVar, null, aVar);
                    kotlin.jvm.internal.r.c(7);
                    if (objInvoke == objE) {
                        return objE;
                    }
                    tVar2 = tVar;
                    tVar2.releaseIntercepted();
                    return w7.l0.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    bVar = this;
                    r0Var = new r0(th);
                    qVar = bVar.$action$inlined;
                    aVar.L$0 = th;
                    aVar.L$1 = null;
                    aVar.label = 2;
                    if (o.c(r0Var, qVar, th, aVar) == objE) {
                        return objE;
                    }
                    throw th;
                }
            }
            if (i11 != 1) {
                if (i11 == 2) {
                    Throwable th3 = (Throwable) aVar.L$0;
                    w7.w.b(obj);
                    throw th3;
                }
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                tVar2 = (kotlinx.coroutines.flow.internal.t) aVar.L$0;
                try {
                    w7.w.b(obj);
                    tVar2.releaseIntercepted();
                    return w7.l0.INSTANCE;
                } catch (Throwable th4) {
                    th = th4;
                    tVar2.releaseIntercepted();
                    throw th;
                }
            }
            hVar = (h) aVar.L$1;
            bVar = (b) aVar.L$0;
            try {
                w7.w.b(obj);
                tVar = new kotlinx.coroutines.flow.internal.t(hVar, aVar.getContext());
                try {
                    e8.q qVar3 = bVar.$action$inlined;
                    aVar.L$0 = tVar;
                    aVar.L$1 = null;
                    aVar.label = 3;
                    kotlin.jvm.internal.r.c(6);
                    objInvoke = qVar3.invoke(tVar, null, aVar);
                    kotlin.jvm.internal.r.c(7);
                    if (objInvoke == objE) {
                        return objE;
                    }
                    tVar2 = tVar;
                    tVar2.releaseIntercepted();
                    return w7.l0.INSTANCE;
                } catch (Throwable th5) {
                    th = th5;
                    tVar2 = tVar;
                    tVar2.releaseIntercepted();
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                r0Var = new r0(th);
                qVar = bVar.$action$inlined;
                aVar.L$0 = th;
                aVar.L$1 = null;
                aVar.label = 2;
                if (o.c(r0Var, qVar, th, aVar) == objE) {
                    return objE;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class c<T> implements g<T> {
        final /* synthetic */ e8.p $action$inlined;
        final /* synthetic */ g $this_onStart$inlined;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {117, 121}, m = "collect")
        public static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            Object L$2;
            int label;
            /* synthetic */ Object result;

            public a(kotlin.coroutines.d dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return c.this.collect(null, this);
            }
        }

        public c(e8.p pVar, g gVar) {
            this.$action$inlined = pVar;
            this.$this_onStart$inlined = gVar;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0082 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
            a aVar;
            Throwable th;
            kotlinx.coroutines.flow.internal.t tVar;
            c<T> cVar;
            h<? super T> hVar2;
            g gVar;
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
                kotlinx.coroutines.flow.internal.t tVar2 = new kotlinx.coroutines.flow.internal.t(hVar, aVar.getContext());
                try {
                    e8.p pVar = this.$action$inlined;
                    aVar.L$0 = this;
                    aVar.L$1 = hVar;
                    aVar.L$2 = tVar2;
                    aVar.label = 1;
                    kotlin.jvm.internal.r.c(6);
                    Object objInvoke = pVar.invoke(tVar2, aVar);
                    kotlin.jvm.internal.r.c(7);
                    if (objInvoke == objE) {
                        return objE;
                    }
                    cVar = this;
                    hVar2 = hVar;
                    tVar = tVar2;
                    tVar.releaseIntercepted();
                    gVar = cVar.$this_onStart$inlined;
                    aVar.L$0 = null;
                    aVar.L$1 = null;
                    aVar.L$2 = null;
                    aVar.label = 2;
                    if (gVar.collect(hVar2, aVar) == objE) {
                        return objE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    tVar = tVar2;
                    tVar.releaseIntercepted();
                    throw th;
                }
            } else if (i11 == 1) {
                tVar = (kotlinx.coroutines.flow.internal.t) aVar.L$2;
                hVar2 = (h) aVar.L$1;
                cVar = (c) aVar.L$0;
                try {
                    w7.w.b(obj);
                    tVar.releaseIntercepted();
                    gVar = cVar.$this_onStart$inlined;
                    aVar.L$0 = null;
                    aVar.L$1 = null;
                    aVar.L$2 = null;
                    aVar.label = 2;
                    if (gVar.collect(hVar2, aVar) == objE) {
                        return objE;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    tVar.releaseIntercepted();
                    throw th;
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
            }
            return w7.l0.INSTANCE;
        }
    }

    public static final void b(@NotNull h<?> hVar) throws Throwable {
        if (hVar instanceof r0) {
            throw ((r0) hVar).e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object c(h<? super T> hVar, e8.q<? super h<? super T>, ? super Throwable, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar, Throwable th, kotlin.coroutines.d<? super w7.l0> dVar) {
        a aVar;
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
        try {
            if (i11 == 0) {
                w7.w.b(obj);
                aVar.L$0 = th;
                aVar.label = 1;
                if (qVar.invoke(hVar, th, aVar) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th = (Throwable) aVar.L$0;
                w7.w.b(obj);
            }
            return w7.l0.INSTANCE;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                w7.f.a(th2, th);
            }
            throw th2;
        }
    }

    @NotNull
    public static final <T> g<T> d(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super T>, ? super Throwable, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar) {
        return new b(gVar, qVar);
    }

    @NotNull
    public static final <T> g<T> e(@NotNull g<? extends T> gVar, @NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return new c(pVar, gVar);
    }
}
