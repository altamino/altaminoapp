package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class j0 implements h0 {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", l = {155}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<h<? super f0>, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ l0<Integer> $subscriptionCount;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.j0$a$a, reason: collision with other inner class name */
        static final class C0441a<T> implements h {
            final /* synthetic */ h<f0> $$this$flow;
            final /* synthetic */ kotlin.jvm.internal.k0 $started;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.j0$a$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", l = {158}, m = "emit")
            static final class C0442a extends kotlin.coroutines.jvm.internal.d {
                int label;
                /* synthetic */ Object result;
                final /* synthetic */ C0441a<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C0442a(C0441a<? super T> c0441a, kotlin.coroutines.d<? super C0442a> dVar) {
                    super(dVar);
                    this.this$0 = c0441a;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return this.this$0.e(0, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            C0441a(kotlin.jvm.internal.k0 k0Var, h<? super f0> hVar) {
                this.$started = k0Var;
                this.$$this$flow = hVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Nullable
            public final Object e(int i10, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                C0442a c0442a;
                if (dVar instanceof C0442a) {
                    c0442a = (C0442a) dVar;
                    int i11 = c0442a.label;
                    if ((i11 & Integer.MIN_VALUE) != 0) {
                        c0442a.label = i11 - Integer.MIN_VALUE;
                    } else {
                        c0442a = new C0442a(this, dVar);
                    }
                } else {
                    c0442a = new C0442a(this, dVar);
                }
                Object obj = c0442a.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i12 = c0442a.label;
                if (i12 == 0) {
                    w7.w.b(obj);
                    if (i10 > 0) {
                        kotlin.jvm.internal.k0 k0Var = this.$started;
                        if (!k0Var.element) {
                            k0Var.element = true;
                            h<f0> hVar = this.$$this$flow;
                            f0 f0Var = f0.START;
                            c0442a.label = 1;
                            if (hVar.emit(f0Var, c0442a) == objE) {
                                return objE;
                            }
                        }
                    }
                    return w7.l0.INSTANCE;
                }
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
                return w7.l0.INSTANCE;
            }

            @Override // kotlinx.coroutines.flow.h
            public /* bridge */ /* synthetic */ Object emit(Object obj, kotlin.coroutines.d dVar) {
                return e(((Number) obj).intValue(), dVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l0<Integer> l0Var, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$subscriptionCount = l0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$subscriptionCount, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull h<? super f0> hVar, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((a) create(hVar, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
            } else {
                w7.w.b(obj);
                h hVar = (h) this.L$0;
                kotlin.jvm.internal.k0 k0Var = new kotlin.jvm.internal.k0();
                l0<Integer> l0Var = this.$subscriptionCount;
                C0441a c0441a = new C0441a(k0Var, hVar);
                this.label = 1;
                if (l0Var.collect(c0441a, this) == objE) {
                    return objE;
                }
            }
            throw new w7.i();
        }
    }

    @NotNull
    public String toString() {
        return "SharingStarted.Lazily";
    }

    @Override // kotlinx.coroutines.flow.h0
    @NotNull
    public g<f0> a(@NotNull l0<Integer> l0Var) {
        return i.y(new a(l0Var, null));
    }
}
