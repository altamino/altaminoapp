package io.ktor.client.engine.android;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import e8.l;
import e8.p;
import i7.h;
import io.ktor.client.plugins.y;
import io.ktor.http.k;
import io.ktor.http.m;
import io.ktor.http.o;
import io.ktor.http.u;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import kotlin.collections.r0;
import kotlin.collections.x0;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends io.ktor.client.engine.c {

    @NotNull
    private final d config;

    @NotNull
    private final Set<io.ktor.client.engine.e<?>> supportedCapabilities;

    @f(c = "io.ktor.client.engine.android.AndroidClientEngine", f = "AndroidClientEngine.kt", l = {35, 79, 82}, m = "execute")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
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
            return b.this.R(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.android.b$b, reason: collision with other inner class name */
    static final class C0391b extends v implements l<HttpURLConnection, h> {
        final /* synthetic */ g $callContext;
        final /* synthetic */ i7.e $data;
        final /* synthetic */ m7.b $requestTime;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0391b(g gVar, i7.e eVar, m7.b bVar) {
            super(1);
            this.$callContext = gVar;
            this.$data = eVar;
            this.$requestTime = bVar;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0070  */
        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h invoke(@NotNull HttpURLConnection current) throws IOException {
            String lowerCase;
            t.j(current, "current");
            int responseCode = current.getResponseCode();
            String responseMessage = current.getResponseMessage();
            io.ktor.http.v vVar = responseMessage != null ? new io.ktor.http.v(responseCode, responseMessage) : io.ktor.http.v.Companion.a(responseCode);
            io.ktor.utils.io.g gVarA = e.a(current, this.$callContext, this.$data);
            Map<String, List<String>> headerFields = current.getHeaderFields();
            t.i(headerFields, "current.headerFields");
            LinkedHashMap linkedHashMap = new LinkedHashMap(r0.e(headerFields.size()));
            Iterator<T> it = headerFields.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String key = (String) entry.getKey();
                if (key != null) {
                    t.i(key, "key");
                    Locale locale = Locale.getDefault();
                    t.i(locale, "getDefault()");
                    lowerCase = key.toLowerCase(locale);
                    t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    if (lowerCase == null) {
                        lowerCase = "";
                    }
                } else {
                    lowerCase = "";
                }
                linkedHashMap.put(lowerCase, entry.getValue());
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                if (!kotlin.text.t.z((CharSequence) entry2.getKey())) {
                    linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                }
            }
            return new h(vVar, this.$requestTime, new m(linkedHashMap2), u.Companion.a(), gVarA, this.$callContext);
        }
    }

    static final class c extends v implements p<String, String, l0> {
        final /* synthetic */ HttpURLConnection $this_apply;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(HttpURLConnection httpURLConnection) {
            super(2);
            this.$this_apply = httpURLConnection;
        }

        public final void a(@NotNull String key, @NotNull String value) {
            t.j(key, "key");
            t.j(value, "value");
            this.$this_apply.addRequestProperty(key, value);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(String str, String str2) {
            a(str, str2);
            return l0.INSTANCE;
        }
    }

    @Override // io.ktor.client.engine.c, io.ktor.client.engine.b
    @NotNull
    public Set<io.ktor.client.engine.e<?>> G() {
        return this.supportedCapabilities;
    }

    @Override // io.ktor.client.engine.b
    @NotNull
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public d Z() {
        return this.config;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull d config) {
        super("ktor-android");
        t.j(config, "config");
        this.config = config;
        this.supportedCapabilities = x0.d(y.Plugin);
    }

    private final HttpURLConnection l(String str) {
        URL url = new URL(str);
        Proxy proxyA = Z().a();
        URLConnection uRLConnection = proxyA != null ? (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection(proxyA)) : null;
        if (uRLConnection == null) {
            uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
            t.i(uRLConnection, "url.openConnection()");
        }
        return (HttpURLConnection) uRLConnection;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0195 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // io.ktor.client.engine.b
    @Nullable
    public Object R(@NotNull i7.e eVar, @NotNull kotlin.coroutines.d<? super h> dVar) throws IOException {
        a aVar;
        i7.e eVar2;
        Object objB;
        b bVar;
        g gVar;
        m7.b bVarB;
        HttpURLConnection httpURLConnectionL;
        l0 l0Var;
        i7.e eVar3;
        g gVar2;
        m7.b bVar2;
        HttpURLConnection httpURLConnection;
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
        Object objE = aVar.result;
        Object objE2 = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar.label;
        if (i11 != 0) {
            if (i11 == 1) {
                i7.e eVar4 = (i7.e) aVar.L$1;
                bVar = (b) aVar.L$0;
                w.b(objE);
                objB = objE;
                eVar2 = eVar4;
            } else if (i11 == 2) {
                httpURLConnection = (HttpURLConnection) aVar.L$3;
                bVar2 = (m7.b) aVar.L$2;
                gVar2 = (g) aVar.L$1;
                eVar3 = (i7.e) aVar.L$0;
                w.b(objE);
                httpURLConnectionL = httpURLConnection;
                bVarB = bVar2;
                gVar = gVar2;
                eVar2 = eVar3;
                C0391b c0391b = new C0391b(gVar, eVar2, bVarB);
                aVar.L$0 = null;
                aVar.L$1 = null;
                aVar.L$2 = null;
                aVar.L$3 = null;
                aVar.label = 3;
                objE = e.e(httpURLConnectionL, eVar2, c0391b, aVar);
                if (objE == objE2) {
                    return objE2;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(objE);
            }
            return objE;
        }
        w.b(objE);
        aVar.L$0 = this;
        eVar2 = eVar;
        aVar.L$1 = eVar2;
        aVar.label = 1;
        objB = io.ktor.client.engine.m.b(aVar);
        if (objB == objE2) {
            return objE2;
        }
        bVar = this;
        gVar = (g) objB;
        bVarB = m7.a.b(null, 1, null);
        String string = eVar2.h().toString();
        k7.b bVarB2 = eVar2.b();
        k kVarE = eVar2.e();
        o oVar = o.INSTANCE;
        String str = kVarE.get(oVar.g());
        Long lE = str != null ? kotlin.coroutines.jvm.internal.b.e(Long.parseLong(str)) : bVarB2.a();
        httpURLConnectionL = bVar.l(string);
        httpURLConnectionL.setConnectTimeout(bVar.Z().b());
        httpURLConnectionL.setReadTimeout(bVar.Z().d());
        e.d(httpURLConnectionL, eVar2);
        if (httpURLConnectionL instanceof HttpsURLConnection) {
            bVar.Z().e().invoke(httpURLConnectionL);
        }
        httpURLConnectionL.setRequestMethod(eVar2.f().d());
        httpURLConnectionL.setUseCaches(false);
        httpURLConnectionL.setInstanceFollowRedirects(false);
        io.ktor.client.engine.m.c(eVar2.e(), bVarB2, new c(httpURLConnectionL));
        bVar.Z().c().invoke(httpURLConnectionL);
        if (!io.ktor.client.engine.android.c.METHODS_WITHOUT_BODY.contains(eVar2.f())) {
            if (lE == null && httpURLConnectionL.getRequestProperty(oVar.u()) == null) {
                httpURLConnectionL.addRequestProperty(oVar.u(), "chunked");
            }
            if (lE != null) {
                httpURLConnectionL.setFixedLengthStreamingMode(lE.longValue());
                l0Var = l0.INSTANCE;
            } else {
                l0Var = null;
            }
            if (l0Var == null) {
                httpURLConnectionL.setChunkedStreamingMode(0);
            }
            httpURLConnectionL.setDoOutput(true);
            OutputStream outputStream = httpURLConnectionL.getOutputStream();
            t.i(outputStream, "outputStream");
            aVar.L$0 = eVar2;
            aVar.L$1 = gVar;
            aVar.L$2 = bVarB;
            aVar.L$3 = httpURLConnectionL;
            aVar.label = 2;
            if (io.ktor.client.engine.android.c.b(bVarB2, outputStream, gVar, aVar) == objE2) {
                return objE2;
            }
            eVar3 = eVar2;
            gVar2 = gVar;
            bVar2 = bVarB;
            httpURLConnection = httpURLConnectionL;
            httpURLConnectionL = httpURLConnection;
            bVarB = bVar2;
            gVar = gVar2;
            eVar2 = eVar3;
        } else if (!(bVarB2 instanceof k7.b.AbstractC0421b)) {
            throw new IllegalStateException(("Request of type " + eVar2.f() + " couldn't send a body with the [Android] engine.").toString());
        }
        C0391b c0391b2 = new C0391b(gVar, eVar2, bVarB);
        aVar.L$0 = null;
        aVar.L$1 = null;
        aVar.L$2 = null;
        aVar.L$3 = null;
        aVar.label = 3;
        objE = e.e(httpURLConnectionL, eVar2, c0391b2, aVar);
        if (objE == objE2) {
            return objE2;
        }
        return objE;
    }
}
