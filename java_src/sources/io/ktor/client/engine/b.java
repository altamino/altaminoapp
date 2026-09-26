package io.ktor.client.engine;

import e8.p;
import e8.q;
import java.io.Closeable;
import java.util.Set;
import kotlin.collections.y0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
public interface b extends o0, Closeable {

    public static final class a {

        /* JADX INFO: renamed from: io.ktor.client.engine.b$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.engine.HttpClientEngine$DefaultImpls", f = "HttpClientEngine.kt", l = {91, 100}, m = "executeWithinCallContext")
        static final class C0392a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            C0392a(kotlin.coroutines.d<? super C0392a> dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return a.e(null, null, this);
            }
        }

        /* JADX INFO: renamed from: io.ktor.client.engine.b$a$b, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2", f = "HttpClientEngine.kt", l = {99}, m = "invokeSuspend")
        static final class C0393b extends kotlin.coroutines.jvm.internal.l implements p<o0, kotlin.coroutines.d<? super i7.h>, Object> {
            final /* synthetic */ i7.e $requestData;
            int label;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0393b(b bVar, i7.e eVar, kotlin.coroutines.d<? super C0393b> dVar) {
                super(2, dVar);
                this.this$0 = bVar;
                this.$requestData = eVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C0393b(this.this$0, this.$requestData, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super i7.h> dVar) {
                return ((C0393b) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                    if (!a.f(this.this$0)) {
                        b bVar = this.this$0;
                        i7.e eVar = this.$requestData;
                        this.label = 1;
                        obj = bVar.R(eVar, this);
                        if (obj == objE) {
                            return objE;
                        }
                    } else {
                        throw new io.ktor.client.engine.a(null, 1, null);
                    }
                }
                return obj;
            }
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.engine.HttpClientEngine$install$1", f = "HttpClientEngine.kt", l = {70, 82}, m = "invokeSuspend")
        static final class c extends kotlin.coroutines.jvm.internal.l implements q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ io.ktor.client.a $client;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;
            final /* synthetic */ b this$0;

            /* JADX INFO: renamed from: io.ktor.client.engine.b$a$c$a, reason: collision with other inner class name */
            static final class C0394a extends v implements e8.l<Throwable, l0> {
                final /* synthetic */ io.ktor.client.a $client;
                final /* synthetic */ io.ktor.client.statement.c $response;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0394a(io.ktor.client.a aVar, io.ktor.client.statement.c cVar) {
                    super(1);
                    this.$client = aVar;
                    this.$response = cVar;
                }

                @Override // e8.l
                public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                    invoke2(th);
                    return l0.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    if (th != null) {
                        this.$client.l().a(io.ktor.client.utils.b.c(), this.$response);
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(io.ktor.client.a aVar, b bVar, kotlin.coroutines.d<? super c> dVar) {
                super(3, dVar);
                this.$client = aVar;
                this.this$0 = bVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                c cVar = new c(this.$client, this.this$0, dVar);
                cVar.L$0 = eVar;
                cVar.L$1 = obj;
                return cVar.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                i7.e eVarA;
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
                        eVarA = (i7.e) this.L$1;
                        eVar = (io.ktor.util.pipeline.e) this.L$0;
                        w.b(obj);
                    }
                    return l0.INSTANCE;
                }
                w.b(obj);
                io.ktor.util.pipeline.e eVar2 = (io.ktor.util.pipeline.e) this.L$0;
                Object obj2 = this.L$1;
                i7.d dVar = new i7.d();
                dVar.o((i7.d) eVar2.b());
                if (obj2 == null) {
                    dVar.i(k7.a.INSTANCE);
                    KType kTypeK = q0.k(Object.class);
                    dVar.j(o7.b.b(TypesJVMKt.getJavaType(kTypeK), q0.b(Object.class), kTypeK));
                } else if (obj2 instanceof k7.b) {
                    dVar.i(obj2);
                    dVar.j(null);
                } else {
                    dVar.i(obj2);
                    KType kTypeK2 = q0.k(Object.class);
                    dVar.j(o7.b.b(TypesJVMKt.getJavaType(kTypeK2), q0.b(Object.class), kTypeK2));
                }
                this.$client.l().a(io.ktor.client.utils.b.b(), dVar);
                eVarA = dVar.a();
                eVarA.a().a(i.c(), this.$client.h());
                i.d(eVarA);
                a.d(this.this$0, eVarA);
                b bVar = this.this$0;
                this.L$0 = eVar2;
                this.L$1 = eVarA;
                this.label = 1;
                Object objE2 = a.e(bVar, eVarA, this);
                if (objE2 == objE) {
                    return objE;
                }
                eVar = eVar2;
                obj = objE2;
                io.ktor.client.call.b bVar2 = new io.ktor.client.call.b(this.$client, eVarA, (i7.h) obj);
                io.ktor.client.statement.c cVarF = bVar2.f();
                this.$client.l().a(io.ktor.client.utils.b.e(), cVarF);
                f2.l(cVarF.getCoroutineContext()).U(new C0394a(this.$client, cVarF));
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (eVar.e(bVar2, this) == objE) {
                    return objE;
                }
                return l0.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static Object e(b bVar, i7.e eVar, kotlin.coroutines.d<? super i7.h> dVar) {
            C0392a c0392a;
            if (dVar instanceof C0392a) {
                c0392a = (C0392a) dVar;
                int i10 = c0392a.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    c0392a.label = i10 - Integer.MIN_VALUE;
                } else {
                    c0392a = new C0392a(dVar);
                }
            } else {
                c0392a = new C0392a(dVar);
            }
            Object objB = c0392a.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = c0392a.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    eVar = (i7.e) c0392a.L$1;
                    bVar = (b) c0392a.L$0;
                    w.b(objB);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.b(objB);
                }
            }
            w.b(objB);
            b2 b2VarD = eVar.d();
            c0392a.L$0 = bVar;
            c0392a.L$1 = eVar;
            c0392a.label = 1;
            objB = i.b(bVar, b2VarD, c0392a);
            if (objB == objE) {
                return objE;
            }
            b bVar2 = bVar;
            kotlin.coroutines.g gVar = (kotlin.coroutines.g) objB;
            v0 v0VarB = kotlinx.coroutines.k.b(bVar2, gVar.plus(new j(gVar)), null, new C0393b(bVar2, eVar, null), 2, null);
            c0392a.L$0 = null;
            c0392a.L$1 = null;
            c0392a.label = 2;
            objB = v0VarB.i(c0392a);
            return objB == objE ? objE : objB;
        }

        public static void h(@NotNull b bVar, @NotNull io.ktor.client.a client) {
            t.j(client, "client");
            client.p().l(i7.i.Phases.a(), new c(client, bVar, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(b bVar, i7.e eVar) {
            for (e<?> eVar2 : eVar.g()) {
                if (!bVar.G().contains(eVar2)) {
                    throw new IllegalArgumentException(("Engine doesn't support " + eVar2).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean f(b bVar) {
            boolean zIsActive;
            b2 b2Var = (b2) bVar.getCoroutineContext().get(b2.Key);
            if (b2Var != null) {
                zIsActive = b2Var.isActive();
            } else {
                zIsActive = false;
            }
            return !zIsActive;
        }

        @NotNull
        public static Set<e<?>> g(@NotNull b bVar) {
            return y0.e();
        }
    }

    @NotNull
    Set<e<?>> G();

    @Nullable
    Object R(@NotNull i7.e eVar, @NotNull kotlin.coroutines.d<? super i7.h> dVar);

    void T(@NotNull io.ktor.client.a aVar);

    @NotNull
    g Z();
}
