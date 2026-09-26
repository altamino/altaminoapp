package io.ktor.client.plugins;

import io.ktor.http.m0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class y {
    public static final long INFINITE_TIMEOUT_MS = Long.MAX_VALUE;

    @NotNull
    public static final b Plugin = new b(null);

    @NotNull
    private static final io.ktor.util.a<y> key = new io.ktor.util.a<>("TimeoutPlugin");

    @Nullable
    private final Long connectTimeoutMillis;

    @Nullable
    private final Long requestTimeoutMillis;

    @Nullable
    private final Long socketTimeoutMillis;

    public static final class a {

        @NotNull
        public static final C0405a Companion = new C0405a(null);

        @NotNull
        private static final io.ktor.util.a<a> key = new io.ktor.util.a<>("TimeoutConfiguration");

        @Nullable
        private Long _connectTimeoutMillis;

        @Nullable
        private Long _requestTimeoutMillis;

        @Nullable
        private Long _socketTimeoutMillis;

        /* JADX INFO: renamed from: io.ktor.client.plugins.y$a$a, reason: collision with other inner class name */
        public static final class C0405a {
            public /* synthetic */ C0405a(kotlin.jvm.internal.k kVar) {
                this();
            }

            private C0405a() {
            }
        }

        public /* synthetic */ a(Long l, Long l6, Long l10, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? null : l, (i10 & 2) != 0 ? null : l6, (i10 & 4) != 0 ? null : l10);
        }

        @Nullable
        public final Long c() {
            return this._connectTimeoutMillis;
        }

        @Nullable
        public final Long d() {
            return this._requestTimeoutMillis;
        }

        @Nullable
        public final Long e() {
            return this._socketTimeoutMillis;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.t.e(this._requestTimeoutMillis, aVar._requestTimeoutMillis) && kotlin.jvm.internal.t.e(this._connectTimeoutMillis, aVar._connectTimeoutMillis) && kotlin.jvm.internal.t.e(this._socketTimeoutMillis, aVar._socketTimeoutMillis);
        }

        public a(@Nullable Long l, @Nullable Long l6, @Nullable Long l10) {
            this._requestTimeoutMillis = 0L;
            this._connectTimeoutMillis = 0L;
            this._socketTimeoutMillis = 0L;
            g(l);
            f(l6);
            h(l10);
        }

        private final Long b(Long l) {
            if (l == null || l.longValue() > 0) {
                return l;
            }
            throw new IllegalArgumentException("Only positive timeout values are allowed, for infinite timeout use HttpTimeout.INFINITE_TIMEOUT_MS".toString());
        }

        @NotNull
        public final y a() {
            return new y(d(), c(), e(), null);
        }

        public int hashCode() {
            Long l = this._requestTimeoutMillis;
            int iHashCode = (l != null ? l.hashCode() : 0) * 31;
            Long l6 = this._connectTimeoutMillis;
            int iHashCode2 = (iHashCode + (l6 != null ? l6.hashCode() : 0)) * 31;
            Long l10 = this._socketTimeoutMillis;
            return iHashCode2 + (l10 != null ? l10.hashCode() : 0);
        }

        public final void f(@Nullable Long l) {
            this._connectTimeoutMillis = b(l);
        }

        public final void g(@Nullable Long l) {
            this._requestTimeoutMillis = b(l);
        }

        public final void h(@Nullable Long l) {
            this._socketTimeoutMillis = b(l);
        }
    }

    public static final class b implements m<a, y>, io.ktor.client.engine.e<a> {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpTimeout$Plugin$install$1", f = "HttpTimeout.kt", l = {146, 174}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<e0, i7.d, kotlin.coroutines.d<? super io.ktor.client.call.b>, Object> {
            final /* synthetic */ y $plugin;
            final /* synthetic */ io.ktor.client.a $scope;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX INFO: renamed from: io.ktor.client.plugins.y$b$a$a, reason: collision with other inner class name */
            static final class C0406a extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
                final /* synthetic */ b2 $killer;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0406a(b2 b2Var) {
                    super(1);
                    this.$killer = b2Var;
                }

                @Override // e8.l
                public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                    invoke2(th);
                    return l0.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    b2.a.a(this.$killer, null, 1, null);
                }
            }

            /* JADX INFO: renamed from: io.ktor.client.plugins.y$b$a$b, reason: collision with other inner class name */
            @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpTimeout$Plugin$install$1$1$killer$1", f = "HttpTimeout.kt", l = {164}, m = "invokeSuspend")
            static final class C0407b extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
                final /* synthetic */ b2 $executionContext;
                final /* synthetic */ i7.d $request;
                final /* synthetic */ Long $requestTimeout;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0407b(Long l, i7.d dVar, b2 b2Var, kotlin.coroutines.d<? super C0407b> dVar2) {
                    super(2, dVar2);
                    this.$requestTimeout = l;
                    this.$request = dVar;
                    this.$executionContext = b2Var;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                    return new C0407b(this.$requestTimeout, this.$request, this.$executionContext, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                    return ((C0407b) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        long jLongValue = this.$requestTimeout.longValue();
                        this.label = 1;
                        if (y0.a(jLongValue, this) == objE) {
                            return objE;
                        }
                    }
                    w wVar = new w(this.$request);
                    z.LOGGER.a("Request timeout: " + this.$request.h());
                    b2 b2Var = this.$executionContext;
                    String message = wVar.getMessage();
                    kotlin.jvm.internal.t.g(message);
                    f2.d(b2Var, message, wVar);
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(y yVar, io.ktor.client.a aVar, kotlin.coroutines.d<? super a> dVar) {
                super(3, dVar);
                this.$plugin = yVar;
                this.$scope = aVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull e0 e0Var, @NotNull i7.d dVar, @Nullable kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
                a aVar = new a(this.$plugin, this.$scope, dVar2);
                aVar.L$0 = e0Var;
                aVar.L$1 = dVar;
                return aVar.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            w7.w.b(obj);
                            return obj;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w7.w.b(obj);
                    return obj;
                }
                w7.w.b(obj);
                e0 e0Var = (e0) this.L$0;
                i7.d dVar = (i7.d) this.L$1;
                if (!m0.b(dVar.h().o()) && !(dVar.c() instanceof i7.a)) {
                    b bVar = y.Plugin;
                    a aVar = (a) dVar.e(bVar);
                    if (aVar == null && this.$plugin.f()) {
                        aVar = new a(null, null, null, 7, null);
                        dVar.k(bVar, aVar);
                    }
                    if (aVar != null) {
                        y yVar = this.$plugin;
                        io.ktor.client.a aVar2 = this.$scope;
                        Long lC = aVar.c();
                        if (lC == null) {
                            lC = yVar.connectTimeoutMillis;
                        }
                        aVar.f(lC);
                        Long lE = aVar.e();
                        if (lE == null) {
                            lE = yVar.socketTimeoutMillis;
                        }
                        aVar.h(lE);
                        Long lD = aVar.d();
                        if (lD == null) {
                            lD = yVar.requestTimeoutMillis;
                        }
                        aVar.g(lD);
                        Long lD2 = aVar.d();
                        if (lD2 == null) {
                            lD2 = yVar.requestTimeoutMillis;
                        }
                        if (lD2 != null && lD2.longValue() != Long.MAX_VALUE) {
                            dVar.f().U(new C0406a(kotlinx.coroutines.k.d(aVar2, null, null, new C0407b(lD2, dVar, dVar.f(), null), 3, null)));
                        }
                    }
                    this.L$0 = null;
                    this.label = 2;
                    obj = e0Var.a(dVar, this);
                    if (obj == objE) {
                        return objE;
                    }
                    return obj;
                }
                this.L$0 = null;
                this.label = 1;
                obj = e0Var.a(dVar, this);
                if (obj == objE) {
                    return objE;
                }
                return obj;
            }
        }

        private b() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull y plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            ((x) n.b(scope, x.Plugin)).d(new a(plugin, scope, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public y a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            a aVar = new a(null, null, null, 7, null);
            block.invoke(aVar);
            return aVar.a();
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<y> getKey() {
            return y.key;
        }
    }

    public /* synthetic */ y(Long l, Long l6, Long l10, kotlin.jvm.internal.k kVar) {
        this(l, l6, l10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f() {
        return (this.requestTimeoutMillis == null && this.connectTimeoutMillis == null && this.socketTimeoutMillis == null) ? false : true;
    }

    private y(Long l, Long l6, Long l10) {
        this.requestTimeoutMillis = l;
        this.connectTimeoutMillis = l6;
        this.socketTimeoutMillis = l10;
    }
}
