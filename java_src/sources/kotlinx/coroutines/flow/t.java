package kotlinx.coroutines.flow;

import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final /* synthetic */ class t {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {214, 218, 219, 225}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ T $initialValue;
        final /* synthetic */ w<T> $shared;
        final /* synthetic */ h0 $started;
        final /* synthetic */ g<T> $upstream;
        int label;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.t$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend")
        static final class C0445a extends kotlin.coroutines.jvm.internal.l implements e8.p<Integer, kotlin.coroutines.d<? super Boolean>, Object> {
            /* synthetic */ int I$0;
            int label;

            C0445a(kotlin.coroutines.d<? super C0445a> dVar) {
                super(2, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                C0445a c0445a = new C0445a(dVar);
                c0445a.I$0 = ((Number) obj).intValue();
                return c0445a;
            }

            @Nullable
            public final Object invoke(int i10, @Nullable kotlin.coroutines.d<? super Boolean> dVar) {
                return ((C0445a) create(Integer.valueOf(i10), dVar)).invokeSuspend(w7.l0.INSTANCE);
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ Object invoke(Integer num, kotlin.coroutines.d<? super Boolean> dVar) {
                return invoke(num.intValue(), dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                boolean z6;
                kotlin.coroutines.intrinsics.d.e();
                if (this.label == 0) {
                    w7.w.b(obj);
                    if (this.I$0 > 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    return kotlin.coroutines.jvm.internal.b.a(z6);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(h0 h0Var, g<? extends T> gVar, w<T> wVar, T t5, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$started = h0Var;
            this.$upstream = gVar;
            this.$shared = wVar;
            this.$initialValue = t5;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new a(this.$started, this.$upstream, this.$shared, this.$initialValue, dVar);
        }

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {227}, m = "invokeSuspend")
        static final class b extends kotlin.coroutines.jvm.internal.l implements e8.p<f0, kotlin.coroutines.d<? super w7.l0>, Object> {
            final /* synthetic */ T $initialValue;
            final /* synthetic */ w<T> $shared;
            final /* synthetic */ g<T> $upstream;
            /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.t$a$b$a, reason: collision with other inner class name */
            public /* synthetic */ class C0446a {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[f0.values().length];
                    try {
                        iArr[f0.START.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[f0.STOP.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[f0.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(g<? extends T> gVar, w<T> wVar, T t5, kotlin.coroutines.d<? super b> dVar) {
                super(2, dVar);
                this.$upstream = gVar;
                this.$shared = wVar;
                this.$initialValue = t5;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                b bVar = new b(this.$upstream, this.$shared, this.$initialValue, dVar);
                bVar.L$0 = obj;
                return bVar;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull f0 f0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
                return ((b) create(f0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
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
                    int i11 = C0446a.$EnumSwitchMapping$0[((f0) this.L$0).ordinal()];
                    if (i11 != 1) {
                        if (i11 == 3) {
                            T t5 = this.$initialValue;
                            if (t5 == d0.NO_VALUE) {
                                this.$shared.b();
                            } else {
                                this.$shared.c(t5);
                            }
                        }
                    } else {
                        g<T> gVar = this.$upstream;
                        g gVar2 = this.$shared;
                        this.label = 1;
                        if (gVar.collect(gVar2, this) == objE) {
                            return objE;
                        }
                    }
                }
                return w7.l0.INSTANCE;
            }
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0068 A[RETURN] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            g<T> gVar;
            g gVar2;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3 && i10 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w7.w.b(obj);
                        gVar = this.$upstream;
                        gVar2 = this.$shared;
                        this.label = 3;
                        if (gVar.collect(gVar2, this) == objE) {
                            return objE;
                        }
                    }
                }
                w7.w.b(obj);
            } else {
                w7.w.b(obj);
                h0 h0Var = this.$started;
                h0.a aVar = h0.Companion;
                if (h0Var == aVar.c()) {
                    g<T> gVar3 = this.$upstream;
                    g gVar4 = this.$shared;
                    this.label = 1;
                    if (gVar3.collect(gVar4, this) == objE) {
                        return objE;
                    }
                } else if (this.$started == aVar.d()) {
                    l0<Integer> l0VarD = this.$shared.d();
                    C0445a c0445a = new C0445a(null);
                    this.label = 2;
                    if (i.u(l0VarD, c0445a, this) == objE) {
                        return objE;
                    }
                    gVar = this.$upstream;
                    gVar2 = this.$shared;
                    this.label = 3;
                    if (gVar.collect(gVar2, this) == objE) {
                        return objE;
                    }
                } else {
                    g gVarO = i.o(this.$started.a(this.$shared.d()));
                    b bVar = new b(this.$upstream, this.$shared, this.$initialValue, null);
                    this.label = 4;
                    if (i.l(gVarO, bVar, this) == objE) {
                        return objE;
                    }
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    @NotNull
    public static final <T> l0<T> g(@NotNull g<? extends T> gVar, @NotNull kotlinx.coroutines.o0 o0Var, @NotNull h0 h0Var, T t5) {
        g0 g0VarC = c(gVar, 1);
        x xVarA = n0.a(t5);
        return new z(xVarA, d(o0Var, g0VarC.context, g0VarC.upstream, xVarA, h0Var, t5));
    }

    @NotNull
    public static final <T> b0<T> a(@NotNull w<T> wVar) {
        return new y(wVar, null);
    }

    @NotNull
    public static final <T> l0<T> b(@NotNull x<T> xVar) {
        return new z(xVar, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    private static final <T> g0<T> c(g<? extends T> gVar, int i10) {
        kotlinx.coroutines.flow.internal.e eVar;
        g<T> gVarJ;
        int iE = j8.o.e(i10, kotlinx.coroutines.channels.d.Factory.a()) - i10;
        if (!(gVar instanceof kotlinx.coroutines.flow.internal.e) || (gVarJ = (eVar = (kotlinx.coroutines.flow.internal.e) gVar).j()) == null) {
            return new g0<>(gVar, iE, kotlinx.coroutines.channels.a.SUSPEND, kotlin.coroutines.h.INSTANCE);
        }
        int i11 = eVar.capacity;
        if (i11 != -3 && i11 != -2 && i11 != 0) {
            iE = i11;
        } else if (eVar.onBufferOverflow == kotlinx.coroutines.channels.a.SUSPEND) {
            if (i11 == 0) {
                iE = 0;
            }
        } else if (i10 == 0) {
            iE = 1;
        } else {
            iE = 0;
        }
        return new g0<>(gVarJ, iE, eVar.onBufferOverflow, eVar.context);
    }

    private static final <T> b2 d(kotlinx.coroutines.o0 o0Var, kotlin.coroutines.g gVar, g<? extends T> gVar2, w<T> wVar, h0 h0Var, T t5) {
        return kotlinx.coroutines.i.c(o0Var, gVar, kotlin.jvm.internal.t.e(h0Var, h0.Companion.c()) ? kotlinx.coroutines.q0.DEFAULT : kotlinx.coroutines.q0.UNDISPATCHED, new a(h0Var, gVar2, wVar, t5, null));
    }

    @NotNull
    public static final <T> b0<T> e(@NotNull b0<? extends T> b0Var, @NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return new q0(b0Var, pVar);
    }

    @NotNull
    public static final <T> b0<T> f(@NotNull g<? extends T> gVar, @NotNull kotlinx.coroutines.o0 o0Var, @NotNull h0 h0Var, int i10) {
        g0 g0VarC = c(gVar, i10);
        w wVarA = d0.a(i10, g0VarC.extraBufferCapacity, g0VarC.onBufferOverflow);
        return new y(wVarA, d(o0Var, g0VarC.context, g0VarC.upstream, wVarA, h0Var, d0.NO_VALUE));
    }
}
