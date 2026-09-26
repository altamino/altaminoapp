package coil.fetch;

import android.net.Uri;
import android.os.NetworkOnMainThreadException;
import android.webkit.MimeTypeMap;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import coil.decode.p;
import coil.decode.q;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
public final class k implements i {

    @NotNull
    private static final String MIME_TYPE_TEXT_PLAIN = "text/plain";

    @NotNull
    private final w7.m<Call.Factory> callFactory;

    @NotNull
    private final w7.m<coil.disk.a> diskCache;

    @NotNull
    private final coil.request.m options;
    private final boolean respectCacheHeaders;

    @NotNull
    private final String url;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final CacheControl CACHE_CONTROL_FORCE_NETWORK_NO_CACHE = new CacheControl.Builder().noCache().noStore().build();

    @NotNull
    private static final CacheControl CACHE_CONTROL_NO_NETWORK_NO_CACHE = new CacheControl.Builder().noCache().onlyIfCached().build();

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.fetch.HttpUriFetcher", f = "HttpUriFetcher.kt", l = {223}, m = "executeNetworkRequest")
    static final class c extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return k.this.c(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.fetch.HttpUriFetcher", f = "HttpUriFetcher.kt", l = {76, 105}, m = com.google.firebase.remoteconfig.c.FETCH_FILE_NAME)
    static final class d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
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
            return k.this.a(this);
        }
    }

    private final coil.network.a k(coil.disk.a.c cVar) throws Throwable {
        coil.network.a aVar;
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(e().source(cVar.getMetadata()));
            try {
                aVar = new coil.network.a(bufferedSourceBuffer);
                th = null;
            } catch (Throwable th) {
                th = th;
                aVar = null;
            }
            if (bufferedSourceBuffer != null) {
                try {
                    bufferedSourceBuffer.close();
                } catch (Throwable th2) {
                    if (th == null) {
                        th = th2;
                    } else {
                        w7.f.a(th, th2);
                    }
                }
            }
            if (th != null) {
                throw th;
            }
            t.g(aVar);
            return aVar;
        } catch (IOException unused) {
            return null;
        }
    }

    @VisibleForTesting
    @Nullable
    public final String f(@NotNull String str, @Nullable MediaType mediaType) {
        String strK;
        String string = mediaType != null ? mediaType.toString() : null;
        if ((string == null || kotlin.text.t.K(string, "text/plain", false, 2, null)) && (strK = coil.util.i.k(MimeTypeMap.getSingleton(), str)) != null) {
            return strK;
        }
        if (string != null) {
            return u.U0(string, ';', null, 2, null);
        }
        return null;
    }

    public static final class b implements i.a<Uri> {

        @NotNull
        private final w7.m<Call.Factory> callFactory;

        @NotNull
        private final w7.m<coil.disk.a> diskCache;
        private final boolean respectCacheHeaders;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull w7.m<? extends Call.Factory> mVar, @NotNull w7.m<? extends coil.disk.a> mVar2, boolean z6) {
            this.callFactory = mVar;
            this.diskCache = mVar2;
            this.respectCacheHeaders = z6;
        }

        private final boolean c(Uri uri) {
            if (!t.e(uri.getScheme(), ProxyConfig.MATCH_HTTP) && !t.e(uri.getScheme(), ProxyConfig.MATCH_HTTPS)) {
                return false;
            }
            return true;
        }

        @Override // coil.fetch.i.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i a(@NotNull Uri uri, @NotNull coil.request.m mVar, @NotNull coil.e eVar) {
            if (!c(uri)) {
                return null;
            }
            return new k(uri.toString(), mVar, this.callFactory, this.diskCache, this.respectCacheHeaders);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Request request, kotlin.coroutines.d<? super Response> dVar) throws IOException {
        c cVar;
        Response responseExecute;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.label = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object objA = cVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = cVar.label;
        if (i11 == 0) {
            w.b(objA);
            if (!coil.util.i.t()) {
                Call callNewCall = this.callFactory.getValue().newCall(request);
                cVar.label = 1;
                objA = coil.util.b.a(callNewCall, cVar);
                if (objA == objE) {
                    return objE;
                }
            } else {
                if (this.options.k().b()) {
                    throw new NetworkOnMainThreadException();
                }
                responseExecute = FirebasePerfOkHttpClient.execute(this.callFactory.getValue().newCall(request));
            }
            if (!responseExecute.isSuccessful() || responseExecute.code() == 304) {
                return responseExecute;
            }
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody != null) {
                coil.util.i.d(responseBodyBody);
            }
            throw new coil.network.d(responseExecute);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(objA);
        responseExecute = (Response) objA;
        if (responseExecute.isSuccessful()) {
        }
        return responseExecute;
    }

    private final String d() {
        String strH = this.options.h();
        return strH == null ? this.url : strH;
    }

    private final FileSystem e() {
        coil.disk.a value = this.diskCache.getValue();
        t.g(value);
        return value.a();
    }

    private final boolean g(Request request, Response response) {
        return this.options.i().c() && (!this.respectCacheHeaders || coil.network.b.Companion.c(request, response));
    }

    private final Request h() {
        Request.Builder builderHeaders = new Request.Builder().url(this.url).headers(this.options.j());
        for (Map.Entry<Class<?>, Object> entry : this.options.o().a().entrySet()) {
            Class<?> key = entry.getKey();
            t.h(key, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>");
            builderHeaders.tag(key, entry.getValue());
        }
        boolean zB = this.options.i().b();
        boolean zB2 = this.options.k().b();
        if (!zB2 && zB) {
            builderHeaders.cacheControl(CacheControl.FORCE_CACHE);
        } else if (!zB2 || zB) {
            if (!zB2 && !zB) {
                builderHeaders.cacheControl(CACHE_CONTROL_NO_NETWORK_NO_CACHE);
            }
        } else if (this.options.i().c()) {
            builderHeaders.cacheControl(CacheControl.FORCE_NETWORK);
        } else {
            builderHeaders.cacheControl(CACHE_CONTROL_FORCE_NETWORK_NO_CACHE);
        }
        return builderHeaders.build();
    }

    private final coil.disk.a.c i() {
        coil.disk.a value;
        if (!this.options.i().b() || (value = this.diskCache.getValue()) == null) {
            return null;
        }
        return value.get(d());
    }

    /* JADX WARN: Code duplicated, block: B:56:0x012c A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Code duplicated, block: B:58:0x013a A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Code duplicated, block: B:63:0x014d A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0155 A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Code duplicated, block: B:67:0x016d A[Catch: Exception -> 0x013f, TRY_LEAVE, TryCatch #0 {Exception -> 0x013f, blocks: (B:72:0x0188, B:54:0x011e, B:56:0x012c, B:58:0x013a, B:61:0x0143, B:63:0x014d, B:65:0x0155, B:67:0x016d), top: B:81:0x011e }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0182 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x0183  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil.fetch.i
    @Nullable
    public Object a(@NotNull kotlin.coroutines.d<? super h> dVar) throws Exception {
        d dVar2;
        coil.disk.a.c cVar;
        Exception e;
        coil.network.b bVarB;
        k kVar;
        coil.disk.a.c cVarO;
        coil.network.b bVar;
        Response response;
        ResponseBody responseBodyJ;
        Response response2;
        Exception e2;
        Object objC;
        k kVar2;
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
        Object obj = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar2.label;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                response2 = (Response) dVar2.L$2;
                cVarO = (coil.disk.a.c) dVar2.L$1;
                kVar2 = (k) dVar2.L$0;
                try {
                    w.b(obj);
                    Response response3 = (Response) obj;
                    ResponseBody responseBodyJ2 = kVar2.j(response3);
                    return new m(kVar2.n(responseBodyJ2), kVar2.f(kVar2.url, responseBodyJ2.contentType()), kVar2.l(response3));
                } catch (Exception e6) {
                    e2 = e6;
                    coil.util.i.d(response2);
                    throw e2;
                }
            }
            coil.network.b bVar2 = (coil.network.b) dVar2.L$2;
            cVar = (coil.disk.a.c) dVar2.L$1;
            kVar = (k) dVar2.L$0;
            try {
                w.b(obj);
                bVar = bVar2;
                cVarO = cVar;
                try {
                    response = (Response) obj;
                    responseBodyJ = kVar.j(response);
                    try {
                        cVarO = kVar.o(cVarO, bVar.b(), response, bVar.a());
                        if (cVarO != null) {
                            p pVarM = kVar.m(cVarO);
                            String str = kVar.url;
                            coil.network.a aVarK = kVar.k(cVarO);
                            return new m(pVarM, kVar.f(str, aVarK != null ? aVarK.b() : null), coil.decode.f.NETWORK);
                        }
                        if (responseBodyJ.contentLength() > 0) {
                            return new m(kVar.n(responseBodyJ), kVar.f(kVar.url, responseBodyJ.contentType()), kVar.l(response));
                        }
                        coil.util.i.d(response);
                        Request requestH = kVar.h();
                        dVar2.L$0 = kVar;
                        dVar2.L$1 = cVarO;
                        dVar2.L$2 = response;
                        dVar2.label = 2;
                        objC = kVar.c(requestH, dVar2);
                        if (objC == objE) {
                            return objE;
                        }
                        response2 = response;
                        obj = objC;
                        kVar2 = kVar;
                        Response response4 = (Response) obj;
                        ResponseBody responseBodyJ3 = kVar2.j(response4);
                        return new m(kVar2.n(responseBodyJ3), kVar2.f(kVar2.url, responseBodyJ3.contentType()), kVar2.l(response4));
                    } catch (Exception e7) {
                        response2 = response;
                        e2 = e7;
                        coil.util.i.d(response2);
                        throw e2;
                    }
                } catch (Exception e10) {
                    e = e10;
                    cVar = cVarO;
                    if (cVar != null) {
                        coil.util.i.d(cVar);
                    }
                    throw e;
                }
            } catch (Exception e11) {
                e = e11;
                if (cVar != null) {
                    coil.util.i.d(cVar);
                }
                throw e;
            }
        }
        w.b(obj);
        coil.disk.a.c cVarI = i();
        try {
            if (cVarI != null) {
                Long size = e().metadata(cVarI.getMetadata()).getSize();
                if (size != null && size.longValue() == 0) {
                    return new m(m(cVarI), f(this.url, null), coil.decode.f.DISK);
                }
                if (!this.respectCacheHeaders) {
                    p pVarM2 = m(cVarI);
                    String str2 = this.url;
                    coil.network.a aVarK2 = k(cVarI);
                    return new m(pVarM2, f(str2, aVarK2 != null ? aVarK2.b() : null), coil.decode.f.DISK);
                }
                bVarB = new coil.network.b.C0104b(h(), k(cVarI)).b();
                if (bVarB.b() == null && bVarB.a() != null) {
                    return new m(m(cVarI), f(this.url, bVarB.a().b()), coil.decode.f.DISK);
                }
            } else {
                bVarB = new coil.network.b.C0104b(h(), null).b();
            }
            Request requestB = bVarB.b();
            t.g(requestB);
            dVar2.L$0 = this;
            dVar2.L$1 = cVarI;
            dVar2.L$2 = bVarB;
            dVar2.label = 1;
            Object objC2 = c(requestB, dVar2);
            if (objC2 == objE) {
                return objE;
            }
            kVar = this;
            coil.network.b bVar3 = bVarB;
            cVarO = cVarI;
            obj = objC2;
            bVar = bVar3;
            response = (Response) obj;
            responseBodyJ = kVar.j(response);
            cVarO = kVar.o(cVarO, bVar.b(), response, bVar.a());
            if (cVarO != null) {
                p pVarM3 = kVar.m(cVarO);
                String str3 = kVar.url;
                coil.network.a aVarK3 = kVar.k(cVarO);
                return new m(pVarM3, kVar.f(str3, aVarK3 != null ? aVarK3.b() : null), coil.decode.f.NETWORK);
            }
            if (responseBodyJ.contentLength() > 0) {
                return new m(kVar.n(responseBodyJ), kVar.f(kVar.url, responseBodyJ.contentType()), kVar.l(response));
            }
            coil.util.i.d(response);
            Request requestH2 = kVar.h();
            dVar2.L$0 = kVar;
            dVar2.L$1 = cVarO;
            dVar2.L$2 = response;
            dVar2.label = 2;
            objC = kVar.c(requestH2, dVar2);
            if (objC == objE) {
                return objE;
            }
            response2 = response;
            obj = objC;
            kVar2 = kVar;
            Response response5 = (Response) obj;
            ResponseBody responseBodyJ4 = kVar2.j(response5);
            return new m(kVar2.n(responseBodyJ4), kVar2.f(kVar2.url, responseBodyJ4.contentType()), kVar2.l(response5));
        } catch (Exception e12) {
            cVar = cVarI;
            e = e12;
            if (cVar != null) {
                coil.util.i.d(cVar);
            }
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(@NotNull String str, @NotNull coil.request.m mVar, @NotNull w7.m<? extends Call.Factory> mVar2, @NotNull w7.m<? extends coil.disk.a> mVar3, boolean z6) {
        this.url = str;
        this.options = mVar;
        this.callFactory = mVar2;
        this.diskCache = mVar3;
        this.respectCacheHeaders = z6;
    }

    private final ResponseBody j(Response response) {
        ResponseBody responseBodyBody = response.body();
        if (responseBodyBody != null) {
            return responseBodyBody;
        }
        throw new IllegalStateException("response body == null".toString());
    }

    private final coil.decode.f l(Response response) {
        if (response.networkResponse() != null) {
            return coil.decode.f.NETWORK;
        }
        return coil.decode.f.DISK;
    }

    private final p m(coil.disk.a.c cVar) {
        return q.c(cVar.getData(), e(), d(), cVar);
    }

    private final p n(ResponseBody responseBody) {
        return q.a(responseBody.source(), this.options.g());
    }

    private final coil.disk.a.c o(coil.disk.a.c cVar, Request request, Response response, coil.network.a aVar) {
        coil.disk.a.b bVarB;
        l0 l0Var;
        Long lValueOf;
        l0 l0Var2;
        Throwable th = null;
        if (!g(request, response)) {
            if (cVar != null) {
                coil.util.i.d(cVar);
            }
            return null;
        }
        if (cVar != null) {
            bVarB = cVar.N();
        } else {
            coil.disk.a value = this.diskCache.getValue();
            if (value != null) {
                bVarB = value.b(d());
            } else {
                bVarB = null;
            }
        }
        try {
            if (bVarB == null) {
                return null;
            }
            try {
                if (response.code() == 304 && aVar != null) {
                    Response responseBuild = response.newBuilder().headers(coil.network.b.Companion.a(aVar.d(), response.headers())).build();
                    BufferedSink bufferedSinkBuffer = Okio.buffer(e().sink(bVarB.getMetadata(), false));
                    try {
                        new coil.network.a(responseBuild).g(bufferedSinkBuffer);
                        l0Var2 = l0.INSTANCE;
                    } catch (Throwable th2) {
                        th = th2;
                        l0Var2 = null;
                    }
                    if (bufferedSinkBuffer != null) {
                        try {
                            bufferedSinkBuffer.close();
                        } catch (Throwable th3) {
                            if (th != null) {
                                w7.f.a(th, th3);
                            } else {
                                th = th3;
                            }
                        }
                    }
                    if (th == null) {
                        t.g(l0Var2);
                    } else {
                        throw th;
                    }
                } else {
                    BufferedSink bufferedSinkBuffer2 = Okio.buffer(e().sink(bVarB.getMetadata(), false));
                    try {
                        new coil.network.a(response).g(bufferedSinkBuffer2);
                        l0Var = l0.INSTANCE;
                        th = null;
                    } catch (Throwable th4) {
                        th = th4;
                        l0Var = null;
                    }
                    if (bufferedSinkBuffer2 != null) {
                        try {
                            bufferedSinkBuffer2.close();
                        } catch (Throwable th5) {
                            if (th != null) {
                                w7.f.a(th, th5);
                            } else {
                                th = th5;
                            }
                        }
                    }
                    if (th == null) {
                        t.g(l0Var);
                        BufferedSink bufferedSinkBuffer3 = Okio.buffer(e().sink(bVarB.getData(), false));
                        try {
                            ResponseBody responseBodyBody = response.body();
                            t.g(responseBodyBody);
                            lValueOf = Long.valueOf(responseBodyBody.source().readAll(bufferedSinkBuffer3));
                        } catch (Throwable th6) {
                            th = th6;
                            lValueOf = null;
                        }
                        if (bufferedSinkBuffer3 != null) {
                            try {
                                bufferedSinkBuffer3.close();
                            } catch (Throwable th7) {
                                if (th != null) {
                                    w7.f.a(th, th7);
                                } else {
                                    th = th7;
                                }
                            }
                        }
                        if (th == null) {
                            t.g(lValueOf);
                        } else {
                            throw th;
                        }
                    } else {
                        throw th;
                    }
                }
                coil.disk.a.c cVarA = bVarB.a();
                coil.util.i.d(response);
                return cVarA;
            } catch (Exception e) {
                coil.util.i.a(bVarB);
                throw e;
            }
        } catch (Throwable th8) {
            coil.util.i.d(response);
            throw th8;
        }
    }
}
