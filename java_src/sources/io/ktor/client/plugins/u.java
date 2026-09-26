package io.ktor.client.plugins;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class u {

    @NotNull
    private final e8.p<Long, kotlin.coroutines.d<? super l0>, Object> delay;

    @NotNull
    private final e8.p<b, Integer, Long> delayMillis;
    private final int maxRetries;

    @NotNull
    private final e8.p<c, i7.d, l0> modifyRequest;

    @NotNull
    private final e8.q<f, i7.c, io.ktor.client.statement.c, Boolean> shouldRetry;

    @NotNull
    private final e8.q<f, i7.d, Throwable, Boolean> shouldRetryOnException;

    @NotNull
    public static final d Plugin = new d(null);

    @NotNull
    private static final io.ktor.util.a<u> key = new io.ktor.util.a<>("RetryFeature");

    @NotNull
    private static final j7.a<e> HttpRequestRetryEvent = new j7.a<>();

    public static final class a {
        public e8.p<? super b, ? super Integer, Long> delayMillis;
        private int maxRetries;
        public e8.q<? super f, ? super i7.c, ? super io.ktor.client.statement.c, Boolean> shouldRetry;
        public e8.q<? super f, ? super i7.d, ? super Throwable, Boolean> shouldRetryOnException;

        @NotNull
        private e8.p<? super c, ? super i7.d, l0> modifyRequest = d.INSTANCE;

        @NotNull
        private e8.p<? super Long, ? super kotlin.coroutines.d<? super l0>, ? extends Object> delay = new C0404a(null);

        static final class b extends kotlin.jvm.internal.v implements e8.p<b, Integer, Long> {
            final /* synthetic */ e8.p<b, Integer, Long> $block;
            final /* synthetic */ boolean $respectRetryAfterHeader;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(boolean z6, e8.p<? super b, ? super Integer, Long> pVar) {
                super(2);
                this.$respectRetryAfterHeader = z6;
                this.$block = pVar;
            }

            @NotNull
            public final Long a(@NotNull b bVar, int i10) {
                long jLongValue;
                io.ktor.http.k headers;
                String str;
                Long lO;
                kotlin.jvm.internal.t.j(bVar, "$this$null");
                if (this.$respectRetryAfterHeader) {
                    io.ktor.client.statement.c cVarA = bVar.a();
                    Long lValueOf = (cVarA == null || (headers = cVarA.getHeaders()) == null || (str = headers.get(io.ktor.http.o.INSTANCE.t())) == null || (lO = kotlin.text.s.o(str)) == null) ? null : Long.valueOf(lO.longValue() * ((long) 1000));
                    jLongValue = Math.max(this.$block.invoke(bVar, Integer.valueOf(i10)).longValue(), lValueOf != null ? lValueOf.longValue() : 0L);
                } else {
                    jLongValue = this.$block.invoke(bVar, Integer.valueOf(i10)).longValue();
                }
                return Long.valueOf(jLongValue);
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ Long invoke(b bVar, Integer num) {
                return a(bVar, num.intValue());
            }
        }

        static final class c extends kotlin.jvm.internal.v implements e8.p<b, Integer, Long> {
            final /* synthetic */ double $base;
            final /* synthetic */ long $maxDelayMs;
            final /* synthetic */ long $randomizationMs;
            final /* synthetic */ a this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(double d, long j6, a aVar, long j10) {
                super(2);
                this.$base = d;
                this.$maxDelayMs = j6;
                this.this$0 = aVar;
                this.$randomizationMs = j10;
            }

            @NotNull
            public final Long a(@NotNull b delayMillis, int i10) {
                kotlin.jvm.internal.t.j(delayMillis, "$this$delayMillis");
                return Long.valueOf(Math.min(((long) Math.pow(this.$base, i10)) * 1000, this.$maxDelayMs) + this.this$0.m(this.$randomizationMs));
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ Long invoke(b bVar, Integer num) {
                return a(bVar, num.intValue());
            }
        }

        static final class d extends kotlin.jvm.internal.v implements e8.p<c, i7.d, l0> {
            public static final d INSTANCE = new d();

            d() {
                super(2);
            }

            public final void a(@NotNull c cVar, @NotNull i7.d it) {
                kotlin.jvm.internal.t.j(cVar, "$this$null");
                kotlin.jvm.internal.t.j(it, "it");
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(c cVar, i7.d dVar) {
                a(cVar, dVar);
                return l0.INSTANCE;
            }
        }

        static final class e extends kotlin.jvm.internal.v implements e8.q<f, i7.d, Throwable, Boolean> {
            final /* synthetic */ boolean $retryOnTimeout;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            e(boolean z6) {
                super(3);
                this.$retryOnTimeout = z6;
            }

            @Override // e8.q
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke(@NotNull f retryOnExceptionIf, @NotNull i7.d dVar, @NotNull Throwable cause) {
                boolean z6;
                kotlin.jvm.internal.t.j(retryOnExceptionIf, "$this$retryOnExceptionIf");
                kotlin.jvm.internal.t.j(dVar, "<anonymous parameter 0>");
                kotlin.jvm.internal.t.j(cause, "cause");
                if (v.h(cause)) {
                    z6 = this.$retryOnTimeout;
                } else {
                    z6 = !(cause instanceof CancellationException);
                }
                return Boolean.valueOf(z6);
            }
        }

        static final class f extends kotlin.jvm.internal.v implements e8.q<f, i7.c, io.ktor.client.statement.c, Boolean> {
            public static final f INSTANCE = new f();

            f() {
                super(3);
            }

            @Override // e8.q
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke(@NotNull f retryIf, @NotNull i7.c cVar, @NotNull io.ktor.client.statement.c response) {
                kotlin.jvm.internal.t.j(retryIf, "$this$retryIf");
                kotlin.jvm.internal.t.j(cVar, "<anonymous parameter 0>");
                kotlin.jvm.internal.t.j(response, "response");
                int iF0 = response.e().f0();
                boolean z6 = false;
                if (500 <= iF0 && iF0 < 600) {
                    z6 = true;
                }
                return Boolean.valueOf(z6);
            }
        }

        public static /* synthetic */ void c(a aVar, boolean z6, e8.p pVar, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z6 = true;
            }
            aVar.b(z6, pVar);
        }

        @NotNull
        public final e8.p<Long, kotlin.coroutines.d<? super l0>, Object> f() {
            return this.delay;
        }

        public final int h() {
            return this.maxRetries;
        }

        @NotNull
        public final e8.p<c, i7.d, l0> i() {
            return this.modifyRequest;
        }

        public final void l(@NotNull e8.p<? super c, ? super i7.d, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            this.modifyRequest = block;
        }

        public final void t(@NotNull e8.p<? super b, ? super Integer, Long> pVar) {
            kotlin.jvm.internal.t.j(pVar, "<set-?>");
            this.delayMillis = pVar;
        }

        public final void u(int i10) {
            this.maxRetries = i10;
        }

        public final void v(@NotNull e8.q<? super f, ? super i7.c, ? super io.ktor.client.statement.c, Boolean> qVar) {
            kotlin.jvm.internal.t.j(qVar, "<set-?>");
            this.shouldRetry = qVar;
        }

        public final void w(@NotNull e8.q<? super f, ? super i7.d, ? super Throwable, Boolean> qVar) {
            kotlin.jvm.internal.t.j(qVar, "<set-?>");
            this.shouldRetryOnException = qVar;
        }

        /* JADX INFO: renamed from: io.ktor.client.plugins.u$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpRequestRetry$Configuration$delay$1", f = "HttpRequestRetry.kt", l = {111}, m = "invokeSuspend")
        static final class C0404a extends kotlin.coroutines.jvm.internal.l implements e8.p<Long, kotlin.coroutines.d<? super l0>, Object> {
            /* synthetic */ long J$0;
            int label;

            C0404a(kotlin.coroutines.d<? super C0404a> dVar) {
                super(2, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                C0404a c0404a = new C0404a(dVar);
                c0404a.J$0 = ((Number) obj).longValue();
                return c0404a;
            }

            @Nullable
            public final Object f(long j6, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((C0404a) create(Long.valueOf(j6), dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ Object invoke(Long l, kotlin.coroutines.d<? super l0> dVar) {
                return f(l.longValue(), dVar);
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
                    long j6 = this.J$0;
                    this.label = 1;
                    if (y0.a(j6, this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        public static /* synthetic */ void e(a aVar, double d2, long j6, long j10, boolean z6, int i10, Object obj) {
            aVar.d((i10 & 1) != 0 ? 2.0d : d2, (i10 & 2) != 0 ? 60000L : j6, (i10 & 4) != 0 ? 1000L : j10, (i10 & 8) != 0 ? true : z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long m(long j6) {
            if (j6 == 0) {
                return 0L;
            }
            return h8.d.Default.h(j6);
        }

        public static /* synthetic */ void p(a aVar, int i10, boolean z6, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i10 = -1;
            }
            if ((i11 & 2) != 0) {
                z6 = false;
            }
            aVar.o(i10, z6);
        }

        public final void b(boolean z6, @NotNull e8.p<? super b, ? super Integer, Long> block) {
            kotlin.jvm.internal.t.j(block, "block");
            t(new b(z6, block));
        }

        public final void d(double d2, long j6, long j10, boolean z6) {
            if (d2 <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (j6 <= 0) {
                throw new IllegalStateException("Check failed.".toString());
            }
            if (j10 < 0) {
                throw new IllegalStateException("Check failed.".toString());
            }
            b(z6, new c(d2, j6, this, j10));
        }

        @NotNull
        public final e8.p<b, Integer, Long> g() {
            e8.p pVar = this.delayMillis;
            if (pVar != null) {
                return pVar;
            }
            kotlin.jvm.internal.t.B("delayMillis");
            return null;
        }

        @NotNull
        public final e8.q<f, i7.c, io.ktor.client.statement.c, Boolean> j() {
            e8.q qVar = this.shouldRetry;
            if (qVar != null) {
                return qVar;
            }
            kotlin.jvm.internal.t.B("shouldRetry");
            return null;
        }

        @NotNull
        public final e8.q<f, i7.d, Throwable, Boolean> k() {
            e8.q qVar = this.shouldRetryOnException;
            if (qVar != null) {
                return qVar;
            }
            kotlin.jvm.internal.t.B("shouldRetryOnException");
            return null;
        }

        public final void n(int i10, @NotNull e8.q<? super f, ? super i7.c, ? super io.ktor.client.statement.c, Boolean> block) {
            kotlin.jvm.internal.t.j(block, "block");
            if (i10 != -1) {
                this.maxRetries = i10;
            }
            v(block);
        }

        public final void o(int i10, boolean z6) {
            q(i10, new e(z6));
        }

        public final void q(int i10, @NotNull e8.q<? super f, ? super i7.d, ? super Throwable, Boolean> block) {
            kotlin.jvm.internal.t.j(block, "block");
            if (i10 != -1) {
                this.maxRetries = i10;
            }
            w(block);
        }

        public final void s(int i10) {
            n(i10, f.INSTANCE);
        }

        public a() {
            r(3);
            e(this, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, 0L, 0L, false, 15, null);
        }

        public final void r(int i10) {
            s(i10);
            p(this, i10, false, 2, null);
        }
    }

    public static final class b {

        @Nullable
        private final Throwable cause;

        @NotNull
        private final i7.d request;

        @Nullable
        private final io.ktor.client.statement.c response;

        @Nullable
        public final io.ktor.client.statement.c a() {
            return this.response;
        }

        public b(@NotNull i7.d request, @Nullable io.ktor.client.statement.c cVar, @Nullable Throwable th) {
            kotlin.jvm.internal.t.j(request, "request");
            this.request = request;
            this.response = cVar;
            this.cause = th;
        }
    }

    public static final class c {

        @Nullable
        private final Throwable cause;

        @NotNull
        private final i7.d request;

        @Nullable
        private final io.ktor.client.statement.c response;
        private final int retryCount;

        @NotNull
        public final i7.d a() {
            return this.request;
        }

        public final int b() {
            return this.retryCount;
        }

        public c(@NotNull i7.d request, @Nullable io.ktor.client.statement.c cVar, @Nullable Throwable th, int i10) {
            kotlin.jvm.internal.t.j(request, "request");
            this.request = request;
            this.response = cVar;
            this.cause = th;
            this.retryCount = i10;
        }
    }

    public static final class d implements m<a, u> {
        public /* synthetic */ d(kotlin.jvm.internal.k kVar) {
            this();
        }

        private d() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull u plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            plugin.l(scope);
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public u a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new u(aVar);
        }

        @NotNull
        public final j7.a<e> c() {
            return u.HttpRequestRetryEvent;
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<u> getKey() {
            return u.key;
        }
    }

    public static final class e {

        @Nullable
        private final Throwable cause;

        @NotNull
        private final i7.d request;

        @Nullable
        private final io.ktor.client.statement.c response;
        private final int retryCount;

        @Nullable
        public final Throwable a() {
            return this.cause;
        }

        @NotNull
        public final i7.d b() {
            return this.request;
        }

        @Nullable
        public final io.ktor.client.statement.c c() {
            return this.response;
        }

        public final int d() {
            return this.retryCount;
        }

        public e(@NotNull i7.d request, int i10, @Nullable io.ktor.client.statement.c cVar, @Nullable Throwable th) {
            kotlin.jvm.internal.t.j(request, "request");
            this.request = request;
            this.retryCount = i10;
            this.response = cVar;
            this.cause = th;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpRequestRetry$intercept$1", f = "HttpRequestRetry.kt", l = {298, 314}, m = "invokeSuspend")
    static final class g extends kotlin.coroutines.jvm.internal.l implements e8.q<e0, i7.d, kotlin.coroutines.d<? super io.ktor.client.call.b>, Object> {
        final /* synthetic */ io.ktor.client.a $client;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(io.ktor.client.a aVar, kotlin.coroutines.d<? super g> dVar) {
            super(3, dVar);
            this.$client = aVar;
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull e0 e0Var, @NotNull i7.d dVar, @Nullable kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
            g gVar = u.this.new g(this.$client, dVar2);
            gVar.L$0 = e0Var;
            gVar.L$1 = dVar;
            return gVar.invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:42:0x0161 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:45:0x016c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x016d A[Catch: all -> 0x0185, TRY_LEAVE, TryCatch #0 {all -> 0x0185, blocks: (B:40:0x0159, B:43:0x0162, B:46:0x016d), top: B:62:0x0159 }] */
        /* JADX WARN: Code duplicated, block: B:57:0x01fe A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:58:0x01ff  */
        /* JADX WARN: Code duplicated, block: B:64:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x01ff -> B:59:0x020c). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r22) {
            /*
                Method dump skipped, instruction units count: 567
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.u.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    static final class h extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
        final /* synthetic */ i7.d $subRequest;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(i7.d dVar) {
            super(1);
            this.$subRequest = dVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            b2 b2VarF = this.$subRequest.f();
            kotlin.jvm.internal.t.h(b2VarF, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob");
            kotlinx.coroutines.a0 a0Var = (kotlinx.coroutines.a0) b2VarF;
            if (th == null) {
                a0Var.complete();
            } else {
                a0Var.a(th);
            }
        }
    }

    public static final class f {
        private final int retryCount;

        public f(int i10) {
            this.retryCount = i10;
        }
    }

    public u(@NotNull a configuration) {
        kotlin.jvm.internal.t.j(configuration, "configuration");
        this.shouldRetry = configuration.j();
        this.shouldRetryOnException = configuration.k();
        this.delayMillis = configuration.g();
        this.delay = configuration.f();
        this.maxRetries = configuration.h();
        this.modifyRequest = configuration.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final i7.d m(i7.d dVar) {
        i7.d dVarN = new i7.d().n(dVar);
        dVar.f().U(new h(dVarN));
        return dVarN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n(int i10, int i11, e8.q<? super f, ? super i7.c, ? super io.ktor.client.statement.c, Boolean> qVar, io.ktor.client.call.b bVar) {
        return i10 < i11 && qVar.invoke(new f(i10 + 1), bVar.e(), bVar.f()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(int i10, int i11, e8.q<? super f, ? super i7.d, ? super Throwable, Boolean> qVar, i7.d dVar, Throwable th) {
        return i10 < i11 && qVar.invoke(new f(i10 + 1), dVar, th).booleanValue();
    }

    public final void l(@NotNull io.ktor.client.a client) {
        kotlin.jvm.internal.t.j(client, "client");
        ((x) n.b(client, x.Plugin)).d(new g(client, null));
    }
}
