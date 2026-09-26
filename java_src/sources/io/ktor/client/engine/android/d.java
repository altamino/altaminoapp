package io.ktor.client.engine.android;

import e8.l;
import io.ktor.client.engine.g;
import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends g {
    private int connectTimeout = 100000;
    private int socketTimeout = 100000;

    @NotNull
    private l<? super HttpsURLConnection, l0> sslManager = b.INSTANCE;

    @NotNull
    private l<? super HttpURLConnection, l0> requestConfig = a.INSTANCE;

    static final class a extends v implements l<HttpURLConnection, l0> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        public final void a(@NotNull HttpURLConnection httpURLConnection) {
            t.j(httpURLConnection, "$this$null");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(HttpURLConnection httpURLConnection) {
            a(httpURLConnection);
            return l0.INSTANCE;
        }
    }

    static final class b extends v implements l<HttpsURLConnection, l0> {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        public final void a(@NotNull HttpsURLConnection it) {
            t.j(it, "it");
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(HttpsURLConnection httpsURLConnection) {
            a(httpsURLConnection);
            return l0.INSTANCE;
        }
    }

    public final int b() {
        return this.connectTimeout;
    }

    @NotNull
    public final l<HttpURLConnection, l0> c() {
        return this.requestConfig;
    }

    public final int d() {
        return this.socketTimeout;
    }

    @NotNull
    public final l<HttpsURLConnection, l0> e() {
        return this.sslManager;
    }
}
