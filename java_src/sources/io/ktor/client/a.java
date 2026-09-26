package io.ktor.client;

import e8.l;
import i7.i;
import io.ktor.client.engine.g;
import io.ktor.client.plugins.k;
import io.ktor.client.plugins.n;
import io.ktor.client.plugins.o;
import io.ktor.client.plugins.q;
import io.ktor.client.plugins.s;
import io.ktor.client.plugins.x;
import io.ktor.client.statement.f;
import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements o0, Closeable {
    private static final /* synthetic */ AtomicIntegerFieldUpdater closed$FU = AtomicIntegerFieldUpdater.newUpdater(a.class, "closed");

    @NotNull
    private final io.ktor.util.b attributes;

    @NotNull
    private final a0 clientJob;

    @NotNull
    private volatile /* synthetic */ int closed;

    @NotNull
    private final io.ktor.client.b<g> config;

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @NotNull
    private final io.ktor.client.engine.b engine;

    @NotNull
    private final g engineConfig;
    private boolean manageEngine;

    @NotNull
    private final j7.b monitor;

    @NotNull
    private final io.ktor.client.statement.b receivePipeline;

    @NotNull
    private final i7.g requestPipeline;

    @NotNull
    private final f responsePipeline;

    @NotNull
    private final i sendPipeline;

    @NotNull
    private final io.ktor.client.b<? extends g> userConfig;

    /* JADX INFO: renamed from: io.ktor.client.a$a, reason: collision with other inner class name */
    static final class C0387a extends v implements l<Throwable, l0> {
        C0387a() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            if (th != null) {
                p0.e(a.this.k(), null, 1, null);
            }
        }
    }

    static final class c extends v implements l<a, l0> {
        public static final c INSTANCE = new c();

        c() {
            super(1);
        }

        public final void a(@NotNull a install) {
            t.j(install, "$this$install");
            io.ktor.client.plugins.g.b(install);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(a aVar) {
            a(aVar);
            return l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.HttpClient", f = "HttpClient.kt", l = {191}, m = "execute$ktor_client_core")
    static final class e extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;

        e(kotlin.coroutines.d<? super e> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.a(null, this);
        }
    }

    public a(@NotNull io.ktor.client.engine.b engine, @NotNull io.ktor.client.b<? extends g> userConfig) {
        t.j(engine, "engine");
        t.j(userConfig, "userConfig");
        this.engine = engine;
        this.userConfig = userConfig;
        this.closed = 0;
        a0 a0VarA = f2.a((b2) engine.getCoroutineContext().get(b2.Key));
        this.clientJob = a0VarA;
        this.coroutineContext = engine.getCoroutineContext().plus(a0VarA);
        this.requestPipeline = new i7.g(userConfig.b());
        f fVar = new f(userConfig.b());
        this.responsePipeline = fVar;
        i iVar = new i(userConfig.b());
        this.sendPipeline = iVar;
        this.receivePipeline = new io.ktor.client.statement.b(userConfig.b());
        this.attributes = io.ktor.util.d.a(true);
        this.engineConfig = engine.Z();
        this.monitor = new j7.b();
        io.ktor.client.b<g> bVar = new io.ktor.client.b<>();
        this.config = bVar;
        if (this.manageEngine) {
            a0VarA.U(new C0387a());
        }
        engine.T(this);
        iVar.l(i.Phases.b(), new b(null));
        io.ktor.client.b.j(bVar, s.Plugin, null, 2, null);
        io.ktor.client.b.j(bVar, io.ktor.client.plugins.a.Plugin, null, 2, null);
        if (userConfig.f()) {
            bVar.i("DefaultTransformers", c.INSTANCE);
        }
        io.ktor.client.b.j(bVar, x.Plugin, null, 2, null);
        io.ktor.client.b.j(bVar, k.Companion, null, 2, null);
        if (userConfig.e()) {
            io.ktor.client.b.j(bVar, q.Plugin, null, 2, null);
        }
        bVar.k(userConfig);
        if (userConfig.f()) {
            io.ktor.client.b.j(bVar, o.Plugin, null, 2, null);
        }
        io.ktor.client.plugins.f.c(bVar);
        bVar.g(this);
        fVar.l(f.Phases.b(), new d(null));
    }

    @NotNull
    public final io.ktor.util.b L() {
        return this.attributes;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    @NotNull
    public final io.ktor.client.b<g> h() {
        return this.config;
    }

    @NotNull
    public final io.ktor.client.engine.b k() {
        return this.engine;
    }

    @NotNull
    public final j7.b l() {
        return this.monitor;
    }

    @NotNull
    public final io.ktor.client.statement.b m() {
        return this.receivePipeline;
    }

    @NotNull
    public final i7.g n() {
        return this.requestPipeline;
    }

    @NotNull
    public final f o() {
        return this.responsePipeline;
    }

    @NotNull
    public final i p() {
        return this.sendPipeline;
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.HttpClient$2", f = "HttpClient.kt", l = {144, 146}, m = "invokeSuspend")
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
            b bVar = a.this.new b(dVar);
            bVar.L$0 = eVar;
            bVar.L$1 = obj;
            return bVar.invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object obj2;
            io.ktor.util.pipeline.e eVar;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    obj2 = this.L$1;
                    eVar = (io.ktor.util.pipeline.e) this.L$0;
                    w.b(obj);
                }
                return l0.INSTANCE;
            }
            w.b(obj);
            io.ktor.util.pipeline.e eVar2 = (io.ktor.util.pipeline.e) this.L$0;
            obj2 = this.L$1;
            if (obj2 instanceof io.ktor.client.call.b) {
                io.ktor.client.statement.b bVarM = a.this.m();
                l0 l0Var = l0.INSTANCE;
                io.ktor.client.statement.c cVarF = ((io.ktor.client.call.b) obj2).f();
                this.L$0 = eVar2;
                this.L$1 = obj2;
                this.label = 1;
                Object objD = bVarM.d(l0Var, cVarF, this);
                if (objD == objE) {
                    return objE;
                }
                eVar = eVar2;
                obj = objD;
            } else {
                throw new IllegalStateException(("Error: HttpClientCall expected, but found " + obj2 + '(' + q0.b(obj2.getClass()) + ").").toString());
            }
            ((io.ktor.client.call.b) obj2).k((io.ktor.client.statement.c) obj);
            this.L$0 = null;
            this.L$1 = null;
            this.label = 2;
            if (eVar.e(obj2, this) == objE) {
                return objE;
            }
            return l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.HttpClient$4", f = "HttpClient.kt", l = {177}, m = "invokeSuspend")
    static final class d extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b>, io.ktor.client.statement.d, kotlin.coroutines.d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> eVar, @NotNull io.ktor.client.statement.d dVar, @Nullable kotlin.coroutines.d<? super l0> dVar2) {
            d dVar3 = a.this.new d(dVar2);
            dVar3.L$0 = eVar;
            return dVar3.invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            io.ktor.util.pipeline.e eVar;
            Throwable th;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    eVar = (io.ktor.util.pipeline.e) this.L$0;
                    try {
                        w.b(obj);
                        return l0.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        a.this.l().a(io.ktor.client.utils.b.d(), new io.ktor.client.utils.f(((io.ktor.client.call.b) eVar.b()).f(), th));
                        throw th;
                    }
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj);
            io.ktor.util.pipeline.e eVar2 = (io.ktor.util.pipeline.e) this.L$0;
            try {
                this.L$0 = eVar2;
                this.label = 1;
                if (eVar2.c(this) == objE) {
                    return objE;
                }
                return l0.INSTANCE;
            } catch (Throwable th3) {
                eVar = eVar2;
                th = th3;
                a.this.l().a(io.ktor.client.utils.b.d(), new io.ktor.client.utils.f(((io.ktor.client.call.b) eVar.b()).f(), th));
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object a(@NotNull i7.d dVar, @NotNull kotlin.coroutines.d<? super io.ktor.client.call.b> dVar2) {
        e eVar;
        if (dVar2 instanceof e) {
            eVar = (e) dVar2;
            int i10 = eVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                eVar.label = i10 - Integer.MIN_VALUE;
            } else {
                eVar = new e(dVar2);
            }
        } else {
            eVar = new e(dVar2);
        }
        Object objD = eVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = eVar.label;
        if (i11 == 0) {
            w.b(objD);
            this.monitor.a(io.ktor.client.utils.b.a(), dVar);
            i7.g gVar = this.requestPipeline;
            Object objC = dVar.c();
            eVar.label = 1;
            objD = gVar.d(dVar, objC, eVar);
            if (objD == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(objD);
        }
        t.h(objD, "null cannot be cast to non-null type io.ktor.client.call.HttpClientCall");
        return (io.ktor.client.call.b) objD;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (closed$FU.compareAndSet(this, 0, 1)) {
            io.ktor.util.b bVar = (io.ktor.util.b) this.attributes.f(n.a());
            Iterator<T> it = bVar.b().iterator();
            while (it.hasNext()) {
                io.ktor.util.a aVar = (io.ktor.util.a) it.next();
                t.h(aVar, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>");
                Object objF = bVar.f(aVar);
                if (objF instanceof Closeable) {
                    ((Closeable) objF).close();
                }
            }
            this.clientJob.complete();
            if (this.manageEngine) {
                this.engine.close();
            }
        }
    }

    @NotNull
    public String toString() {
        return "HttpClient[" + this.engine + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public /* synthetic */ a(io.ktor.client.engine.b bVar, io.ktor.client.b bVar2, int i10, kotlin.jvm.internal.k kVar) {
        this(bVar, (i10 & 2) != 0 ? new io.ktor.client.b() : bVar2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull io.ktor.client.engine.b engine, @NotNull io.ktor.client.b<? extends g> userConfig, boolean z6) {
        this(engine, userConfig);
        t.j(engine, "engine");
        t.j(userConfig, "userConfig");
        this.manageEngine = z6;
    }
}
