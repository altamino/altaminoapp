package io.ktor.client.plugins;

import kotlinx.coroutines.b2;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class s {

    @NotNull
    public static final a Plugin = new a(null);

    @NotNull
    private static final io.ktor.util.a<s> key = new io.ktor.util.a<>("RequestLifecycle");

    public static final class a implements m<l0, s> {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        /* JADX INFO: renamed from: io.ktor.client.plugins.s$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpRequestLifecycle$Plugin$install$1", f = "HttpRequestLifecycle.kt", l = {38}, m = "invokeSuspend")
        static final class C0403a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ io.ktor.client.a $scope;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0403a(io.ktor.client.a aVar, kotlin.coroutines.d<? super C0403a> dVar) {
                super(3, dVar);
                this.$scope = aVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                C0403a c0403a = new C0403a(this.$scope, dVar);
                c0403a.L$0 = eVar;
                return c0403a.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlinx.coroutines.a0 a0Var;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        a0Var = (kotlinx.coroutines.a0) this.L$0;
                        try {
                            w7.w.b(obj);
                            a0Var.complete();
                            return l0.INSTANCE;
                        } catch (Throwable th) {
                            th = th;
                            try {
                                a0Var.a(th);
                                throw th;
                            } catch (Throwable th2) {
                                a0Var.complete();
                                throw th2;
                            }
                        }
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
                io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                kotlinx.coroutines.a0 a0VarA = y2.a(((i7.d) eVar.b()).f());
                kotlin.coroutines.g.b bVar = this.$scope.getCoroutineContext().get(b2.Key);
                kotlin.jvm.internal.t.g(bVar);
                t.c(a0VarA, (b2) bVar);
                try {
                    ((i7.d) eVar.b()).l(a0VarA);
                    this.L$0 = a0VarA;
                    this.label = 1;
                    if (eVar.c(this) == objE) {
                        return objE;
                    }
                    a0Var = a0VarA;
                    a0Var.complete();
                    return l0.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    a0Var = a0VarA;
                    a0Var.a(th);
                    throw th;
                }
            }
        }

        private a() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull s plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            scope.n().l(i7.g.Phases.a(), new C0403a(scope, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public s a(@NotNull e8.l<? super l0, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            return new s(null);
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<s> getKey() {
            return s.key;
        }
    }

    public /* synthetic */ s(kotlin.jvm.internal.k kVar) {
        this();
    }

    private s() {
    }
}
