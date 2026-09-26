package io.ktor.client.plugins;

import androidx.renderscript.ScriptIntrinsicBLAS;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class k {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final io.ktor.util.a<k> key = new io.ktor.util.a<>("HttpResponseValidator");

    @NotNull
    private final List<j> callExceptionHandlers;
    private final boolean expectSuccess;

    @NotNull
    private final List<e8.p<io.ktor.client.statement.c, kotlin.coroutines.d<? super l0>, Object>> responseValidators;

    public static final class a implements m<b, k> {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        /* JADX INFO: renamed from: io.ktor.client.plugins.k$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$1", f = "HttpCallValidator.kt", l = {130, 133}, m = "invokeSuspend")
        static final class C0399a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ k $plugin;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX INFO: renamed from: io.ktor.client.plugins.k$a$a$a, reason: collision with other inner class name */
            static final class C0400a extends kotlin.jvm.internal.v implements e8.a<Boolean> {
                final /* synthetic */ k $plugin;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0400a(k kVar) {
                    super(0);
                    this.$plugin = kVar;
                }

                @Override // e8.a
                @NotNull
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public final Boolean invoke() {
                    return Boolean.valueOf(this.$plugin.expectSuccess);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0399a(k kVar, kotlin.coroutines.d<? super C0399a> dVar) {
                super(3, dVar);
                this.$plugin = kVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                C0399a c0399a = new C0399a(this.$plugin, dVar);
                c0399a.L$0 = eVar;
                c0399a.L$1 = obj;
                return c0399a.invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v0, types: [int] */
            /* JADX WARN: Type inference failed for: r1v1, types: [io.ktor.util.pipeline.e] */
            /* JADX WARN: Type inference failed for: r1v11 */
            /* JADX WARN: Type inference failed for: r1v12 */
            /* JADX WARN: Type inference failed for: r1v8 */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                ?? r1 = this.label;
                try {
                    if (r1 != 0) {
                        if (r1 != 1) {
                            if (r1 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            Throwable th = (Throwable) this.L$0;
                            w7.w.b(obj);
                            throw th;
                        }
                        io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                        w7.w.b(obj);
                        r1 = eVar;
                    } else {
                        w7.w.b(obj);
                        io.ktor.util.pipeline.e eVar2 = (io.ktor.util.pipeline.e) this.L$0;
                        Object obj2 = this.L$1;
                        ((i7.d) eVar2.b()).b().g(l.e(), new C0400a(this.$plugin));
                        this.L$0 = eVar2;
                        this.label = 1;
                        Object objE2 = eVar2.e(obj2, this);
                        r1 = eVar2;
                        if (objE2 == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                } catch (Throwable th2) {
                    Throwable thA = io.ktor.client.utils.d.a(th2);
                    k kVar = this.$plugin;
                    l.a aVarA = l.a((i7.d) r1.b());
                    this.L$0 = thA;
                    this.label = 2;
                    if (kVar.e(thA, aVarA, this) == objE) {
                        return objE;
                    }
                    throw thA;
                }
            }
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$2", f = "HttpCallValidator.kt", l = {ScriptIntrinsicBLAS.RIGHT, 145}, m = "invokeSuspend")
        static final class b extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b>, io.ktor.client.statement.d, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ k $plugin;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(k kVar, kotlin.coroutines.d<? super b> dVar) {
                super(3, dVar);
                this.$plugin = kVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> eVar, @NotNull io.ktor.client.statement.d dVar, @Nullable kotlin.coroutines.d<? super l0> dVar2) {
                b bVar = new b(this.$plugin, dVar2);
                bVar.L$0 = eVar;
                bVar.L$1 = dVar;
                return bVar.invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v0, types: [int] */
            /* JADX WARN: Type inference failed for: r1v1, types: [io.ktor.util.pipeline.e] */
            /* JADX WARN: Type inference failed for: r1v11 */
            /* JADX WARN: Type inference failed for: r1v12 */
            /* JADX WARN: Type inference failed for: r1v8 */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                ?? r1 = this.label;
                try {
                    if (r1 != 0) {
                        if (r1 != 1) {
                            if (r1 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            Throwable th = (Throwable) this.L$0;
                            w7.w.b(obj);
                            throw th;
                        }
                        io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                        w7.w.b(obj);
                        r1 = eVar;
                    } else {
                        w7.w.b(obj);
                        io.ktor.util.pipeline.e eVar2 = (io.ktor.util.pipeline.e) this.L$0;
                        io.ktor.client.statement.d dVar = (io.ktor.client.statement.d) this.L$1;
                        this.L$0 = eVar2;
                        this.label = 1;
                        Object objE2 = eVar2.e(dVar, this);
                        r1 = eVar2;
                        if (objE2 == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                } catch (Throwable th2) {
                    Throwable thA = io.ktor.client.utils.d.a(th2);
                    k kVar = this.$plugin;
                    i7.c cVarE = ((io.ktor.client.call.b) r1.b()).e();
                    this.L$0 = thA;
                    this.label = 2;
                    if (kVar.e(thA, cVarE, this) == objE) {
                        return objE;
                    }
                    throw thA;
                }
            }
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$3", f = "HttpCallValidator.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT}, m = "invokeSuspend")
        static final class c extends kotlin.coroutines.jvm.internal.l implements e8.q<e0, i7.d, kotlin.coroutines.d<? super io.ktor.client.call.b>, Object> {
            final /* synthetic */ k $plugin;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(k kVar, kotlin.coroutines.d<? super c> dVar) {
                super(3, dVar);
                this.$plugin = kVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull e0 e0Var, @NotNull i7.d dVar, @Nullable kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
                c cVar = new c(this.$plugin, dVar2);
                cVar.L$0 = e0Var;
                cVar.L$1 = dVar;
                return cVar.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            io.ktor.client.call.b bVar = (io.ktor.client.call.b) this.L$0;
                            w7.w.b(obj);
                            return bVar;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w7.w.b(obj);
                } else {
                    w7.w.b(obj);
                    e0 e0Var = (e0) this.L$0;
                    i7.d dVar = (i7.d) this.L$1;
                    this.L$0 = null;
                    this.label = 1;
                    obj = e0Var.a(dVar, this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                io.ktor.client.call.b bVar2 = (io.ktor.client.call.b) obj;
                k kVar = this.$plugin;
                io.ktor.client.statement.c cVarF = bVar2.f();
                this.L$0 = bVar2;
                this.label = 2;
                if (kVar.f(cVarF, this) == objE) {
                    return objE;
                }
                return bVar2;
            }
        }

        private a() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull k plugin, @NotNull io.ktor.client.a scope) throws io.ktor.util.pipeline.b {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            scope.n().l(i7.g.Phases.a(), new C0399a(plugin, null));
            io.ktor.util.pipeline.h hVar = new io.ktor.util.pipeline.h("BeforeReceive");
            scope.o().k(io.ktor.client.statement.f.Phases.b(), hVar);
            scope.o().l(hVar, new b(plugin, null));
            ((x) n.b(scope, x.Plugin)).d(new c(plugin, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public k a(@NotNull e8.l<? super b, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            b bVar = new b();
            block.invoke(bVar);
            return new k(kotlin.collections.d0.G0(bVar.c()), kotlin.collections.d0.G0(bVar.b()), bVar.a());
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<k> getKey() {
            return k.key;
        }
    }

    public static final class b {

        @NotNull
        private final List<e8.p<io.ktor.client.statement.c, kotlin.coroutines.d<? super l0>, Object>> responseValidators = new ArrayList();

        @NotNull
        private final List<j> responseExceptionHandlers = new ArrayList();
        private boolean expectSuccess = true;

        public final boolean a() {
            return this.expectSuccess;
        }

        @NotNull
        public final List<j> b() {
            return this.responseExceptionHandlers;
        }

        @NotNull
        public final List<e8.p<io.ktor.client.statement.c, kotlin.coroutines.d<? super l0>, Object>> c() {
            return this.responseValidators;
        }

        public final void d(boolean z6) {
            this.expectSuccess = z6;
        }

        public final void e(@NotNull e8.p<? super io.ktor.client.statement.c, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
            kotlin.jvm.internal.t.j(block, "block");
            this.responseValidators.add(block);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpCallValidator", f = "HttpCallValidator.kt", l = {58, 59}, m = "processException")
    static final class c extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
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
            return k.this.e(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpCallValidator", f = "HttpCallValidator.kt", l = {51}, m = "validateResponse")
    static final class d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return k.this.f(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(@NotNull List<? extends e8.p<? super io.ktor.client.statement.c, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> responseValidators, @NotNull List<? extends j> callExceptionHandlers, boolean z6) {
        kotlin.jvm.internal.t.j(responseValidators, "responseValidators");
        kotlin.jvm.internal.t.j(callExceptionHandlers, "callExceptionHandlers");
        this.responseValidators = responseValidators;
        this.callExceptionHandlers = callExceptionHandlers;
        this.expectSuccess = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x007a  */
    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:? A[LOOP:0: B:17:0x0074->B:38:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object e(java.lang.Throwable r8, i7.c r9, kotlin.coroutines.d<? super w7.l0> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof io.ktor.client.plugins.k.c
            if (r0 == 0) goto L13
            r0 = r10
            io.ktor.client.plugins.k$c r0 = (io.ktor.client.plugins.k.c) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.plugins.k$c r0 = new io.ktor.client.plugins.k$c
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L31
            if (r2 != r3) goto L29
            goto L31
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            java.lang.Object r8 = r0.L$2
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.L$1
            i7.c r9 = (i7.c) r9
            java.lang.Object r2 = r0.L$0
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            w7.w.b(r10)
            goto L9b
        L41:
            w7.w.b(r10)
            org.slf4j.a r10 = io.ktor.client.plugins.l.d()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r5 = "Processing exception "
            r2.append(r5)
            r2.append(r8)
            java.lang.String r5 = " for request "
            r2.append(r5)
            io.ktor.http.p0 r5 = r9.getUrl()
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            r10.a(r2)
            java.util.List<io.ktor.client.plugins.j> r10 = r7.callExceptionHandlers
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.Iterator r10 = r10.iterator()
            r6 = r9
            r9 = r8
            r8 = r10
            r10 = r6
        L74:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto Lb7
            java.lang.Object r2 = r8.next()
            io.ktor.client.plugins.j r2 = (io.ktor.client.plugins.j) r2
            boolean r5 = r2 instanceof io.ktor.client.plugins.i
            if (r5 == 0) goto L9e
            io.ktor.client.plugins.i r2 = (io.ktor.client.plugins.i) r2
            e8.p r2 = r2.a()
            r0.L$0 = r9
            r0.L$1 = r10
            r0.L$2 = r8
            r0.label = r4
            java.lang.Object r2 = r2.invoke(r9, r0)
            if (r2 != r1) goto L99
            return r1
        L99:
            r2 = r9
            r9 = r10
        L9b:
            r10 = r9
            r9 = r2
            goto L74
        L9e:
            boolean r5 = r2 instanceof io.ktor.client.plugins.b0
            if (r5 == 0) goto L74
            io.ktor.client.plugins.b0 r2 = (io.ktor.client.plugins.b0) r2
            e8.q r2 = r2.a()
            r0.L$0 = r9
            r0.L$1 = r10
            r0.L$2 = r8
            r0.label = r3
            java.lang.Object r2 = r2.invoke(r9, r10, r0)
            if (r2 != r1) goto L99
            return r1
        Lb7:
            w7.l0 r8 = w7.l0.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.k.e(java.lang.Throwable, i7.c, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(io.ktor.client.statement.c cVar, kotlin.coroutines.d<? super l0> dVar) {
        d dVar2;
        io.ktor.client.statement.c cVar2;
        Iterator it;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object obj = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar2.label;
        if (i11 == 0) {
            w7.w.b(obj);
            l.LOGGER.a("Validating response for request " + cVar.y0().e().getUrl());
            cVar2 = cVar;
            it = this.responseValidators.iterator();
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) dVar2.L$1;
            io.ktor.client.statement.c cVar3 = (io.ktor.client.statement.c) dVar2.L$0;
            w7.w.b(obj);
            cVar2 = cVar3;
        }
        while (it.hasNext()) {
            e8.p pVar = (e8.p) it.next();
            dVar2.L$0 = cVar2;
            dVar2.L$1 = it;
            dVar2.label = 1;
            if (pVar.invoke(cVar2, dVar2) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
