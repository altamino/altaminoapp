package io.ktor.client.engine.android;

import e8.l;
import io.ktor.client.plugins.y;
import io.ktor.client.plugins.z;
import io.ktor.utils.io.g;
import io.ktor.utils.io.jvm.javaio.h;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import kotlinx.coroutines.l3;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    @f(c = "io.ktor.client.engine.android.AndroidURLConnectionUtilsKt", f = "AndroidURLConnectionUtils.kt", l = {60}, m = "timeoutAwareConnection")
    static final class a<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
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
            return e.e(null, null, null, this);
        }
    }

    @NotNull
    public static final g a(@NotNull HttpURLConnection httpURLConnection, @NotNull kotlin.coroutines.g callContext, @NotNull i7.e request) {
        g gVarA;
        g gVarA2;
        t.j(httpURLConnection, "<this>");
        t.j(callContext, "callContext");
        t.j(request, "request");
        BufferedInputStream bufferedInputStream = null;
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream != null) {
                bufferedInputStream = inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream, 8192);
            }
        } catch (IOException unused) {
            InputStream errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                bufferedInputStream = errorStream instanceof BufferedInputStream ? (BufferedInputStream) errorStream : new BufferedInputStream(errorStream, 8192);
            }
        }
        return (bufferedInputStream == null || (gVarA = h.a(bufferedInputStream, callContext, io.ktor.util.cio.a.a())) == null || (gVarA2 = io.ktor.client.network.sockets.c.a(p0.a(callContext), gVarA, request)) == null) ? g.Companion.a() : gVarA2;
    }

    private static final boolean b(Throwable th) {
        String message;
        return (th instanceof SocketTimeoutException) || ((th instanceof ConnectException) && (message = th.getMessage()) != null && u.P(message, "timed out", false, 2, null));
    }

    public static final void d(@NotNull HttpURLConnection httpURLConnection, @NotNull i7.e requestData) {
        t.j(httpURLConnection, "<this>");
        t.j(requestData, "requestData");
        y.a aVar = (y.a) requestData.c(y.Plugin);
        if (aVar != null) {
            Long lC = aVar.c();
            if (lC != null) {
                httpURLConnection.setConnectTimeout(z.d(lC.longValue()));
            }
            Long lE = aVar.e();
            if (lE != null) {
                httpURLConnection.setReadTimeout(z.d(lE.longValue()));
            }
            c(httpURLConnection, aVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object e(@NotNull HttpURLConnection httpURLConnection, @NotNull i7.e eVar, @NotNull l<? super HttpURLConnection, ? extends T> lVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
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
            try {
                return lVar.invoke(httpURLConnection);
            } catch (Throwable th) {
                th = th;
                aVar.L$0 = eVar;
                aVar.L$1 = th;
                aVar.label = 1;
                if (l3.a(aVar) == objE) {
                    return objE;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            th = (Throwable) aVar.L$1;
            eVar = (i7.e) aVar.L$0;
            w.b(obj);
        }
        if (b(th)) {
            throw z.a(eVar, th);
        }
        throw th;
    }

    private static final void c(HttpURLConnection httpURLConnection, y.a aVar) {
        Long lD = aVar.d();
        if (lD != null) {
            long jLongValue = lD.longValue();
            if (jLongValue != Long.MAX_VALUE) {
                if (httpURLConnection.getConnectTimeout() == 0 || httpURLConnection.getConnectTimeout() > jLongValue) {
                    httpURLConnection.setConnectTimeout(z.d(jLongValue));
                }
            }
        }
    }
}
