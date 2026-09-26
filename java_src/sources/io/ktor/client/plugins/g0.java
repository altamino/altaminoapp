package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class g0 {

    @NotNull
    public static final b Plugin = new b(null);

    @NotNull
    private static final io.ktor.util.a<g0> key = new io.ktor.util.a<>("UserAgent");

    @NotNull
    private final String agent;

    public static final class a {

        @NotNull
        private String agent;

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @NotNull
        public final String a() {
            return this.agent;
        }

        public final void b(@NotNull String str) {
            kotlin.jvm.internal.t.j(str, "<set-?>");
            this.agent = str;
        }

        public a(@NotNull String agent) {
            kotlin.jvm.internal.t.j(agent, "agent");
            this.agent = agent;
        }

        public /* synthetic */ a(String str, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? "Ktor http-client" : str);
        }
    }

    public static final class b implements m<a, g0> {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.UserAgent$Plugin$install$1", f = "UserAgent.kt", l = {}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ g0 $plugin;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(g0 g0Var, kotlin.coroutines.d<? super a> dVar) {
                super(3, dVar);
                this.$plugin = g0Var;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                a aVar = new a(this.$plugin, dVar);
                aVar.L$0 = eVar;
                return aVar.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.d.e();
                if (this.label == 0) {
                    w7.w.b(obj);
                    io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                    h0.LOGGER.a("Adding User-Agent header: " + this.$plugin.b() + " for " + ((i7.d) eVar.b()).h());
                    i7.k.a((io.ktor.http.r) eVar.b(), io.ktor.http.o.INSTANCE.w(), this.$plugin.b());
                    return l0.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        private b() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull g0 plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            scope.n().l(i7.g.Phases.d(), new a(plugin, null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public g0 a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            a aVar = new a(null, 1, 0 == true ? 1 : 0);
            block.invoke(aVar);
            return new g0(aVar.a(), 0 == true ? 1 : 0);
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<g0> getKey() {
            return g0.key;
        }
    }

    public /* synthetic */ g0(String str, kotlin.jvm.internal.k kVar) {
        this(str);
    }

    @NotNull
    public final String b() {
        return this.agent;
    }

    private g0(String str) {
        this.agent = str;
    }
}
