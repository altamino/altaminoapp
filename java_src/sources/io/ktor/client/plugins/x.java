package io.ktor.client.plugins;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.m0;
import kotlin.jvm.internal.q0;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    @NotNull
    public static final d Plugin = new d(null);

    @NotNull
    private static final io.ktor.util.a<x> key = new io.ktor.util.a<>("HttpSend");

    @NotNull
    private final List<e8.q<e0, i7.d, kotlin.coroutines.d<? super io.ktor.client.call.b>, Object>> interceptors;
    private final int maxSendCount;

    public static final class a {
        private int maxSendCount = 20;

        public final int a() {
            return this.maxSendCount;
        }
    }

    private static final class b implements e0 {

        @NotNull
        private final io.ktor.client.a client;

        @Nullable
        private io.ktor.client.call.b currentCall;
        private final int maxSendCount;
        private int sentCount;

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpSend$DefaultSender", f = "HttpSend.kt", l = {138}, m = "execute")
        static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
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
                return b.this.a(null, this);
            }
        }

        public b(int i10, @NotNull io.ktor.client.a client) {
            kotlin.jvm.internal.t.j(client, "client");
            this.maxSendCount = i10;
            this.client = client;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // io.ktor.client.plugins.e0
        @Nullable
        public Object a(@NotNull i7.d dVar, @NotNull kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
            a aVar;
            b bVar;
            if (dVar2 instanceof a) {
                aVar = (a) dVar2;
                int i10 = aVar.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    aVar.label = i10 - Integer.MIN_VALUE;
                } else {
                    aVar = new a(dVar2);
                }
            } else {
                aVar = new a(dVar2);
            }
            Object objD = aVar.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = aVar.label;
            if (i11 == 0) {
                w7.w.b(objD);
                io.ktor.client.call.b bVar2 = this.currentCall;
                if (bVar2 != null) {
                    p0.e(bVar2, null, 1, null);
                }
                int i12 = this.sentCount;
                if (i12 >= this.maxSendCount) {
                    throw new d0("Max send count " + this.maxSendCount + " exceeded. Consider increasing the property maxSendCount if more is required.");
                }
                this.sentCount = i12 + 1;
                i7.i iVarP = this.client.p();
                Object objC = dVar.c();
                aVar.L$0 = this;
                aVar.label = 1;
                objD = iVarP.d(dVar, objC, aVar);
                if (objD == objE) {
                    return objE;
                }
                bVar = this;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                bVar = (b) aVar.L$0;
                w7.w.b(objD);
            }
            io.ktor.client.call.b bVar3 = objD instanceof io.ktor.client.call.b ? (io.ktor.client.call.b) objD : null;
            if (bVar3 != null) {
                bVar.currentCall = bVar3;
                return bVar3;
            }
            throw new IllegalStateException(("Failed to execute send pipeline. Expected [HttpClientCall], but received " + objD).toString());
        }
    }

    private static final class c implements e0 {

        @NotNull
        private final e8.q<e0, i7.d, kotlin.coroutines.d<? super io.ktor.client.call.b>, Object> interceptor;

        @NotNull
        private final e0 nextSender;

        /* JADX WARN: Multi-variable type inference failed */
        public c(@NotNull e8.q<? super e0, ? super i7.d, ? super kotlin.coroutines.d<? super io.ktor.client.call.b>, ? extends Object> interceptor, @NotNull e0 nextSender) {
            kotlin.jvm.internal.t.j(interceptor, "interceptor");
            kotlin.jvm.internal.t.j(nextSender, "nextSender");
            this.interceptor = interceptor;
            this.nextSender = nextSender;
        }

        @Override // io.ktor.client.plugins.e0
        @Nullable
        public Object a(@NotNull i7.d dVar, @NotNull kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
            return this.interceptor.invoke(this.nextSender, dVar, dVar2);
        }
    }

    public static final class d implements m<a, x> {
        public /* synthetic */ d(kotlin.jvm.internal.k kVar) {
            this();
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpSend$Plugin$install$1", f = "HttpSend.kt", l = {104, 105}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ x $plugin;
            final /* synthetic */ io.ktor.client.a $scope;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(x xVar, io.ktor.client.a aVar, kotlin.coroutines.d<? super a> dVar) {
                super(3, dVar);
                this.$plugin = xVar;
                this.$scope = aVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                a aVar = new a(this.$plugin, this.$scope, dVar);
                aVar.L$0 = eVar;
                aVar.L$1 = obj;
                return aVar.invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Type inference failed for: r11v15, types: [T, io.ktor.client.plugins.x$b] */
            /* JADX WARN: Type inference failed for: r8v1, types: [T, io.ktor.client.plugins.x$c] */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                io.ktor.util.pipeline.e eVar;
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
                        eVar = (io.ktor.util.pipeline.e) this.L$0;
                        w7.w.b(obj);
                    }
                    return l0.INSTANCE;
                }
                w7.w.b(obj);
                eVar = (io.ktor.util.pipeline.e) this.L$0;
                Object obj2 = this.L$1;
                if (obj2 instanceof k7.b) {
                    i7.d dVar = (i7.d) eVar.b();
                    if (obj2 == null) {
                        dVar.i(k7.a.INSTANCE);
                        KType kTypeK = q0.k(k7.b.class);
                        dVar.j(o7.b.b(TypesJVMKt.getJavaType(kTypeK), q0.b(k7.b.class), kTypeK));
                    } else if (obj2 instanceof k7.b) {
                        dVar.i(obj2);
                        dVar.j(null);
                    } else {
                        dVar.i(obj2);
                        KType kTypeK2 = q0.k(k7.b.class);
                        dVar.j(o7.b.b(TypesJVMKt.getJavaType(kTypeK2), q0.b(k7.b.class), kTypeK2));
                    }
                    ?? bVar = new b(this.$plugin.maxSendCount, this.$scope);
                    kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
                    p0Var.element = bVar;
                    j8.g gVarR = j8.o.r(kotlin.collections.v.o(this.$plugin.interceptors), 0);
                    x xVar = this.$plugin;
                    Iterator<Integer> it = gVarR.iterator();
                    while (it.hasNext()) {
                        p0Var.element = new c((e8.q) xVar.interceptors.get(((m0) it).nextInt()), (e0) p0Var.element);
                    }
                    e0 e0Var = (e0) p0Var.element;
                    i7.d dVar2 = (i7.d) eVar.b();
                    this.L$0 = eVar;
                    this.label = 1;
                    obj = e0Var.a(dVar2, this);
                    if (obj == objE) {
                        return objE;
                    }
                } else {
                    throw new IllegalStateException(kotlin.text.m.h("\n|Fail to prepare request body for sending. \n|The body type is: " + q0.b(obj2.getClass()) + ", with Content-Type: " + io.ktor.http.s.d((io.ktor.http.r) eVar.b()) + ".\n|\n|If you expect serialized body, please check that you have installed the corresponding plugin(like `ContentNegotiation`) and set `Content-Type` header.", null, 1, null).toString());
                }
                this.L$0 = null;
                this.label = 2;
                if (eVar.e((io.ktor.client.call.b) obj, this) == objE) {
                    return objE;
                }
                return l0.INSTANCE;
            }
        }

        private d() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull x plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            scope.n().l(i7.g.Phases.c(), new a(plugin, scope, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public x a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new x(aVar.a(), null);
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<x> getKey() {
            return x.key;
        }
    }

    public /* synthetic */ x(int i10, kotlin.jvm.internal.k kVar) {
        this(i10);
    }

    private x(int i10) {
        this.maxSendCount = i10;
        this.interceptors = new ArrayList();
    }

    public final void d(@NotNull e8.q<? super e0, ? super i7.d, ? super kotlin.coroutines.d<? super io.ktor.client.call.b>, ? extends Object> block) {
        kotlin.jvm.internal.t.j(block, "block");
        this.interceptors.add(block);
    }
}
