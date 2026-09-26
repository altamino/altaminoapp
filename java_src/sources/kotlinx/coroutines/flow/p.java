package kotlinx.coroutines.flow;

import io.agora.rtc.Constants;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class p {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements g<T> {
        final /* synthetic */ e8.q $action$inlined;
        final /* synthetic */ g $this_catch$inlined;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.p$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {114, 115}, m = "collect")
        public static final class C0443a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            public C0443a(kotlin.coroutines.d dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return a.this.collect(null, this);
            }
        }

        public a(g gVar, e8.q qVar) {
            this.$this_catch$inlined = gVar;
            this.$action$inlined = qVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            C0443a c0443a;
            a<T> aVar;
            if (dVar instanceof C0443a) {
                c0443a = (C0443a) dVar;
                int i10 = c0443a.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    c0443a.label = i10 - Integer.MIN_VALUE;
                } else {
                    c0443a = new C0443a(dVar);
                }
            } else {
                c0443a = new C0443a(dVar);
            }
            Object objI = c0443a.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = c0443a.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    hVar = (h) c0443a.L$1;
                    aVar = (a) c0443a.L$0;
                    w7.w.b(objI);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w7.w.b(objI);
                }
                return w7.l0.INSTANCE;
            }
            w7.w.b(objI);
            g gVar = this.$this_catch$inlined;
            c0443a.L$0 = this;
            c0443a.L$1 = hVar;
            c0443a.label = 1;
            objI = i.i(gVar, hVar, c0443a);
            if (objI == objE) {
                return objE;
            }
            aVar = this;
            Throwable th = (Throwable) objI;
            if (th != null) {
                e8.q qVar = aVar.$action$inlined;
                c0443a.L$0 = null;
                c0443a.L$1 = null;
                c0443a.label = 2;
                kotlin.jvm.internal.r.c(6);
                Object objInvoke = qVar.invoke(hVar, th, c0443a);
                kotlin.jvm.internal.r.c(7);
                if (objInvoke == objE) {
                    return objE;
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "catchImpl")
    static final class b<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return i.i(null, null, this);
        }
    }

    static final class c<T> implements h {
        final /* synthetic */ h<T> $collector;
        final /* synthetic */ kotlin.jvm.internal.p0<Throwable> $fromDownstream;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {158}, m = "emit")
        static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            int label;
            /* synthetic */ Object result;
            final /* synthetic */ c<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(c<? super T> cVar, kotlin.coroutines.d<? super a> dVar) {
                super(dVar);
                this.this$0 = cVar;
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
        c(h<? super T> hVar, kotlin.jvm.internal.p0<Throwable> p0Var) {
            this.$collector = hVar;
            this.$fromDownstream = p0Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
            a aVar;
            c<T> cVar;
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
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                cVar = (c) aVar.L$0;
                try {
                    w7.w.b(obj);
                    return w7.l0.INSTANCE;
                } catch (Throwable 
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                    	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    this = this;
                    boolean r0 = r6 instanceof kotlinx.coroutines.flow.p.c.a
                    if (r0 == 0) goto L13
                    r0 = r6
                    kotlinx.coroutines.flow.p$c$a r0 = (kotlinx.coroutines.flow.p.c.a) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.p$c$a r0 = new kotlinx.coroutines.flow.p$c$a
                    r0.<init>(r4, r6)
                L18:
                    java.lang.Object r6 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L37
                    if (r2 != r3) goto L2f
                    java.lang.Object r5 = r0.L$0
                    kotlinx.coroutines.flow.p$c r5 = (kotlinx.coroutines.flow.p.c) r5
                    w7.w.b(r6)     // Catch: java.lang.Throwable -> L2d
                    goto L47
                L2d:
                    r6 = move-exception
                    goto L4c
                L2f:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L37:
                    w7.w.b(r6)
                    kotlinx.coroutines.flow.h<T> r6 = r4.$collector     // Catch: java.lang.Throwable -> L4a
                    r0.L$0 = r4     // Catch: java.lang.Throwable -> L4a
                    r0.label = r3     // Catch: java.lang.Throwable -> L4a
                    java.lang.Object r5 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L4a
                    if (r5 != r1) goto L47
                    return r1
                L47:
                    w7.l0 r5 = w7.l0.INSTANCE
                    return r5
                L4a:
                    r6 = move-exception
                    r5 = r4
                L4c:
                    kotlin.jvm.internal.p0<java.lang.Throwable> r5 = r5.$fromDownstream
                    r5.element = r6
                    throw r6
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.c.emit(java.lang.Object, kotlin.coroutines.d):java.lang.Object");
            }
        }

        @NotNull
        public static final <T> g<T> a(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super T>, ? super Throwable, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar) {
            return new a(gVar, qVar);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Nullable
        public static final <T> Object b(@NotNull g<? extends T> gVar, @NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super Throwable> dVar) throws Throwable {
            b bVar;
            kotlin.jvm.internal.p0 p0Var;
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i10 = bVar.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    bVar.label = i10 - Integer.MIN_VALUE;
                } else {
                    bVar = new b(dVar);
                }
            } else {
                bVar = new b(dVar);
            }
            Object obj = bVar.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = bVar.label;
            if (i11 == 0) {
                w7.w.b(obj);
                kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
                try {
                    h<? super Object> cVar = new c<>(hVar, p0Var2);
                    bVar.L$0 = p0Var2;
                    bVar.label = 1;
                    if (gVar.collect(cVar, bVar) == objE) {
                        return objE;
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    p0Var = p0Var2;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p0Var = (kotlin.jvm.internal.p0) bVar.L$0;
                try {
                    w7.w.b(obj);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            Throwable th3 = (Throwable) p0Var.element;
            if (d(th, th3) || c(th, bVar.getContext())) {
                throw th;
            }
            if (th3 == null) {
                return th;
            }
            if (th instanceof CancellationException) {
                w7.f.a(th3, th);
                throw th3;
            }
            w7.f.a(th, th3);
            throw th;
        }

        private static final boolean c(Throwable th, kotlin.coroutines.g gVar) {
            b2 b2Var = (b2) gVar.get(b2.Key);
            if (b2Var == null || !b2Var.isCancelled()) {
                return false;
            }
            return d(th, b2Var.b0());
        }

        private static final boolean d(Throwable th, Throwable th2) {
            return th2 != null && kotlin.jvm.internal.t.e(th2, th);
        }
    }
