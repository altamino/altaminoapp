package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    @NotNull
    private static final String BODY_FAILED_DECODING = "<body failed decoding>";

    @NotNull
    private static final String DEPRECATED_EXCEPTION_CTOR = "Please, provide response text in constructor";

    @NotNull
    private static final String NO_RESPONSE_TEXT = "<no response text provided>";

    @NotNull
    private static final io.ktor.util.a<l0> ValidateMark = new io.ktor.util.a<>("ValidateMark");

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.DefaultResponseValidation");

    static final class a extends kotlin.jvm.internal.v implements e8.l<k.b, l0> {
        final /* synthetic */ io.ktor.client.b<?> $this_addDefaultResponseValidation;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(io.ktor.client.b<?> bVar) {
            super(1);
            this.$this_addDefaultResponseValidation = bVar;
        }

        /* JADX INFO: renamed from: io.ktor.client.plugins.f$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.DefaultResponseValidationKt$addDefaultResponseValidation$1$1", f = "DefaultResponseValidation.kt", l = {42, 48}, m = "invokeSuspend")
        static final class C0396a extends kotlin.coroutines.jvm.internal.l implements e8.p<io.ktor.client.statement.c, kotlin.coroutines.d<? super l0>, Object> {
            int I$0;
            /* synthetic */ Object L$0;
            Object L$1;
            int label;

            C0396a(kotlin.coroutines.d<? super C0396a> dVar) {
                super(2, dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                C0396a c0396a = new C0396a(dVar);
                c0396a.L$0 = obj;
                return c0396a;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.client.statement.c cVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((C0396a) create(cVar, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:39:0x00e2  */
            /* JADX WARN: Code duplicated, block: B:41:0x00e6 A[ADDED_TO_REGION] */
            /* JADX WARN: Code duplicated, block: B:44:0x00ef A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:45:0x00f1  */
            /* JADX WARN: Code duplicated, block: B:48:0x00fb  */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                int iF0;
                io.ktor.client.statement.c cVar;
                io.ktor.client.statement.c cVarF;
                int i10;
                io.ktor.client.statement.c cVar2;
                io.ktor.client.statement.c cVar3;
                String str;
                Throwable c0Var;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i11 = this.label;
                try {
                    if (i11 != 0) {
                        if (i11 != 1) {
                            if (i11 == 2) {
                                i10 = this.I$0;
                                cVar3 = (io.ktor.client.statement.c) this.L$1;
                                cVar2 = (io.ktor.client.statement.c) this.L$0;
                                try {
                                    w7.w.b(obj);
                                    str = (String) obj;
                                } catch (q7.c unused) {
                                    str = f.BODY_FAILED_DECODING;
                                }
                                if (300 > i10 && i10 < 400) {
                                    c0Var = new a0(cVar3, str);
                                } else if (400 > i10 && i10 < 500) {
                                    c0Var = new c(cVar3, str);
                                } else if (500 > i10 && i10 < 600) {
                                    c0Var = new f0(cVar3, str);
                                } else {
                                    c0Var = new c0(cVar3, str);
                                }
                                f.LOGGER.a("Default response validation for " + cVar2.y0().e().getUrl() + " failed with " + c0Var);
                                throw c0Var;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        iF0 = this.I$0;
                        cVar = (io.ktor.client.statement.c) this.L$0;
                        w7.w.b(obj);
                    } else {
                        w7.w.b(obj);
                        io.ktor.client.statement.c cVar4 = (io.ktor.client.statement.c) this.L$0;
                        if (!((Boolean) cVar4.y0().L().f(l.e())).booleanValue()) {
                            f.LOGGER.a("Skipping default response validation for " + cVar4.y0().e().getUrl());
                            return l0.INSTANCE;
                        }
                        iF0 = cVar4.e().f0();
                        io.ktor.client.call.b bVarY0 = cVar4.y0();
                        if (iF0 >= 300 && !bVarY0.L().d(f.ValidateMark)) {
                            this.L$0 = cVar4;
                            this.I$0 = iF0;
                            this.label = 1;
                            Object objA = io.ktor.client.call.d.a(bVarY0, this);
                            if (objA == objE) {
                                return objE;
                            }
                            cVar = cVar4;
                            obj = objA;
                        } else {
                            return l0.INSTANCE;
                        }
                    }
                    this.L$0 = cVar;
                    this.L$1 = cVarF;
                    this.I$0 = iF0;
                    this.label = 2;
                    Object objC = io.ktor.client.statement.e.c(cVarF, null, this, 1, null);
                    if (objC == objE) {
                        return objE;
                    }
                    i10 = iF0;
                    cVar3 = cVarF;
                    obj = objC;
                    cVar2 = cVar;
                    str = (String) obj;
                    if (300 > i10) {
                        if (400 > i10) {
                            if (500 > i10) {
                                c0Var = new c0(cVar3, str);
                            } else {
                                c0Var = new c0(cVar3, str);
                            }
                        } else if (500 > i10) {
                            c0Var = new c0(cVar3, str);
                        } else {
                            c0Var = new c0(cVar3, str);
                        }
                    } else if (400 > i10) {
                        if (500 > i10) {
                            c0Var = new c0(cVar3, str);
                        } else {
                            c0Var = new c0(cVar3, str);
                        }
                    } else if (500 > i10) {
                        c0Var = new c0(cVar3, str);
                    } else {
                        c0Var = new c0(cVar3, str);
                    }
                    f.LOGGER.a("Default response validation for " + cVar2.y0().e().getUrl() + " failed with " + c0Var);
                    throw c0Var;
                } catch (q7.c unused2) {
                    i10 = iF0;
                    cVar2 = cVar;
                    cVar3 = cVarF;
                    str = f.BODY_FAILED_DECODING;
                }
                io.ktor.client.call.b bVar = (io.ktor.client.call.b) obj;
                bVar.L().a(f.ValidateMark, l0.INSTANCE);
                cVarF = bVar.f();
            }
        }

        public final void a(@NotNull k.b HttpResponseValidator) {
            kotlin.jvm.internal.t.j(HttpResponseValidator, "$this$HttpResponseValidator");
            HttpResponseValidator.d(this.$this_addDefaultResponseValidation.d());
            HttpResponseValidator.e(new C0396a(null));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(k.b bVar) {
            a(bVar);
            return l0.INSTANCE;
        }
    }

    public static final void c(@NotNull io.ktor.client.b<?> bVar) {
        kotlin.jvm.internal.t.j(bVar, "<this>");
        l.b(bVar, new a(bVar));
    }
}
