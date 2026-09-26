package kotlinx.coroutines.flow;

import androidx.renderscript.ScriptIntrinsicBLAS;
import io.agora.rtc.Constants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class q {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements g<T> {
        final /* synthetic */ e8.p $predicate$inlined;
        final /* synthetic */ g $this_dropWhile$inlined;

        public a(g gVar, e8.p pVar) {
            this.$this_dropWhile$inlined = gVar;
            this.$predicate$inlined = pVar;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            Object objCollect = this.$this_dropWhile$inlined.collect(new b(new kotlin.jvm.internal.k0(), hVar, this.$predicate$inlined), dVar);
            return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
        }
    }

    static final class b<T> implements h {
        final /* synthetic */ kotlin.jvm.internal.k0 $matched;
        final /* synthetic */ e8.p<T, kotlin.coroutines.d<? super Boolean>, Object> $predicate;
        final /* synthetic */ h<T> $this_unsafeFlow;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {37, 38, 40}, m = "emit")
        static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;
            final /* synthetic */ b<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(b<? super T> bVar, kotlin.coroutines.d<? super a> dVar) {
                super(dVar);
                this.this$0 = bVar;
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
        b(kotlin.jvm.internal.k0 k0Var, h<? super T> hVar, e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar) {
            this.$matched = k0Var;
            this.$this_unsafeFlow = hVar;
            this.$predicate = pVar;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x0074  */
        /* JADX WARN: Code duplicated, block: B:33:0x0087 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:36:0x008b  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            a aVar;
            b<T> bVar;
            h<T> hVar;
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
            Object objInvoke = aVar.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = aVar.label;
            if (i11 == 0) {
                w7.w.b(objInvoke);
                if (this.$matched.element) {
                    h<T> hVar2 = this.$this_unsafeFlow;
                    aVar.label = 1;
                    if (hVar2.emit(t5, aVar) == objE) {
                        return objE;
                    }
                    return w7.l0.INSTANCE;
                }
                e8.p<T, kotlin.coroutines.d<? super Boolean>, Object> pVar = this.$predicate;
                aVar.L$0 = this;
                aVar.L$1 = t5;
                aVar.label = 2;
                objInvoke = pVar.invoke(t5, aVar);
                if (objInvoke == objE) {
                    return objE;
                }
                bVar = this;
                if (!((Boolean) objInvoke).booleanValue()) {
                    return w7.l0.INSTANCE;
                }
                bVar.$matched.element = true;
                hVar = bVar.$this_unsafeFlow;
                aVar.L$0 = null;
                aVar.L$1 = null;
                aVar.label = 3;
                if (hVar.emit(t5, aVar) == objE) {
                    return objE;
                }
            } else {
                if (i11 == 1) {
                    w7.w.b(objInvoke);
                    return w7.l0.INSTANCE;
                }
                if (i11 == 2) {
                    t5 = (T) aVar.L$1;
                    bVar = (b) aVar.L$0;
                    w7.w.b(objInvoke);
                    if (!((Boolean) objInvoke).booleanValue()) {
                        return w7.l0.INSTANCE;
                    }
                    bVar.$matched.element = true;
                    hVar = bVar.$this_unsafeFlow;
                    aVar.L$0 = null;
                    aVar.L$1 = null;
                    aVar.label = 3;
                    if (hVar.emit(t5, aVar) == objE) {
                        return objE;
                    }
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w7.w.b(objInvoke);
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", l = {73}, m = "emitAbort$FlowKt__LimitKt")
    static final class c<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return q.c(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class d<T> implements g<T> {
        final /* synthetic */ int $count$inlined;
        final /* synthetic */ g $this_take$inlined;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1", f = "Limit.kt", l = {116}, m = "collect")
        public static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
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
                return d.this.collect(null, this);
            }
        }

        public d(g gVar, int i10) {
            this.$this_take$inlined = gVar;
            this.$count$inlined = i10;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, kotlinx.coroutines.flow.h, kotlinx.coroutines.flow.h<? super T>] */
        /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.flow.h] */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r7v9 */
        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
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
                    kotlin.jvm.internal.n0 n0Var = new kotlin.jvm.internal.n0();
                    g gVar = this.$this_take$inlined;
                    e eVar = new e(n0Var, this.$count$inlined, hVar);
                    aVar.L$0 = hVar;
                    aVar.label = 1;
                    Object objCollect = gVar.collect(eVar, aVar);
                    hVar = objCollect;
                    if (objCollect == objE) {
                        return objE;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    boolean z6 = (h<? super T>) ((h) aVar.L$0);
                    w7.w.b(obj);
                    hVar = z6;
                }
            } catch (kotlinx.coroutines.flow.internal.a e) {
                kotlinx.coroutines.flow.internal.o.a(e, hVar);
            }
            return w7.l0.INSTANCE;
        }
    }

    static final class e<T> implements h {
        final /* synthetic */ kotlin.jvm.internal.n0 $consumed;
        final /* synthetic */ int $count;
        final /* synthetic */ h<T> $this_unsafeFlow;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1", f = "Limit.kt", l = {61, 63}, m = "emit")
        static final class a extends kotlin.coroutines.jvm.internal.d {
            int label;
            /* synthetic */ Object result;
            final /* synthetic */ e<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(e<? super T> eVar, kotlin.coroutines.d<? super a> dVar) {
                super(dVar);
                this.this$0 = eVar;
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
        e(kotlin.jvm.internal.n0 n0Var, int i10, h<? super T> hVar) {
            this.$consumed = n0Var;
            this.$count = i10;
            this.$this_unsafeFlow = hVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
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
            if (i11 != 0) {
                if (i11 == 1) {
                    w7.w.b(obj);
                    return w7.l0.INSTANCE;
                }
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
                return w7.l0.INSTANCE;
            }
            w7.w.b(obj);
            kotlin.jvm.internal.n0 n0Var = this.$consumed;
            int i12 = n0Var.element + 1;
            n0Var.element = i12;
            if (i12 < this.$count) {
                h<T> hVar = this.$this_unsafeFlow;
                aVar.label = 1;
                if (hVar.emit(t5, aVar) == objE) {
                    return objE;
                }
                return w7.l0.INSTANCE;
            }
            h<T> hVar2 = this.$this_unsafeFlow;
            aVar.label = 2;
            if (q.c(hVar2, t5, aVar) == objE) {
                return objE;
            }
            return w7.l0.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1", f = "Limit.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT}, m = "invokeSuspend")
    static final class f<R> extends kotlin.coroutines.jvm.internal.l implements e8.p<h<? super R>, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ g<T> $this_transformWhile;
        final /* synthetic */ e8.q<h<? super R>, T, kotlin.coroutines.d<? super Boolean>, Object> $transform;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Add missing generic type declarations: [T] */
        public static final class a<T> implements h<T> {
            final /* synthetic */ h $$this$flow$inlined;
            final /* synthetic */ e8.q $transform$inlined;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.q$f$a$a, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1", f = "Limit.kt", l = {ScriptIntrinsicBLAS.RIGHT}, m = "emit")
            public static final class C0444a extends kotlin.coroutines.jvm.internal.d {
                Object L$0;
                int label;
                /* synthetic */ Object result;

                public C0444a(kotlin.coroutines.d dVar) {
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

            public a(e8.q qVar, h hVar) {
                this.$transform$inlined = qVar;
                this.$$this$flow$inlined = hVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.h
            @Nullable
            public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                C0444a c0444a;
                a<T> aVar;
                if (dVar instanceof C0444a) {
                    c0444a = (C0444a) dVar;
                    int i10 = c0444a.label;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        c0444a.label = i10 - Integer.MIN_VALUE;
                    } else {
                        c0444a = new C0444a(dVar);
                    }
                } else {
                    c0444a = new C0444a(dVar);
                }
                Object objInvoke = c0444a.result;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = c0444a.label;
                if (i11 == 0) {
                    w7.w.b(objInvoke);
                    e8.q qVar = this.$transform$inlined;
                    h hVar = this.$$this$flow$inlined;
                    c0444a.L$0 = this;
                    c0444a.label = 1;
                    kotlin.jvm.internal.r.c(6);
                    objInvoke = qVar.invoke(hVar, t5, c0444a);
                    kotlin.jvm.internal.r.c(7);
                    if (objInvoke == objE) {
                        return objE;
                    }
                    aVar = this;
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    aVar = (a) c0444a.L$0;
                    w7.w.b(objInvoke);
                }
                if (((Boolean) objInvoke).booleanValue()) {
                    return w7.l0.INSTANCE;
                }
                throw new kotlinx.coroutines.flow.internal.a(aVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        f(g<? extends T> gVar, e8.q<? super h<? super R>, ? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> qVar, kotlin.coroutines.d<? super f> dVar) {
            super(2, dVar);
            this.$this_transformWhile = gVar;
            this.$transform = qVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            f fVar = new f(this.$this_transformWhile, this.$transform, dVar);
            fVar.L$0 = obj;
            return fVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull h<? super R> hVar, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((f) create(hVar, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.q$f<R> for r5v1 'this'  kotlin.coroutines.d
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r5.label
                r2 = 1
                if (r1 == 0) goto L1d
                if (r1 != r2) goto L15
                java.lang.Object r0 = r5.L$0
                kotlinx.coroutines.flow.q$f$a r0 = (kotlinx.coroutines.flow.q.f.a) r0
                w7.w.b(r6)     // Catch: kotlinx.coroutines.flow.internal.a -> L13
                goto L3d
            L13:
                r6 = move-exception
                goto L3a
            L15:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1d:
                w7.w.b(r6)
                java.lang.Object r6 = r5.L$0
                kotlinx.coroutines.flow.h r6 = (kotlinx.coroutines.flow.h) r6
                kotlinx.coroutines.flow.g<T> r1 = r5.$this_transformWhile
                e8.q<kotlinx.coroutines.flow.h<? super R>, T, kotlin.coroutines.d<? super java.lang.Boolean>, java.lang.Object> r3 = r5.$transform
                kotlinx.coroutines.flow.q$f$a r4 = new kotlinx.coroutines.flow.q$f$a
                r4.<init>(r3, r6)
                r5.L$0 = r4     // Catch: kotlinx.coroutines.flow.internal.a -> L38
                r5.label = r2     // Catch: kotlinx.coroutines.flow.internal.a -> L38
                java.lang.Object r6 = r1.collect(r4, r5)     // Catch: kotlinx.coroutines.flow.internal.a -> L38
                if (r6 != r0) goto L3d
                return r0
            L38:
                r6 = move-exception
                r0 = r4
            L3a:
                kotlinx.coroutines.flow.internal.o.a(r6, r0)
            L3d:
                w7.l0 r6 = w7.l0.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.q.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @NotNull
    public static final <T> g<T> b(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar) {
        return new a(gVar, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object c(h<? super T> hVar, T t5, kotlin.coroutines.d<? super w7.l0> dVar) {
        c cVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.label = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object obj = cVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = cVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            cVar.L$0 = hVar;
            cVar.label = 1;
            if (hVar.emit(t5, cVar) == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar = (h) cVar.L$0;
            w7.w.b(obj);
        }
        throw new kotlinx.coroutines.flow.internal.a(hVar);
    }

    @NotNull
    public static final <T> g<T> d(@NotNull g<? extends T> gVar, int i10) {
        if (i10 > 0) {
            return new d(gVar, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " should be positive").toString());
    }

    @NotNull
    public static final <T, R> g<R> e(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super R>, ? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> qVar) {
        return i.y(new f(gVar, qVar, null));
    }
}
