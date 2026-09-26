package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class j implements d<InputStream> {

    @VisibleForTesting
    static final b DEFAULT_CONNECTION_FACTORY = new a();
    private static final int INVALID_STATUS_CODE = -1;
    private static final int MAXIMUM_REDIRECTS = 5;
    private static final String TAG = "HttpUrlFetcher";
    private final b connectionFactory;
    private final com.bumptech.glide.load.model.g glideUrl;
    private volatile boolean isCancelled;
    private InputStream stream;
    private final int timeout;
    private HttpURLConnection urlConnection;

    interface b {
        HttpURLConnection a(URL url) throws IOException;
    }

    public j(com.bumptech.glide.load.model.g gVar, int i10) {
        this(gVar, i10, DEFAULT_CONNECTION_FACTORY);
    }

    private InputStream h(URL url, int i10, URL url2, Map<String, String> map) throws IOException {
        if (i10 >= 5) {
            throw new com.bumptech.glide.load.e("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new com.bumptech.glide.load.e("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.urlConnection = this.connectionFactory.a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.urlConnection.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.urlConnection.setConnectTimeout(this.timeout);
        this.urlConnection.setReadTimeout(this.timeout);
        this.urlConnection.setUseCaches(false);
        this.urlConnection.setDoInput(true);
        this.urlConnection.setInstanceFollowRedirects(false);
        this.urlConnection.connect();
        this.stream = this.urlConnection.getInputStream();
        if (this.isCancelled) {
            return null;
        }
        int responseCode = this.urlConnection.getResponseCode();
        if (f(responseCode)) {
            return e(this.urlConnection);
        }
        if (!g(responseCode)) {
            if (responseCode == -1) {
                throw new com.bumptech.glide.load.e(responseCode);
            }
            throw new com.bumptech.glide.load.e(this.urlConnection.getResponseMessage(), responseCode);
        }
        String headerField = this.urlConnection.getHeaderField("Location");
        if (TextUtils.isEmpty(headerField)) {
            throw new com.bumptech.glide.load.e("Received empty or null redirect url");
        }
        URL url3 = new URL(url, headerField);
        b();
        return h(url3, i10 + 1, url, map);
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
        this.isCancelled = true;
    }

    private static class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.data.j.b
        public HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        }
    }

    @VisibleForTesting
    j(com.bumptech.glide.load.model.g gVar, int i10, b bVar) {
        this.glideUrl = gVar;
        this.timeout = i10;
        this.connectionFactory = bVar;
    }

    private static boolean f(int i10) {
        return i10 / 100 == 2;
    }

    private static boolean g(int i10) {
        return i10 / 100 == 3;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.stream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.urlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.urlConnection = null;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public com.bumptech.glide.load.a c() {
        return com.bumptech.glide.load.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(@NonNull com.bumptech.glide.f fVar, @NonNull d.a<? super InputStream> aVar) {
        StringBuilder sb;
        long jB = com.bumptech.glide.util.f.b();
        try {
            aVar.e(h(this.glideUrl.h(), 0, null, this.glideUrl.e()));
            if (Log.isLoggable(TAG, 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                sb.append(com.bumptech.glide.util.f.a(jB));
                String string = sb.toString();
            }
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Failed to load data for url", e);
            }
            aVar.f(e);
            if (!Log.isLoggable(TAG, 2)) {
            } else {
                sb = new StringBuilder();
            }
        } finally {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Finished http url fetcher fetch in " + com.bumptech.glide.util.f.a(jB));
            }
        }
    }

    private InputStream e(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.stream = com.bumptech.glide.util.c.b(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.stream = httpURLConnection.getInputStream();
        }
        return this.stream;
    }
}
