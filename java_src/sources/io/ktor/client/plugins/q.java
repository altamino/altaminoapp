package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class q {
    private final boolean allowHttpsDowngrade;
    private final boolean checkHttpMethod;

    @NotNull
    public static final b Plugin = new b(null);

    @NotNull
    private static final io.ktor.util.a<q> key = new io.ktor.util.a<>("HttpRedirect");

    @NotNull
    private static final j7.a<io.ktor.client.statement.c> HttpResponseRedirect = new j7.a<>();

    public static final class a {
        private boolean allowHttpsDowngrade;
        private boolean checkHttpMethod = true;

        public final boolean a() {
            return this.allowHttpsDowngrade;
        }

        public final boolean b() {
            return this.checkHttpMethod;
        }
    }

    public static final class b implements m<a, q> {

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpRedirect$Plugin", f = "HttpRedirect.kt", l = {113}, m = "handleCall")
        static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            Object L$5;
            Object L$6;
            Object L$7;
            Object L$8;
            boolean Z$0;
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
                return b.this.e(null, null, null, false, null, this);
            }
        }

        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        /* JADX INFO: renamed from: io.ktor.client.plugins.q$b$b, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpRedirect$Plugin$install$1", f = "HttpRedirect.kt", l = {64, 69}, m = "invokeSuspend")
        static final class C0402b extends kotlin.coroutines.jvm.internal.l implements e8.q<e0, i7.d, kotlin.coroutines.d<? super io.ktor.client.call.b>, Object> {
            final /* synthetic */ q $plugin;
            final /* synthetic */ io.ktor.client.a $scope;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0402b(q qVar, io.ktor.client.a aVar, kotlin.coroutines.d<? super C0402b> dVar) {
                super(3, dVar);
                this.$plugin = qVar;
                this.$scope = aVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull e0 e0Var, @NotNull i7.d dVar, @Nullable kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
                C0402b c0402b = new C0402b(this.$plugin, this.$scope, dVar2);
                c0402b.L$0 = e0Var;
                c0402b.L$1 = dVar;
                return c0402b.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                e0 e0Var;
                i7.d dVar;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            w7.w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        i7.d dVar2 = (i7.d) this.L$1;
                        e0 e0Var2 = (e0) this.L$0;
                        w7.w.b(obj);
                        dVar = dVar2;
                        e0Var = e0Var2;
                    }
                    return obj;
                }
                w7.w.b(obj);
                e0 e0Var3 = (e0) this.L$0;
                i7.d dVar3 = (i7.d) this.L$1;
                this.L$0 = e0Var3;
                this.L$1 = dVar3;
                this.label = 1;
                Object objA = e0Var3.a(dVar3, this);
                if (objA == objE) {
                    return objE;
                }
                e0Var = e0Var3;
                dVar = dVar3;
                obj = objA;
                io.ktor.client.call.b bVar = (io.ktor.client.call.b) obj;
                if (this.$plugin.checkHttpMethod && !r.ALLOWED_FOR_REDIRECT.contains(bVar.e().getMethod())) {
                    return bVar;
                }
                b bVar2 = q.Plugin;
                boolean z6 = this.$plugin.allowHttpsDowngrade;
                io.ktor.client.a aVar = this.$scope;
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                obj = bVar2.e(e0Var, dVar, bVar, z6, aVar, this);
                if (obj == objE) {
                    return objE;
                }
                return obj;
            }
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:20:0x011c  */
        /* JADX WARN: Code duplicated, block: B:22:0x0125  */
        /* JADX WARN: Code duplicated, block: B:30:0x016b  */
        /* JADX WARN: Code duplicated, block: B:33:0x01b1 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:34:0x01b2  */
        /* JADX WARN: Code duplicated, block: B:37:0x01cc  */
        /* JADX WARN: Code duplicated, block: B:39:0x01cf  */
        /* JADX WARN: Code duplicated, block: B:7:0x0019  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v12 */
        /* JADX WARN: Type inference failed for: r0v13 */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5, types: [io.ktor.client.plugins.e0, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r1v11, types: [T] */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r21v0, types: [T, io.ktor.client.call.b, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v6, types: [T, i7.d] */
        /* JADX WARN: Type inference failed for: r7v0, types: [T] */
        /* JADX WARN: Type inference failed for: r7v1, types: [i7.d, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v5 */
        /* JADX WARN: Type inference failed for: r7v6 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x01b2 -> B:35:0x01b8). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public final java.lang.Object e(io.ktor.client.plugins.e0 r19, i7.d r20, io.ktor.client.call.b r21, boolean r22, io.ktor.client.a r23, kotlin.coroutines.d<? super io.ktor.client.call.b> r24) {
            /*
                Method dump skipped, instruction units count: 471
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.q.b.e(io.ktor.client.plugins.e0, i7.d, io.ktor.client.call.b, boolean, io.ktor.client.a, kotlin.coroutines.d):java.lang.Object");
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull q plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            ((x) n.b(scope, x.Plugin)).d(new C0402b(plugin, scope, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public q a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new q(aVar.b(), aVar.a(), null);
        }

        @NotNull
        public final j7.a<io.ktor.client.statement.c> d() {
            return q.HttpResponseRedirect;
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<q> getKey() {
            return q.key;
        }
    }

    public /* synthetic */ q(boolean z6, boolean z10, kotlin.jvm.internal.k kVar) {
        this(z6, z10);
    }

    private q(boolean z6, boolean z10) {
        this.checkHttpMethod = z6;
        this.allowHttpsDowngrade = z10;
    }
}
