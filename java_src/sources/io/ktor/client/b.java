package io.ktor.client;

import e8.l;
import io.ktor.client.engine.g;
import io.ktor.client.plugins.m;
import io.ktor.client.plugins.n;
import io.ktor.util.r;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class b<T extends g> {
    private boolean expectSuccess;

    @NotNull
    private final Map<io.ktor.util.a<?>, l<io.ktor.client.a, l0>> plugins = new LinkedHashMap();

    @NotNull
    private final Map<io.ktor.util.a<?>, l<Object, l0>> pluginConfigurations = new LinkedHashMap();

    @NotNull
    private final Map<String, l<io.ktor.client.a, l0>> customInterceptors = new LinkedHashMap();

    @NotNull
    private l<? super T, l0> engineConfig = a.INSTANCE;
    private boolean followRedirects = true;
    private boolean useDefaultTransformers = true;
    private boolean developmentMode = r.INSTANCE.b();

    static final class a extends v implements l<T, l0> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        public final void a(@NotNull T t5) {
            t.j(t5, "$this$null");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
            a((g) obj);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.b$b, reason: collision with other inner class name */
    static final class C0388b extends v implements l {
        public static final C0388b INSTANCE = new C0388b();

        C0388b() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m1640invoke(@NotNull Object obj) {
            t.j(obj, "$this$null");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m1640invoke(obj);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Unknown type variable: TBuilder in type: e8.l<TBuilder, w7.l0> */
    static final class c extends v implements l<Object, l0> {
        final /* synthetic */ l<TBuilder, l0> $configure;
        final /* synthetic */ l<Object, l0> $previousConfigBlock;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unknown type variable: TBuilder in type: e8.l<? super TBuilder, w7.l0> */
        c(l<Object, l0> lVar, l<? super TBuilder, l0> lVar2) {
            super(1);
            this.$previousConfigBlock = lVar;
            this.$configure = lVar2;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
            invoke2(obj);
            return l0.INSTANCE;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull Object obj) {
            t.j(obj, "$this$null");
            l<Object, l0> lVar = this.$previousConfigBlock;
            if (lVar != null) {
                lVar.invoke(obj);
            }
            this.$configure.invoke((TBuilder) obj);
        }
    }

    /* JADX WARN: Unknown type variable: TBuilder in type: io.ktor.client.plugins.m<TBuilder, TPlugin> */
    /* JADX WARN: Unknown type variable: TPlugin in type: io.ktor.client.plugins.m<TBuilder, TPlugin> */
    static final class d extends v implements l<io.ktor.client.a, l0> {
        final /* synthetic */ m<TBuilder, TPlugin> $plugin;

        static final class a extends v implements e8.a<io.ktor.util.b> {
            public static final a INSTANCE = new a();

            a() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final io.ktor.util.b invoke() {
                return io.ktor.util.d.a(true);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unknown type variable: TBuilder in type: io.ktor.client.plugins.m<? extends TBuilder, TPlugin> */
        /* JADX WARN: Unknown type variable: TPlugin in type: io.ktor.client.plugins.m<? extends TBuilder, TPlugin> */
        d(m<? extends TBuilder, TPlugin> mVar) {
            super(1);
            this.$plugin = mVar;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final void a(@NotNull io.ktor.client.a scope) {
            t.j(scope, "scope");
            io.ktor.util.b bVar = (io.ktor.util.b) scope.L().g(n.a(), a.INSTANCE);
            Object obj = ((b) scope.h()).pluginConfigurations.get(this.$plugin.getKey());
            t.g(obj);
            Object objA = this.$plugin.a((l<? super TBuilder, l0>) ((l) obj));
            this.$plugin.b((TPlugin) objA, scope);
            bVar.a(this.$plugin.getKey(), objA);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(io.ktor.client.a aVar) {
            a(aVar);
            return l0.INSTANCE;
        }
    }

    public final boolean b() {
        return this.developmentMode;
    }

    @NotNull
    public final l<T, l0> c() {
        return this.engineConfig;
    }

    public final boolean d() {
        return this.expectSuccess;
    }

    public final boolean e() {
        return this.followRedirects;
    }

    public final boolean f() {
        return this.useDefaultTransformers;
    }

    public static /* synthetic */ void j(b bVar, m mVar, l lVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = C0388b.INSTANCE;
        }
        bVar.h(mVar, lVar);
    }

    public final void g(@NotNull io.ktor.client.a client) {
        t.j(client, "client");
        Iterator<T> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            ((l) it.next()).invoke(client);
        }
        Iterator<T> it2 = this.customInterceptors.values().iterator();
        while (it2.hasNext()) {
            ((l) it2.next()).invoke(client);
        }
    }

    public final <TBuilder, TPlugin> void h(@NotNull m<? extends TBuilder, TPlugin> plugin, @NotNull l<? super TBuilder, l0> configure) {
        t.j(plugin, "plugin");
        t.j(configure, "configure");
        this.pluginConfigurations.put(plugin.getKey(), new c(this.pluginConfigurations.get(plugin.getKey()), configure));
        if (this.plugins.containsKey(plugin.getKey())) {
            return;
        }
        this.plugins.put(plugin.getKey(), new d(plugin));
    }

    public final void i(@NotNull String key, @NotNull l<? super io.ktor.client.a, l0> block) {
        t.j(key, "key");
        t.j(block, "block");
        this.customInterceptors.put(key, block);
    }

    public final void k(@NotNull b<? extends T> other) {
        t.j(other, "other");
        this.followRedirects = other.followRedirects;
        this.useDefaultTransformers = other.useDefaultTransformers;
        this.expectSuccess = other.expectSuccess;
        this.plugins.putAll(other.plugins);
        this.pluginConfigurations.putAll(other.pluginConfigurations);
        this.customInterceptors.putAll(other.customInterceptors);
    }
}
