package com.narvii.youtube;

import aa.j;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import z9.d;

/* JADX INFO: loaded from: classes10.dex */
public final class DownloaderImpl extends z9.a {
    public static final String USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101 Firefox/68.0";
    public static final String YOUTUBE_DOMAIN = "youtube.com";
    public static final String YOUTUBE_RESTRICTED_MODE_COOKIE = "PREF=f2=8000000";
    public static final String YOUTUBE_RESTRICTED_MODE_COOKIE_KEY = "youtube_restricted_mode_key";
    private static DownloaderImpl instance;
    private final OkHttpClient client;
    private final Map<String, String> mCookies = new HashMap();

    public static DownloaderImpl getInstance() {
        return instance;
    }

    public static DownloaderImpl init(@Nullable OkHttpClient.Builder builder) {
        if (builder == null) {
            builder = new OkHttpClient.Builder();
        }
        DownloaderImpl downloaderImpl = new DownloaderImpl(builder);
        instance = downloaderImpl;
        return downloaderImpl;
    }

    public String getCookie(String str) {
        return this.mCookies.get(str);
    }

    public String getCookies(String str) {
        String cookie;
        ArrayList arrayList = new ArrayList();
        if (str.contains(YOUTUBE_DOMAIN) && (cookie = getCookie(YOUTUBE_RESTRICTED_MODE_COOKIE_KEY)) != null) {
            arrayList.add(cookie);
        }
        return CookieUtils.concatCookies(arrayList);
    }

    public void removeCookie(String str) {
        this.mCookies.remove(str);
    }

    public void setCookie(String str, String str2) {
        this.mCookies.put(str, str2);
    }

    public InputStream stream(String str) throws IOException {
        try {
            Request.Builder builderAddHeader = new Request.Builder().method(ShareTarget.METHOD_GET, null).url(str).addHeader("User-Agent", USER_AGENT);
            String cookies = getCookies(str);
            if (!cookies.isEmpty()) {
                builderAddHeader.addHeader("Cookie", cookies);
            }
            Response responseExecute = FirebasePerfOkHttpClient.execute(this.client.newCall(builderAddHeader.build()));
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseExecute.code() == 429) {
                throw new j("reCaptcha Challenge requested", str);
            }
            if (responseBodyBody != null) {
                return responseBodyBody.byteStream();
            }
            responseExecute.close();
            return null;
        } catch (j e) {
            throw new IOException(e.getMessage(), e.getCause());
        }
    }

    private DownloaderImpl(OkHttpClient.Builder builder) {
        this.client = builder.readTimeout(30L, TimeUnit.SECONDS).build();
    }

    private static void enableModernTLS(OkHttpClient.Builder builder) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    builder.sslSocketFactory(TLSSocketFactoryCompat.getInstance(), (X509TrustManager) trustManager);
                    ConnectionSpec connectionSpec = ConnectionSpec.MODERN_TLS;
                    ArrayList arrayList = new ArrayList(connectionSpec.cipherSuites());
                    arrayList.add(CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA);
                    arrayList.add(CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA);
                    builder.connectionSpecs(Arrays.asList(new ConnectionSpec.Builder(connectionSpec).cipherSuites((CipherSuite[]) arrayList.toArray(new CipherSuite[0])).build(), ConnectionSpec.CLEARTEXT));
                    return;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (KeyManagementException | KeyStoreException | NoSuchAlgorithmException unused) {
        }
    }

    @Override // z9.a
    public d execute(@NonNull z9.b bVar) throws j, IOException {
        RequestBody requestBodyCreate;
        String strD = bVar.d();
        String strF = bVar.f();
        Map<String, List<String>> mapC = bVar.c();
        byte[] bArrA = bVar.a();
        String strString = null;
        if (bArrA != null) {
            requestBodyCreate = RequestBody.create((MediaType) null, bArrA);
        } else {
            requestBodyCreate = null;
        }
        Request.Builder builderAddHeader = new Request.Builder().method(strD, requestBodyCreate).url(strF).addHeader("User-Agent", USER_AGENT);
        String cookies = getCookies(strF);
        if (!cookies.isEmpty()) {
            builderAddHeader.addHeader("Cookie", cookies);
        }
        for (Map.Entry<String, List<String>> entry : mapC.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (value.size() > 1) {
                builderAddHeader.removeHeader(key);
                Iterator<String> it = value.iterator();
                while (it.hasNext()) {
                    builderAddHeader.addHeader(key, it.next());
                }
            } else if (value.size() == 1) {
                builderAddHeader.header(key, value.get(0));
            }
        }
        Response responseExecute = FirebasePerfOkHttpClient.execute(this.client.newCall(builderAddHeader.build()));
        if (responseExecute.code() != 429) {
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody != null) {
                strString = responseBodyBody.string();
            }
            return new d(responseExecute.code(), responseExecute.message(), responseExecute.headers().toMultimap(), strString, responseExecute.request().url().toString());
        }
        responseExecute.close();
        throw new j("reCaptcha Challenge requested", strF);
    }

    public long getContentLength(String str) throws IOException {
        try {
            return Long.parseLong(head(str).a("Content-Length"));
        } catch (j e) {
            throw new IOException(e);
        } catch (NumberFormatException e2) {
            throw new IOException("Invalid content length", e2);
        }
    }
}
