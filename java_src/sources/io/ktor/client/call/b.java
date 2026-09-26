package io.ktor.client.call;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public class b implements o0 {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final io.ktor.util.a<Object> CustomResponse = new io.ktor.util.a<>("CustomResponse");
    private static final /* synthetic */ AtomicIntegerFieldUpdater received$FU = AtomicIntegerFieldUpdater.newUpdater(b.class, "received");
    private final boolean allowDoubleReceive;

    @NotNull
    private final io.ktor.client.a client;

    @NotNull
    private volatile /* synthetic */ int received;
    protected i7.c request;
    protected io.ktor.client.statement.c response;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.call.b$b, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.call.HttpClientCall", f = "HttpClientCall.kt", l = {86, 89}, m = "bodyNullable")
    static final class C0389b extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C0389b(kotlin.coroutines.d<? super C0389b> dVar) {
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

    public b(@NotNull io.ktor.client.a client) {
        t.j(client, "client");
        this.client = client;
        this.received = 0;
    }

    protected boolean b() {
        return this.allowDoubleReceive;
    }

    @NotNull
    public final io.ktor.client.a c() {
        return this.client;
    }

    @Nullable
    protected Object g(@NotNull kotlin.coroutines.d<? super io.ktor.utils.io.g> dVar) {
        return h(this, dVar);
    }

    protected final void i(@NotNull i7.c cVar) {
        t.j(cVar, "<set-?>");
        this.request = cVar;
    }

    protected final void j(@NotNull io.ktor.client.statement.c cVar) {
        t.j(cVar, "<set-?>");
        this.response = cVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(@NotNull io.ktor.client.a client, @NotNull i7.e requestData, @NotNull i7.h responseData) {
        this(client);
        t.j(client, "client");
        t.j(requestData, "requestData");
        t.j(responseData, "responseData");
        i(new i7.b(this, requestData));
        j(new io.ktor.client.statement.a(this, responseData));
        if (responseData.a() instanceof io.ktor.utils.io.g) {
            return;
        }
        L().a(CustomResponse, responseData.a());
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object a(@NotNull o7.a aVar, @NotNull kotlin.coroutines.d<Object> dVar) {
        C0389b c0389b;
        b bVar;
        b bVar2;
        Object objC;
        if (dVar instanceof C0389b) {
            c0389b = (C0389b) dVar;
            int i10 = c0389b.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0389b.label = i10 - Integer.MIN_VALUE;
            } else {
                c0389b = new C0389b(dVar);
            }
        } else {
            c0389b = new C0389b(dVar);
        }
        Object objE = c0389b.result;
        Object objE2 = kotlin.coroutines.intrinsics.d.e();
        int i11 = c0389b.label;
        if (i11 == 0) {
            w.b(objE);
            try {
                if (o7.b.a(f(), aVar.a())) {
                    io.ktor.client.statement.c cVarF = f();
                    io.ktor.client.statement.e.d(f());
                    return cVarF;
                }
                if (!b() && !received$FU.compareAndSet(this, 0, 1)) {
                    throw new io.ktor.client.call.a(this);
                }
                objE = L().e(CustomResponse);
                if (objE == null) {
                    c0389b.L$0 = this;
                    c0389b.L$1 = aVar;
                    c0389b.label = 1;
                    objE = g(c0389b);
                    if (objE == objE2) {
                        return objE2;
                    }
                }
                bVar2 = this;
            } catch (Throwable th) {
                th = th;
                bVar = this;
                p0.c(bVar.f(), "Receive failed", th);
                throw th;
            }
        } else {
            if (i11 != 1) {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar = (o7.a) c0389b.L$1;
                bVar = (b) c0389b.L$0;
                try {
                    w.b(objE);
                    objC = ((io.ktor.client.statement.d) objE).c();
                    if (!t.e(objC, k7.a.INSTANCE)) {
                        objC = null;
                    }
                    if (objC != null && !o7.b.a(objC, aVar.a())) {
                        throw new c(bVar.f(), q0.b(objC.getClass()), aVar.a());
                    }
                    io.ktor.client.statement.e.d(bVar.f());
                    return objC;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        p0.c(bVar.f(), "Receive failed", th);
                        throw th;
                    } catch (Throwable th3) {
                        io.ktor.client.statement.e.d(bVar.f());
                        throw th3;
                    }
                }
            }
            aVar = (o7.a) c0389b.L$1;
            bVar2 = (b) c0389b.L$0;
            try {
                w.b(objE);
            } catch (Throwable th4) {
                th = th4;
                bVar = bVar2;
                p0.c(bVar.f(), "Receive failed", th);
                throw th;
            }
        }
        io.ktor.client.statement.d dVar2 = new io.ktor.client.statement.d(aVar, objE);
        io.ktor.client.statement.f fVarO = bVar2.client.o();
        c0389b.L$0 = bVar2;
        c0389b.L$1 = aVar;
        c0389b.label = 2;
        objE = fVarO.d(bVar2, dVar2, c0389b);
        if (objE == objE2) {
            return objE2;
        }
        bVar = bVar2;
        objC = ((io.ktor.client.statement.d) objE).c();
        if (!t.e(objC, k7.a.INSTANCE)) {
            objC = null;
        }
        if (objC != null) {
            throw new c(bVar.f(), q0.b(objC.getClass()), aVar.a());
        }
        io.ktor.client.statement.e.d(bVar.f());
        return objC;
    }

    @NotNull
    public final i7.c e() {
        i7.c cVar = this.request;
        if (cVar != null) {
            return cVar;
        }
        t.B("request");
        return null;
    }

    @NotNull
    public final io.ktor.client.statement.c f() {
        io.ktor.client.statement.c cVar = this.response;
        if (cVar != null) {
            return cVar;
        }
        t.B("response");
        return null;
    }

    public final void k(@NotNull io.ktor.client.statement.c response) {
        t.j(response, "response");
        j(response);
    }

    @NotNull
    public String toString() {
        return "HttpClientCall[" + e().getUrl() + ", " + f().e() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    static /* synthetic */ Object h(b bVar, kotlin.coroutines.d<? super io.ktor.utils.io.g> dVar) {
        return bVar.f().a();
    }

    @NotNull
    public final io.ktor.util.b L() {
        return e().L();
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return f().getCoroutineContext();
    }
}
