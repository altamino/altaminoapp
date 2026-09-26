package io.ktor.client.plugins;

import io.ktor.http.n0;
import io.ktor.http.p0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    @NotNull
    public static final b Plugin = new b(null);

    @NotNull
    private static final io.ktor.util.a<d> key = new io.ktor.util.a<>("DefaultRequest");

    @NotNull
    private final e8.l<a, l0> block;

    public static final class a implements io.ktor.http.r {

        @NotNull
        private final io.ktor.http.l headers = new io.ktor.http.l(0, 1, null);

        @NotNull
        private final io.ktor.http.f0 url = new io.ktor.http.f0(null, null, 0, null, null, null, null, null, false, 511, null);

        @NotNull
        private final io.ktor.util.b attributes = io.ktor.util.d.a(true);

        @NotNull
        public final io.ktor.util.b a() {
            return this.attributes;
        }

        @NotNull
        public final io.ktor.http.f0 b() {
            return this.url;
        }

        @Override // io.ktor.http.r
        @NotNull
        public io.ktor.http.l getHeaders() {
            return this.headers;
        }
    }

    public static final class b implements m<a, d> {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.DefaultRequest$Plugin$install$1", f = "DefaultRequest.kt", l = {}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ d $plugin;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(d dVar, kotlin.coroutines.d<? super a> dVar2) {
                super(3, dVar2);
                this.$plugin = dVar;
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
                    String string = ((i7.d) eVar.b()).h().toString();
                    a aVar = new a();
                    d dVar = this.$plugin;
                    io.ktor.util.x.c(aVar.getHeaders(), ((i7.d) eVar.b()).getHeaders());
                    dVar.block.invoke(aVar);
                    d.Plugin.f(aVar.b().b(), ((i7.d) eVar.b()).h());
                    for (io.ktor.util.a<?> aVar2 : aVar.a().b()) {
                        if (!((i7.d) eVar.b()).b().d(aVar2)) {
                            io.ktor.util.b bVarB = ((i7.d) eVar.b()).b();
                            kotlin.jvm.internal.t.h(aVar2, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>");
                            bVarB.a(aVar2, aVar.a().f(aVar2));
                        }
                    }
                    ((i7.d) eVar.b()).getHeaders().clear();
                    ((i7.d) eVar.b()).getHeaders().e(aVar.getHeaders().n());
                    e.LOGGER.a("Applied DefaultRequest to " + string + ". New url: " + ((i7.d) eVar.b()).h());
                    return l0.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        private b() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull d plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            scope.n().l(i7.g.Phases.a(), new a(plugin, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public d a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            return new d(block, null);
        }

        private final List<String> d(List<String> list, List<String> list2) {
            if (list2.isEmpty()) {
                return list;
            }
            if (!list.isEmpty() && ((CharSequence) kotlin.collections.d0.j0(list2)).length() != 0) {
                List listD = kotlin.collections.u.d((list.size() + list2.size()) - 1);
                int size = list.size() - 1;
                for (int i10 = 0; i10 < size; i10++) {
                    listD.add(list.get(i10));
                }
                listD.addAll(list2);
                return kotlin.collections.u.a(listD);
            }
            return list2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void f(p0 p0Var, io.ktor.http.f0 f0Var) {
            if (kotlin.jvm.internal.t.e(f0Var.o(), io.ktor.http.l0.Companion.c())) {
                f0Var.y(p0Var.k());
            }
            if (f0Var.j().length() > 0) {
                return;
            }
            io.ktor.http.f0 f0VarA = n0.a(p0Var);
            f0VarA.y(f0Var.o());
            if (f0Var.n() != 0) {
                f0VarA.x(f0Var.n());
            }
            f0VarA.u(d.Plugin.d(f0VarA.g(), f0Var.g()));
            if (f0Var.d().length() > 0) {
                f0VarA.r(f0Var.d());
            }
            io.ktor.http.a0 a0VarB = io.ktor.http.d0.b(0, 1, null);
            io.ktor.util.x.c(a0VarB, f0VarA.e());
            f0VarA.s(f0Var.e());
            Iterator<T> it = a0VarB.a().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (!f0VarA.e().contains(str)) {
                    f0VarA.e().d(str, list);
                }
            }
            n0.g(f0Var, f0VarA);
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<d> getKey() {
            return d.key;
        }
    }

    public /* synthetic */ d(e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d(e8.l<? super a, l0> lVar) {
        this.block = lVar;
    }
}
