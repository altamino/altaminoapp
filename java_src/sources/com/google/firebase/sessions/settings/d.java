package com.google.firebase.sessions.settings;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import e8.p;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.i;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements com.google.firebase.sessions.settings.a {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final String FIREBASE_PLATFORM = "android";

    @NotNull
    private static final String FIREBASE_SESSIONS_BASE_URL_STRING = "firebase-settings.crashlytics.com";

    @NotNull
    private final com.google.firebase.sessions.b appInfo;

    @NotNull
    private final String baseUrl;

    @NotNull
    private final kotlin.coroutines.g blockingDispatcher;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {68, 70, 73}, m = "invokeSuspend")
    static final class b extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ Map<String, String> $headerOptions;
        final /* synthetic */ p<String, kotlin.coroutines.d<? super l0>, Object> $onFailure;
        final /* synthetic */ p<JSONObject, kotlin.coroutines.d<? super l0>, Object> $onSuccess;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Map<String, String> map, p<? super JSONObject, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, p<? super String, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar2, kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
            this.$headerOptions = map;
            this.$onSuccess = pVar;
            this.$onFailure = pVar2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return d.this.new b(this.$headerOptions, this.$onSuccess, this.$onFailure, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((b) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1 || i10 == 2 || i10 == 3) {
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    URLConnection uRLConnectionOpenConnection = d.this.c().openConnection();
                    t.h(uRLConnectionOpenConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                    httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    httpsURLConnection.setRequestProperty("Accept", "application/json");
                    for (Map.Entry<String, String> entry : this.$headerOptions.entrySet()) {
                        httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        InputStream inputStream = httpsURLConnection.getInputStream();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        StringBuilder sb = new StringBuilder();
                        p0 p0Var = new p0();
                        while (true) {
                            ?? line = bufferedReader.readLine();
                            p0Var.element = line;
                            if (line == 0) {
                                break;
                            }
                            sb.append((String) line);
                        }
                        bufferedReader.close();
                        inputStream.close();
                        JSONObject jSONObject = new JSONObject(sb.toString());
                        p<JSONObject, kotlin.coroutines.d<? super l0>, Object> pVar = this.$onSuccess;
                        this.label = 1;
                        if (pVar.invoke(jSONObject, this) == objE) {
                            return objE;
                        }
                    } else {
                        p<String, kotlin.coroutines.d<? super l0>, Object> pVar2 = this.$onFailure;
                        String str = "Bad response code: " + responseCode;
                        this.label = 2;
                        if (pVar2.invoke(str, this) == objE) {
                            return objE;
                        }
                    }
                }
            } catch (Exception e) {
                p<String, kotlin.coroutines.d<? super l0>, Object> pVar3 = this.$onFailure;
                String message = e.getMessage();
                if (message == null) {
                    message = e.toString();
                }
                this.label = 3;
                if (pVar3.invoke(message, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    public d(@NotNull com.google.firebase.sessions.b appInfo, @NotNull kotlin.coroutines.g blockingDispatcher, @NotNull String baseUrl) {
        t.j(appInfo, "appInfo");
        t.j(blockingDispatcher, "blockingDispatcher");
        t.j(baseUrl, "baseUrl");
        this.appInfo = appInfo;
        this.blockingDispatcher = blockingDispatcher;
        this.baseUrl = baseUrl;
    }

    public /* synthetic */ d(com.google.firebase.sessions.b bVar, kotlin.coroutines.g gVar, String str, int i10, k kVar) {
        this(bVar, gVar, (i10 & 4) != 0 ? FIREBASE_SESSIONS_BASE_URL_STRING : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL c() {
        return new URL(new Uri.Builder().scheme(ProxyConfig.MATCH_HTTPS).authority(this.baseUrl).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath(FIREBASE_PLATFORM).appendPath("gmp").appendPath(this.appInfo.b()).appendPath("settings").appendQueryParameter("build_version", this.appInfo.a().a()).appendQueryParameter("display_version", this.appInfo.a().f()).build().toString());
    }

    @Override // com.google.firebase.sessions.settings.a
    @Nullable
    public Object a(@NotNull Map<String, String> map, @NotNull p<? super JSONObject, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, @NotNull p<? super String, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar2, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objG = i.g(this.blockingDispatcher, new b(map, pVar, pVar2, null), dVar);
        return objG == kotlin.coroutines.intrinsics.d.e() ? objG : l0.INSTANCE;
    }
}
