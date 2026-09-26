package kotlinx.coroutines.flow.internal;

import kotlin.jvm.internal.p0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class i<T, R> extends g<T, R> {

    @NotNull
    private final e8.q<kotlinx.coroutines.flow.h<? super R>, T, kotlin.coroutines.d<? super l0>, Object> transform;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {27}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.h<R> $collector;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ i<T, R> this$0;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.i$a$a, reason: collision with other inner class name */
        static final class C0435a<T> implements kotlinx.coroutines.flow.h {
            final /* synthetic */ o0 $$this$coroutineScope;
            final /* synthetic */ kotlinx.coroutines.flow.h<R> $collector;
            final /* synthetic */ p0<b2> $previousFlow;
            final /* synthetic */ i<T, R> this$0;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.i$a$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {34}, m = "invokeSuspend")
            static final class C0436a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
                final /* synthetic */ kotlinx.coroutines.flow.h<R> $collector;
                final /* synthetic */ T $value;
                int label;
                final /* synthetic */ i<T, R> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C0436a(i<T, R> iVar, kotlinx.coroutines.flow.h<? super R> hVar, T t5, kotlin.coroutines.d<? super C0436a> dVar) {
                    super(2, dVar);
                    this.this$0 = iVar;
                    this.$collector = hVar;
                    this.$value = t5;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                    return new C0436a(this.this$0, this.$collector, this.$value, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                    return ((C0436a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        e8.q qVar = ((i) this.this$0).transform;
                        kotlinx.coroutines.flow.h<R> hVar = this.$collector;
                        T t5 = this.$value;
                        this.label = 1;
                        if (qVar.invoke(hVar, t5, this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.i$a$a$b */
            @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", l = {30}, m = "emit")
            static final class b extends kotlin.coroutines.jvm.internal.d {
                Object L$0;
                Object L$1;
                Object L$2;
                int label;
                /* synthetic */ Object result;
                final /* synthetic */ C0435a<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                b(C0435a<? super T> c0435a, kotlin.coroutines.d<? super b> dVar) {
                    super(dVar);
                    this.this$0 = c0435a;
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
            C0435a(p0<b2> p0Var, o0 o0Var, i<T, R> iVar, kotlinx.coroutines.flow.h<? super R> hVar) {
                this.$previousFlow = p0Var;
                this.$$this$coroutineScope = o0Var;
                this.this$0 = iVar;
                this.$collector = hVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.h
            @Nullable
            public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
                b bVar;
                C0435a<T> c0435a;
                if (dVar instanceof b) {
                    bVar = (b) dVar;
                    int i10 = bVar.label;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        bVar.label = i10 - Integer.MIN_VALUE;
                    } else {
                        bVar = new b(this, dVar);
                    }
                } else {
                    bVar = new b(this, dVar);
                }
                Object obj = bVar.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = bVar.label;
                if (i11 == 0) {
                    w7.w.b(obj);
                    b2 b2Var = this.$previousFlow.element;
                    if (b2Var != null) {
                        b2Var.b(new j());
                        bVar.L$0 = this;
                        bVar.L$1 = t5;
                        bVar.L$2 = b2Var;
                        bVar.label = 1;
                        if (b2Var.t0(bVar) == objE) {
                            return objE;
                        }
                    }
                    c0435a = this;
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    t5 = (T) bVar.L$1;
                    c0435a = (C0435a) bVar.L$0;
                    w7.w.b(obj);
                }
                c0435a.$previousFlow.element = (T) kotlinx.coroutines.k.d(c0435a.$$this$coroutineScope, null, q0.UNDISPATCHED, new C0436a(c0435a.this$0, c0435a.$collector, t5, null), 1, null);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(i<T, R> iVar, kotlinx.coroutines.flow.h<? super R> hVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.this$0 = iVar;
            this.$collector = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.this$0, this.$collector, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.internal.i$a for r7v1 'this'  kotlin.coroutines.d
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r7.label
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                w7.w.b(r8)
                goto L37
            Lf:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L17:
                w7.w.b(r8)
                java.lang.Object r8 = r7.L$0
                kotlinx.coroutines.o0 r8 = (kotlinx.coroutines.o0) r8
                kotlin.jvm.internal.p0 r1 = new kotlin.jvm.internal.p0
                r1.<init>()
                kotlinx.coroutines.flow.internal.i<T, R> r3 = r7.this$0
                kotlinx.coroutines.flow.g<S> r4 = r3.flow
                kotlinx.coroutines.flow.internal.i$a$a r5 = new kotlinx.coroutines.flow.internal.i$a$a
                kotlinx.coroutines.flow.h<R> r6 = r7.$collector
                r5.<init>(r1, r8, r3, r6)
                r7.label = r2
                java.lang.Object r8 = r4.collect(r5, r7)
                if (r8 != r0) goto L37
                return r0
            L37:
                w7.l0 r8 = w7.l0.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.i.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ i(e8.q qVar, kotlinx.coroutines.flow.g gVar, kotlin.coroutines.g gVar2, int i10, kotlinx.coroutines.channels.a aVar, int i11, kotlin.jvm.internal.k kVar) {
        this(qVar, gVar, (i11 & 4) != 0 ? kotlin.coroutines.h.INSTANCE : gVar2, (i11 & 8) != 0 ? -2 : i10, (i11 & 16) != 0 ? kotlinx.coroutines.channels.a.SUSPEND : aVar);
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @NotNull
    protected e<R> i(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return new i(this.transform, this.flow, gVar, i10, aVar);
    }

    @Override // kotlinx.coroutines.flow.internal.g
    @Nullable
    protected Object q(@NotNull kotlinx.coroutines.flow.h<? super R> hVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objF = kotlinx.coroutines.p0.f(new a(this, hVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull e8.q<? super kotlinx.coroutines.flow.h<? super R>, ? super T, ? super kotlin.coroutines.d<? super l0>, ? extends Object> qVar, @NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull kotlin.coroutines.g gVar2, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        super(gVar, gVar2, i10, aVar);
        this.transform = qVar;
    }
}
