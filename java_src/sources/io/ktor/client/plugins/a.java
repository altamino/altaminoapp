package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    @NotNull
    public static final C0395a Plugin = new C0395a(null);

    @NotNull
    private static final io.ktor.util.a<a> key = new io.ktor.util.a<>("BodyProgress");

    /* JADX INFO: renamed from: io.ktor.client.plugins.a$a, reason: collision with other inner class name */
    public static final class C0395a implements m<l0, a> {
        public /* synthetic */ C0395a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private C0395a() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull a plugin, @NotNull io.ktor.client.a scope) throws io.ktor.util.pipeline.b {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            plugin.c(scope);
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public a a(@NotNull e8.l<? super l0, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            return new a();
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<a> getKey() {
            return a.key;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.BodyProgress$handle$1", f = "BodyProgress.kt", l = {38}, m = "invokeSuspend")
    static final class b extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            b bVar = new b(dVar);
            bVar.L$0 = eVar;
            bVar.L$1 = obj;
            return bVar.invokeSuspend(l0.INSTANCE);
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
                io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                Object obj2 = this.L$1;
                e8.q qVar = (e8.q) ((i7.d) eVar.b()).b().e(io.ktor.client.plugins.b.UploadProgressListenerAttributeKey);
                if (qVar == null) {
                    return l0.INSTANCE;
                }
                kotlin.jvm.internal.t.h(obj2, "null cannot be cast to non-null type io.ktor.http.content.OutgoingContent");
                io.ktor.client.content.a aVar = new io.ktor.client.content.a((k7.b) obj2, ((i7.d) eVar.b()).f(), qVar);
                this.L$0 = null;
                this.label = 1;
                if (eVar.e(aVar, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.BodyProgress$handle$2", f = "BodyProgress.kt", l = {45}, m = "invokeSuspend")
    static final class c extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<io.ktor.client.statement.c, l0>, io.ktor.client.statement.c, kotlin.coroutines.d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.util.pipeline.e<io.ktor.client.statement.c, l0> eVar, @NotNull io.ktor.client.statement.c cVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            c cVar2 = new c(dVar);
            cVar2.L$0 = eVar;
            cVar2.L$1 = cVar;
            return cVar2.invokeSuspend(l0.INSTANCE);
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
                io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                io.ktor.client.statement.c cVar = (io.ktor.client.statement.c) this.L$1;
                e8.q qVar = (e8.q) cVar.y0().e().L().e(io.ktor.client.plugins.b.DownloadProgressListenerAttributeKey);
                if (qVar == null) {
                    return l0.INSTANCE;
                }
                io.ktor.client.statement.c cVarC = io.ktor.client.plugins.b.c(cVar, qVar);
                this.L$0 = null;
                this.label = 1;
                if (eVar.e(cVarC, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(io.ktor.client.a aVar) throws io.ktor.util.pipeline.b {
        io.ktor.util.pipeline.h hVar = new io.ktor.util.pipeline.h("ObservableContent");
        aVar.n().j(i7.g.Phases.b(), hVar);
        aVar.n().l(hVar, new b(null));
        aVar.m().l(io.ktor.client.statement.b.Phases.a(), new c(null));
    }
}
