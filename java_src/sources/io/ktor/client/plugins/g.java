package io.ktor.client.plugins;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.q0;
import kotlin.reflect.KClass;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.defaultTransformers");

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2", f = "DefaultTransform.kt", l = {68, 72, 72, 78, 78, 82, 90, 116, 121}, m = "invokeSuspend")
    static final class b extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b>, io.ktor.client.statement.d, kotlin.coroutines.d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX INFO: renamed from: io.ktor.client.plugins.g$b$b, reason: collision with other inner class name */
        static final class C0398b extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
            final /* synthetic */ kotlinx.coroutines.a0 $responseJobHolder;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0398b(kotlinx.coroutines.a0 a0Var) {
                super(1);
                this.$responseJobHolder = a0Var;
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                invoke2(th);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                this.$responseJobHolder.complete();
            }
        }

        b(kotlin.coroutines.d<? super b> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> eVar, @NotNull io.ktor.client.statement.d dVar, @Nullable kotlin.coroutines.d<? super l0> dVar2) {
            b bVar = new b(dVar2);
            bVar.L$0 = eVar;
            bVar.L$1 = dVar;
            return bVar.invokeSuspend(l0.INSTANCE);
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2$result$channel$1", f = "DefaultTransform.kt", l = {100}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<io.ktor.utils.io.w, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ Object $body;
            final /* synthetic */ io.ktor.client.statement.c $response;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, io.ktor.client.statement.c cVar, kotlin.coroutines.d<? super a> dVar) {
                super(2, dVar);
                this.$body = obj;
                this.$response = cVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                a aVar = new a(this.$body, this.$response, dVar);
                aVar.L$0 = obj;
                return aVar;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.utils.io.w wVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((a) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                try {
                    if (i10 != 0) {
                        try {
                            if (i10 == 1) {
                                w7.w.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } catch (Throwable th) {
                            io.ktor.client.statement.e.d(this.$response);
                            throw th;
                        }
                    } else {
                        w7.w.b(obj);
                        io.ktor.utils.io.w wVar = (io.ktor.utils.io.w) this.L$0;
                        io.ktor.utils.io.g gVar = (io.ktor.utils.io.g) this.$body;
                        io.ktor.utils.io.j jVarMo1642d = wVar.mo1642d();
                        this.label = 1;
                        if (io.ktor.utils.io.h.b(gVar, jVarMo1642d, Long.MAX_VALUE, this) == objE) {
                            return objE;
                        }
                    }
                    io.ktor.client.statement.e.d(this.$response);
                    return l0.INSTANCE;
                } catch (CancellationException e) {
                    p0.d(this.$response, e);
                    throw e;
                } catch (Throwable th2) {
                    p0.c(this.$response, "Receive failed", th2);
                    throw th2;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:35:0x015e A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:36:0x015f  */
        /* JADX WARN: Code duplicated, block: B:50:0x01b2 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:51:0x01b3  */
        /* JADX WARN: Code duplicated, block: B:76:0x025f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:77:0x0260  */
        /* JADX WARN: Code duplicated, block: B:96:0x02f2  */
        /* JADX WARN: Instruction removed from duplicated block: B:96:0x02f2, please report this as an issue */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            io.ktor.util.pipeline.e eVar;
            o7.a aVarA;
            io.ktor.client.statement.c cVarF;
            Object objA;
            o7.a aVar;
            io.ktor.util.pipeline.e eVar2;
            o7.a aVar2;
            io.ktor.util.pipeline.e eVar3;
            Object objE;
            io.ktor.util.pipeline.e eVar4;
            Object objE2;
            Object objA2;
            Object objA3;
            io.ktor.util.pipeline.e eVar5;
            Object objE3;
            io.ktor.util.pipeline.e eVar6;
            Object objE4;
            io.ktor.util.pipeline.e eVar7;
            Object objE5;
            byte[] bArr;
            Object objE6;
            Object objE7 = kotlin.coroutines.intrinsics.d.e();
            boolean z6 = false;
            io.ktor.client.statement.d dVar = null;
            switch (this.label) {
                case 0:
                    w7.w.b(obj);
                    eVar = (io.ktor.util.pipeline.e) this.L$0;
                    io.ktor.client.statement.d dVar2 = (io.ktor.client.statement.d) this.L$1;
                    aVarA = dVar2.a();
                    Object objB = dVar2.b();
                    if (!(objB instanceof io.ktor.utils.io.g)) {
                        return l0.INSTANCE;
                    }
                    cVarF = ((io.ktor.client.call.b) eVar.b()).f();
                    KClass<?> kClassA = aVarA.a();
                    if (kotlin.jvm.internal.t.e(kClassA, q0.b(l0.class))) {
                        io.ktor.utils.io.i.a((io.ktor.utils.io.g) objB);
                        io.ktor.client.statement.d dVar3 = new io.ktor.client.statement.d(aVarA, l0.INSTANCE);
                        this.L$0 = eVar;
                        this.L$1 = aVarA;
                        this.label = 1;
                        objE3 = eVar.e(dVar3, this);
                        if (objE3 == objE7) {
                            return objE7;
                        }
                        eVar6 = eVar;
                        dVar = (io.ktor.client.statement.d) objE3;
                        eVar3 = eVar6;
                    } else if (kotlin.jvm.internal.t.e(kClassA, q0.b(Integer.TYPE))) {
                        this.L$0 = eVar;
                        this.L$1 = aVarA;
                        this.L$2 = eVar;
                        this.L$3 = aVarA;
                        this.label = 2;
                        objA3 = io.ktor.utils.io.g.b.a((io.ktor.utils.io.g) objB, 0L, this, 1, null);
                        if (objA3 == objE7) {
                            return objE7;
                        }
                        aVar = aVarA;
                        eVar5 = eVar;
                        io.ktor.client.statement.d dVar4 = new io.ktor.client.statement.d(aVarA, kotlin.coroutines.jvm.internal.b.d(Integer.parseInt(r7.m.Q0((r7.m) objA3, 0, 0, 3, null))));
                        this.L$0 = eVar;
                        this.L$1 = aVar;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 3;
                        objE4 = eVar5.e(dVar4, this);
                        if (objE4 == objE7) {
                            return objE7;
                        }
                        eVar7 = eVar;
                        dVar = (io.ktor.client.statement.d) objE4;
                        eVar3 = eVar7;
                        aVarA = aVar;
                    } else if (kotlin.jvm.internal.t.e(kClassA, q0.b(r7.j.class)) || kotlin.jvm.internal.t.e(kClassA, q0.b(r7.m.class))) {
                        this.L$0 = eVar;
                        this.L$1 = aVarA;
                        this.L$2 = eVar;
                        this.L$3 = aVarA;
                        this.label = 4;
                        objA = io.ktor.utils.io.g.b.a((io.ktor.utils.io.g) objB, 0L, this, 1, null);
                        if (objA == objE7) {
                            return objE7;
                        }
                        aVar = aVarA;
                        eVar2 = eVar;
                        io.ktor.client.statement.d dVar5 = new io.ktor.client.statement.d(aVarA, objA);
                        this.L$0 = eVar;
                        this.L$1 = aVar;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 5;
                        objE5 = eVar2.e(dVar5, this);
                        if (objE5 == objE7) {
                            return objE7;
                        }
                        eVar7 = eVar;
                        dVar = (io.ktor.client.statement.d) objE5;
                        eVar3 = eVar7;
                        aVarA = aVar;
                    } else if (kotlin.jvm.internal.t.e(kClassA, q0.b(byte[].class))) {
                        this.L$0 = eVar;
                        this.L$1 = aVarA;
                        this.L$2 = cVarF;
                        this.label = 6;
                        objA2 = io.ktor.util.f.a((io.ktor.utils.io.g) objB, this);
                        if (objA2 == objE7) {
                            return objE7;
                        }
                        bArr = (byte[]) objA2;
                        Long lB = io.ktor.http.s.b(cVarF);
                        if (!io.ktor.util.r.INSTANCE.a() && cVarF.getHeaders().get(io.ktor.http.o.INSTANCE.f()) == null) {
                            z6 = true;
                        }
                        boolean zE = true ^ kotlin.jvm.internal.t.e(((io.ktor.client.call.b) eVar.b()).e().getMethod(), io.ktor.http.t.Companion.b());
                        if (!z6 && zE && lB != null && lB.longValue() > 0 && bArr.length != ((int) lB.longValue())) {
                            throw new IllegalStateException(("Expected " + lB + ", actual " + bArr.length).toString());
                        }
                        io.ktor.client.statement.d dVar6 = new io.ktor.client.statement.d(aVarA, bArr);
                        this.L$0 = eVar;
                        this.L$1 = aVarA;
                        this.L$2 = null;
                        this.label = 7;
                        objE6 = eVar.e(dVar6, this);
                        if (objE6 == objE7) {
                            return objE7;
                        }
                        eVar6 = eVar;
                        dVar = (io.ktor.client.statement.d) objE6;
                        eVar3 = eVar6;
                    } else if (kotlin.jvm.internal.t.e(kClassA, q0.b(io.ktor.utils.io.g.class))) {
                        kotlinx.coroutines.a0 a0VarA = f2.a((b2) cVarF.getCoroutineContext().get(b2.Key));
                        aVar2 = aVarA;
                        io.ktor.utils.io.v vVarF = io.ktor.utils.io.q.f(eVar, cVarF.getCoroutineContext(), false, new a(objB, cVarF, null), 2, null);
                        vVarF.U(new C0398b(a0VarA));
                        io.ktor.client.statement.d dVar7 = new io.ktor.client.statement.d(aVar2, vVarF.mo1641d());
                        this.L$0 = eVar;
                        this.L$1 = aVar2;
                        this.label = 8;
                        objE2 = eVar.e(dVar7, this);
                        if (objE2 == objE7) {
                            return objE7;
                        }
                        eVar4 = eVar;
                        dVar = (io.ktor.client.statement.d) objE2;
                        eVar3 = eVar4;
                        aVarA = aVar2;
                    } else {
                        aVar2 = aVarA;
                        if (kotlin.jvm.internal.t.e(kClassA, q0.b(io.ktor.http.v.class))) {
                            io.ktor.utils.io.i.a((io.ktor.utils.io.g) objB);
                            io.ktor.client.statement.d dVar8 = new io.ktor.client.statement.d(aVar2, cVarF.e());
                            this.L$0 = eVar;
                            this.L$1 = aVar2;
                            this.label = 9;
                            objE = eVar.e(dVar8, this);
                            if (objE == objE7) {
                                return objE7;
                            }
                            eVar4 = eVar;
                            dVar = (io.ktor.client.statement.d) objE;
                            eVar3 = eVar4;
                            aVarA = aVar2;
                        } else {
                            aVarA = aVar2;
                        }
                    }
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 1:
                    o7.a aVar3 = (o7.a) this.L$1;
                    eVar6 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVarA = aVar3;
                    objE3 = obj;
                    dVar = (io.ktor.client.statement.d) objE3;
                    eVar3 = eVar6;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 2:
                    o7.a aVar4 = (o7.a) this.L$3;
                    eVar5 = (io.ktor.util.pipeline.e) this.L$2;
                    aVar = (o7.a) this.L$1;
                    io.ktor.util.pipeline.e eVar8 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVarA = aVar4;
                    eVar = eVar8;
                    objA3 = obj;
                    io.ktor.client.statement.d dVar9 = new io.ktor.client.statement.d(aVarA, kotlin.coroutines.jvm.internal.b.d(Integer.parseInt(r7.m.Q0((r7.m) objA3, 0, 0, 3, null))));
                    this.L$0 = eVar;
                    this.L$1 = aVar;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 3;
                    objE4 = eVar5.e(dVar9, this);
                    if (objE4 == objE7) {
                        return objE7;
                    }
                    eVar7 = eVar;
                    dVar = (io.ktor.client.statement.d) objE4;
                    eVar3 = eVar7;
                    aVarA = aVar;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 3:
                    o7.a aVar5 = (o7.a) this.L$1;
                    eVar7 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVar = aVar5;
                    objE4 = obj;
                    dVar = (io.ktor.client.statement.d) objE4;
                    eVar3 = eVar7;
                    aVarA = aVar;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 4:
                    o7.a aVar6 = (o7.a) this.L$3;
                    eVar2 = (io.ktor.util.pipeline.e) this.L$2;
                    aVar = (o7.a) this.L$1;
                    io.ktor.util.pipeline.e eVar9 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVarA = aVar6;
                    eVar = eVar9;
                    objA = obj;
                    io.ktor.client.statement.d dVar10 = new io.ktor.client.statement.d(aVarA, objA);
                    this.L$0 = eVar;
                    this.L$1 = aVar;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 5;
                    objE5 = eVar2.e(dVar10, this);
                    if (objE5 == objE7) {
                        return objE7;
                    }
                    eVar7 = eVar;
                    dVar = (io.ktor.client.statement.d) objE5;
                    eVar3 = eVar7;
                    aVarA = aVar;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 5:
                    o7.a aVar7 = (o7.a) this.L$1;
                    eVar7 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVar = aVar7;
                    objE5 = obj;
                    dVar = (io.ktor.client.statement.d) objE5;
                    eVar3 = eVar7;
                    aVarA = aVar;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 6:
                    io.ktor.client.statement.c cVar = (io.ktor.client.statement.c) this.L$2;
                    o7.a aVar8 = (o7.a) this.L$1;
                    io.ktor.util.pipeline.e eVar10 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVarA = aVar8;
                    eVar = eVar10;
                    cVarF = cVar;
                    objA2 = obj;
                    bArr = (byte[]) objA2;
                    Long lB2 = io.ktor.http.s.b(cVarF);
                    if (!io.ktor.util.r.INSTANCE.a()) {
                        z6 = true;
                    }
                    boolean zE2 = true ^ kotlin.jvm.internal.t.e(((io.ktor.client.call.b) eVar.b()).e().getMethod(), io.ktor.http.t.Companion.b());
                    if (!z6) {
                    }
                    io.ktor.client.statement.d dVar11 = new io.ktor.client.statement.d(aVarA, bArr);
                    this.L$0 = eVar;
                    this.L$1 = aVarA;
                    this.L$2 = null;
                    this.label = 7;
                    objE6 = eVar.e(dVar11, this);
                    if (objE6 == objE7) {
                        return objE7;
                    }
                    eVar6 = eVar;
                    dVar = (io.ktor.client.statement.d) objE6;
                    eVar3 = eVar6;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 7:
                    o7.a aVar9 = (o7.a) this.L$1;
                    eVar6 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVarA = aVar9;
                    objE6 = obj;
                    dVar = (io.ktor.client.statement.d) objE6;
                    eVar3 = eVar6;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 8:
                    o7.a aVar10 = (o7.a) this.L$1;
                    eVar4 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVar2 = aVar10;
                    objE2 = obj;
                    dVar = (io.ktor.client.statement.d) objE2;
                    eVar3 = eVar4;
                    aVarA = aVar2;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                case 9:
                    o7.a aVar11 = (o7.a) this.L$1;
                    eVar4 = (io.ktor.util.pipeline.e) this.L$0;
                    w7.w.b(obj);
                    aVar2 = aVar11;
                    objE = obj;
                    dVar = (io.ktor.client.statement.d) objE;
                    eVar3 = eVar4;
                    aVarA = aVar2;
                    if (dVar != null) {
                        eVar3 = eVar;
                        g.LOGGER.a("Transformed with default transformers response body for " + ((io.ktor.client.call.b) eVar3.b()).e().getUrl() + " to " + aVarA.a());
                    }
                    eVar3 = eVar;
                    return l0.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$1", f = "DefaultTransform.kt", l = {57}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX INFO: renamed from: io.ktor.client.plugins.g$a$a, reason: collision with other inner class name */
        public static final class C0397a extends k7.b.a {
            final /* synthetic */ Object $body;
            private final long contentLength;

            @NotNull
            private final io.ktor.http.c contentType;

            @Override // k7.b
            @NotNull
            public io.ktor.http.c b() {
                return this.contentType;
            }

            C0397a(io.ktor.http.c cVar, Object obj) {
                this.$body = obj;
                this.contentType = cVar == null ? io.ktor.http.c.a.INSTANCE.a() : cVar;
                this.contentLength = ((byte[]) obj).length;
            }

            @Override // k7.b
            @NotNull
            public Long a() {
                return Long.valueOf(this.contentLength);
            }

            @Override // k7.b.a
            @NotNull
            public byte[] d() {
                return (byte[]) this.$body;
            }
        }

        public static final class b extends k7.b.d {
            final /* synthetic */ Object $body;

            @Nullable
            private final Long contentLength;

            @NotNull
            private final io.ktor.http.c contentType;

            @Override // k7.b
            @Nullable
            public Long a() {
                return this.contentLength;
            }

            @Override // k7.b
            @NotNull
            public io.ktor.http.c b() {
                return this.contentType;
            }

            b(io.ktor.util.pipeline.e<Object, i7.d> eVar, io.ktor.http.c cVar, Object obj) {
                this.$body = obj;
                String strH = eVar.b().getHeaders().h(io.ktor.http.o.INSTANCE.g());
                this.contentLength = strH != null ? Long.valueOf(Long.parseLong(strH)) : null;
                this.contentType = cVar == null ? io.ktor.http.c.a.INSTANCE.a() : cVar;
            }

            @Override // k7.b.d
            @NotNull
            public io.ktor.utils.io.g d() {
                return (io.ktor.utils.io.g) this.$body;
            }
        }

        a(kotlin.coroutines.d<? super a> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            a aVar = new a(dVar);
            aVar.L$0 = eVar;
            aVar.L$1 = obj;
            return aVar.invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            k7.b bVarA;
            io.ktor.http.c cVarB;
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
                io.ktor.http.l headers = ((i7.d) eVar.b()).getHeaders();
                io.ktor.http.o oVar = io.ktor.http.o.INSTANCE;
                if (headers.h(oVar.c()) == null) {
                    ((i7.d) eVar.b()).getHeaders().f(oVar.c(), "*/*");
                }
                io.ktor.http.c cVarD = io.ktor.http.s.d((io.ktor.http.r) eVar.b());
                if (obj2 instanceof String) {
                    String str = (String) obj2;
                    if (cVarD == null) {
                        cVarD = io.ktor.http.c.C0410c.INSTANCE.a();
                    }
                    bVarA = new k7.c(str, cVarD, null, 4, null);
                } else if (obj2 instanceof byte[]) {
                    bVarA = new C0397a(cVarD, obj2);
                } else if (obj2 instanceof io.ktor.utils.io.g) {
                    bVarA = new b(eVar, cVarD, obj2);
                } else if (obj2 instanceof k7.b) {
                    bVarA = (k7.b) obj2;
                } else {
                    bVarA = h.a(cVarD, (i7.d) eVar.b(), obj2);
                }
                if (bVarA != null) {
                    cVarB = bVarA.b();
                } else {
                    cVarB = null;
                }
                if (cVarB != null) {
                    ((i7.d) eVar.b()).getHeaders().j(oVar.i());
                    g.LOGGER.a("Transformed with default transformers request body for " + ((i7.d) eVar.b()).h() + " from " + q0.b(obj2.getClass()));
                    this.L$0 = null;
                    this.label = 1;
                    if (eVar.e(bVarA, this) == objE) {
                        return objE;
                    }
                }
            }
            return l0.INSTANCE;
        }
    }

    public static final void b(@NotNull io.ktor.client.a aVar) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        aVar.n().l(i7.g.Phases.b(), new a(null));
        aVar.o().l(io.ktor.client.statement.f.Phases.a(), new b(null));
        h.b(aVar);
    }
}
