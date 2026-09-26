package retrofit2;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Method;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
public final class KotlinExtensions {

    /* JADX INFO: renamed from: retrofit2.KotlinExtensions$suspendAndThrow$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", l = {113}, m = "suspendAndThrow")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(kotlin.coroutines.d dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KotlinExtensions.suspendAndThrow(null, this);
        }
    }

    @Nullable
    public static final <T> Object await(@NotNull Call<T> call, @NotNull kotlin.coroutines.d<? super T> dVar) throws Throwable {
        final p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.S(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable t5) {
                t.k(call2, "call");
                t.k(t5, "t");
                o oVar = pVar;
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(w.a(t5)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                t.k(call2, "call");
                t.k(response, "response");
                if (!response.isSuccessful()) {
                    o oVar = pVar;
                    HttpException httpException = new HttpException(response);
                    v.a aVar = v.Companion;
                    oVar.resumeWith(v.b(w.a(httpException)));
                    return;
                }
                T tBody = response.body();
                if (tBody != null) {
                    pVar.resumeWith(v.b(tBody));
                    return;
                }
                Object objTag = call2.request().tag(Invocation.class);
                if (objTag == null) {
                    t.v();
                }
                t.f(objTag, "call.request().tag(Invocation::class.java)!!");
                Method method = ((Invocation) objTag).method();
                StringBuilder sb = new StringBuilder();
                sb.append("Response from ");
                t.f(method, "method");
                Class<?> declaringClass = method.getDeclaringClass();
                t.f(declaringClass, "method.declaringClass");
                sb.append(declaringClass.getName());
                sb.append('.');
                sb.append(method.getName());
                sb.append(" was null but response body type was declared as non-null");
                w7.j jVar = new w7.j(sb.toString());
                o oVar2 = pVar;
                v.a aVar2 = v.Companion;
                oVar2.resumeWith(v.b(w.a(jVar)));
            }
        });
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    @Nullable
    public static final <T> Object awaitNullable(@NotNull Call<T> call, @NotNull kotlin.coroutines.d<? super T> dVar) throws Throwable {
        final p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.S(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable t5) {
                t.k(call2, "call");
                t.k(t5, "t");
                o oVar = pVar;
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(w.a(t5)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                t.k(call2, "call");
                t.k(response, "response");
                if (response.isSuccessful()) {
                    pVar.resumeWith(v.b(response.body()));
                    return;
                }
                o oVar = pVar;
                HttpException httpException = new HttpException(response);
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(w.a(httpException)));
            }
        });
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    @Nullable
    public static final <T> Object awaitResponse(@NotNull Call<T> call, @NotNull kotlin.coroutines.d<? super Response<T>> dVar) throws Throwable {
        final p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.S(new KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable t5) {
                t.k(call2, "call");
                t.k(t5, "t");
                o oVar = pVar;
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(w.a(t5)));
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                t.k(call2, "call");
                t.k(response, "response");
                pVar.resumeWith(v.b(response));
            }
        });
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    public static final /* synthetic */ <T> T create(@NotNull Retrofit create) {
        t.k(create, "$this$create");
        t.p(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) create.create(Object.class);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object suspendAndThrow(@NotNull final Exception exc, @NotNull kotlin.coroutines.d<?> dVar) {
        final AnonymousClass1 anonymousClass1;
        if (dVar instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) dVar;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(dVar);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(dVar);
        }
        Object obj = anonymousClass1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = anonymousClass1.label;
        if (i11 == 0) {
            w.b(obj);
            anonymousClass1.L$0 = exc;
            anonymousClass1.label = 1;
            e1.a().dispatch(anonymousClass1.getContext(), new Runnable() { // from class: retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    kotlin.coroutines.d dVarC = kotlin.coroutines.intrinsics.c.c(anonymousClass1);
                    Exception exc2 = exc;
                    v.a aVar = v.Companion;
                    dVarC.resumeWith(v.b(w.a(exc2)));
                }
            });
            Object objE2 = kotlin.coroutines.intrinsics.d.e();
            if (objE2 == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(anonymousClass1);
            }
            if (objE2 == objE) {
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
}
