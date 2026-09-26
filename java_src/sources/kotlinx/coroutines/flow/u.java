package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final /* synthetic */ class u {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements g<T> {
        final /* synthetic */ g $this_unsafeTransform$inlined;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.u$a$a, reason: collision with other inner class name */
        public static final class C0447a<T> implements h {
            final /* synthetic */ h $this_unsafeFlow;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.u$a$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {223}, m = "emit")
            public static final class C0448a extends kotlin.coroutines.jvm.internal.d {
                int label;
                /* synthetic */ Object result;

                public C0448a(kotlin.coroutines.d dVar) {
                    super(dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return C0447a.this.emit(null, this);
                }
            }

            public C0447a(h hVar) {
                this.$this_unsafeFlow = hVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.h
            @Nullable
            public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                C0448a c0448a;
                if (dVar instanceof C0448a) {
                    c0448a = (C0448a) dVar;
                    int i10 = c0448a.label;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        c0448a.label = i10 - Integer.MIN_VALUE;
                    } else {
                        c0448a = new C0448a(dVar);
                    }
                } else {
                    c0448a = new C0448a(dVar);
                }
                Object obj = c0448a.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = c0448a.label;
                if (i11 == 0) {
                    w7.w.b(obj);
                    h hVar = this.$this_unsafeFlow;
                    if (t5 != null) {
                        c0448a.label = 1;
                        if (hVar.emit(t5, c0448a) == objE) {
                            return objE;
                        }
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

        public a(g gVar) {
            this.$this_unsafeTransform$inlined = gVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h hVar, @NotNull kotlin.coroutines.d dVar) {
            Object objCollect = this.$this_unsafeTransform$inlined.collect(new C0447a(hVar), dVar);
            return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class b<T> implements g<T> {
        final /* synthetic */ e8.p $action$inlined;
        final /* synthetic */ g $this_unsafeTransform$inlined;

        public static final class a<T> implements h {
            final /* synthetic */ e8.p $action$inlined;
            final /* synthetic */ h $this_unsafeFlow;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.u$b$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {223, 224}, m = "emit")
            public static final class C0449a extends kotlin.coroutines.jvm.internal.d {
                Object L$0;
                Object L$1;
                int label;
                /* synthetic */ Object result;

                public C0449a(kotlin.coroutines.d dVar) {
                    super(dVar);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(h hVar, e8.p pVar) {
                this.$this_unsafeFlow = hVar;
                this.$action$inlined = pVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlinx.coroutines.flow.h
            @Nullable
            public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                C0449a c0449a;
                Object obj;
                h hVar;
                if (dVar instanceof C0449a) {
                    c0449a = (C0449a) dVar;
                    int i10 = c0449a.label;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        c0449a.label = i10 - Integer.MIN_VALUE;
                    } else {
                        c0449a = new C0449a(dVar);
                    }
                } else {
                    c0449a = new C0449a(dVar);
                }
                Object obj2 = c0449a.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = c0449a.label;
                if (i11 != 0) {
                    if (i11 == 1) {
                        h hVar2 = (h) c0449a.L$1;
                        obj = c0449a.L$0;
                        w7.w.b(obj2);
                        hVar = hVar2;
                    } else {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        w7.w.b(obj2);
                    }
                    return w7.l0.INSTANCE;
                }
                w7.w.b(obj2);
                h hVar3 = this.$this_unsafeFlow;
                e8.p pVar = this.$action$inlined;
                c0449a.L$0 = t5;
                c0449a.L$1 = hVar3;
                c0449a.label = 1;
                kotlin.jvm.internal.r.c(6);
                Object objInvoke = pVar.invoke(t5, c0449a);
                kotlin.jvm.internal.r.c(7);
                if (objInvoke == objE) {
                    return objE;
                }
                obj = t5;
                hVar = hVar3;
                c0449a.L$0 = null;
                c0449a.L$1 = null;
                c0449a.label = 2;
                if (hVar.emit(obj, c0449a) == objE) {
                    return objE;
                }
                return w7.l0.INSTANCE;
            }
        }

        public b(g gVar, e8.p pVar) {
            this.$this_unsafeTransform$inlined = gVar;
            this.$action$inlined = pVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h hVar, @NotNull kotlin.coroutines.d dVar) {
            Object objCollect = this.$this_unsafeTransform$inlined.collect(new a(hVar, this.$action$inlined), dVar);
            return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
        }
    }

    @NotNull
    public static final <T> g<T> a(@NotNull g<? extends T> gVar) {
        return new a(gVar);
    }

    @NotNull
    public static final <T> g<T> b(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return new b(gVar, pVar);
    }
}
