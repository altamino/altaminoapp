package io.ktor.client.statement;

import e8.p;
import io.ktor.client.plugins.m;
import io.ktor.client.plugins.n;
import io.ktor.utils.io.i;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes11.dex */
public final class g {

    @NotNull
    private final i7.d builder;

    @NotNull
    private final io.ktor.client.a client;

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {126}, m = "cleanup")
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
            return g.this.b(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {47, 50, 52, 52}, m = "execute")
    static final class b<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return g.this.c(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {108}, m = "executeUnsafe")
    static final class d extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return g.this.e(this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.statement.HttpStatement$execute$4", f = "HttpStatement.kt", l = {63}, m = "invokeSuspend")
    static final class c extends l implements p<io.ktor.client.statement.c, kotlin.coroutines.d<? super io.ktor.client.statement.c>, Object> {
        /* synthetic */ Object L$0;
        int label;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            c cVar = new c(dVar);
            cVar.L$0 = obj;
            return cVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.client.statement.c cVar, @Nullable kotlin.coroutines.d<? super io.ktor.client.statement.c> dVar) {
            return ((c) create(cVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                io.ktor.client.call.b bVarY0 = ((io.ktor.client.statement.c) this.L$0).y0();
                this.label = 1;
                obj = io.ktor.client.call.d.a(bVarY0, this);
                if (obj == objE) {
                    return objE;
                }
            }
            return ((io.ktor.client.call.b) obj).f();
        }
    }

    public g(@NotNull i7.d builder, @NotNull io.ktor.client.a client) {
        t.j(builder, "builder");
        t.j(client, "client");
        this.builder = builder;
        this.client = client;
        a();
    }

    private final void a() {
        Set setKeySet;
        Map map = (Map) this.builder.b().e(io.ktor.client.engine.f.a());
        if (map == null || (setKeySet = map.keySet()) == null) {
            return;
        }
        ArrayList<m> arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (obj instanceof m) {
                arrayList.add(obj);
            }
        }
        for (m mVar : arrayList) {
            if (n.c(this.client, mVar) == null) {
                throw new IllegalArgumentException(("Consider installing " + mVar + " plugin because the request requires it to be installed").toString());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object b(@NotNull io.ktor.client.statement.c cVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        a aVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar.label;
        if (i11 == 0) {
            w.b(obj);
            kotlin.coroutines.g.b bVar = cVar.getCoroutineContext().get(b2.Key);
            t.g(bVar);
            a0 a0Var = (a0) bVar;
            a0Var.complete();
            try {
                i.a(cVar.a());
            } catch (Throwable unused) {
            }
            aVar.L$0 = a0Var;
            aVar.label = 1;
            if (a0Var.t0(aVar) == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj);
        }
        return l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0095 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x0096  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final <T> Object c(@NotNull p<? super io.ktor.client.statement.c, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) throws Throwable {
        b bVar;
        g gVar;
        io.ktor.client.statement.c cVar;
        io.ktor.client.statement.c cVar2;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.label = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object objE = bVar.result;
        Object objE2 = kotlin.coroutines.intrinsics.d.e();
        int i11 = bVar.label;
        try {
            try {
                if (i11 == 0) {
                    w.b(objE);
                    bVar.L$0 = this;
                    bVar.L$1 = pVar;
                    bVar.label = 1;
                    objE = e(bVar);
                    if (objE == objE2) {
                        return objE2;
                    }
                    gVar = this;
                } else {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            if (i11 == 3) {
                                Object obj = bVar.L$0;
                                w.b(objE);
                                return obj;
                            }
                            if (i11 != 4) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            th = (Throwable) bVar.L$0;
                            w.b(objE);
                            throw th;
                        }
                        cVar2 = (io.ktor.client.statement.c) bVar.L$1;
                        gVar = (g) bVar.L$0;
                        try {
                            w.b(objE);
                            bVar.L$0 = objE;
                            bVar.L$1 = null;
                            bVar.label = 3;
                            if (gVar.b(cVar2, bVar) == objE2) {
                                return objE2;
                            }
                            return objE;
                        } catch (Throwable th) {
                            cVar = cVar2;
                            th = th;
                            bVar.L$0 = th;
                            bVar.L$1 = null;
                            bVar.label = 4;
                            if (gVar.b(cVar, bVar) == objE2) {
                                return objE2;
                            }
                            throw th;
                        }
                    }
                    pVar = (p) bVar.L$1;
                    gVar = (g) bVar.L$0;
                    w.b(objE);
                }
                bVar.L$0 = gVar;
                bVar.L$1 = cVar;
                bVar.label = 2;
                Object objInvoke = pVar.invoke(cVar, bVar);
                if (objInvoke == objE2) {
                    return objE2;
                }
                objE = objInvoke;
                cVar2 = cVar;
                bVar.L$0 = objE;
                bVar.L$1 = null;
                bVar.label = 3;
                if (gVar.b(cVar2, bVar) == objE2) {
                    return objE2;
                }
                return objE;
            } catch (Throwable th2) {
                th = th2;
                bVar.L$0 = th;
                bVar.L$1 = null;
                bVar.label = 4;
                if (gVar.b(cVar, bVar) == objE2) {
                    return objE2;
                }
                throw th;
            }
            cVar = (io.ktor.client.statement.c) objE;
        } catch (CancellationException e) {
            throw io.ktor.client.utils.d.a(e);
        }
    }

    @Nullable
    public final Object d(@NotNull kotlin.coroutines.d<? super io.ktor.client.statement.c> dVar) {
        return c(new c(null), dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object e(@NotNull kotlin.coroutines.d<? super io.ktor.client.statement.c> dVar) throws Throwable {
        d dVar2;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object objA = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar2.label;
        try {
            if (i11 == 0) {
                w.b(objA);
                i7.d dVarO = new i7.d().o(this.builder);
                io.ktor.client.a aVar = this.client;
                dVar2.label = 1;
                objA = aVar.a(dVarO, dVar2);
                if (objA == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(objA);
            }
            return ((io.ktor.client.call.b) objA).f();
        } catch (CancellationException e) {
            throw io.ktor.client.utils.d.a(e);
        }
    }

    @NotNull
    public String toString() {
        return "HttpStatement[" + this.builder.h() + kotlinx.serialization.json.internal.b.END_LIST;
    }
}
