package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.google.android.exoplayer2.util.o0;
import com.google.common.collect.f1;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import org.jsoup.helper.HttpConnection;

/* JADX INFO: loaded from: classes9.dex */
public class t extends f {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final int HTTP_STATUS_PERMANENT_REDIRECT = 308;
    private static final int HTTP_STATUS_TEMPORARY_REDIRECT = 307;
    private static final long MAX_BYTES_TO_DRAIN = 2048;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "DefaultHttpDataSource";
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesToRead;
    private final int connectTimeoutMillis;

    @Nullable
    private HttpURLConnection connection;

    @Nullable
    private com.google.common.base.p<String> contentTypePredicate;

    @Nullable
    private o dataSpec;

    @Nullable
    private final c0 defaultRequestProperties;

    @Nullable
    private InputStream inputStream;
    private final boolean keepPostFor302Redirects;
    private boolean opened;
    private final int readTimeoutMillis;
    private final c0 requestProperties;
    private int responseCode;

    @Nullable
    private final String userAgent;

    public static final class b implements k.a {
        private boolean allowCrossProtocolRedirects;

        @Nullable
        private com.google.common.base.p<String> contentTypePredicate;
        private boolean keepPostFor302Redirects;

        @Nullable
        private m0 transferListener;

        @Nullable
        private String userAgent;
        private final c0 defaultRequestProperties = new c0();
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        public b b(boolean z6) {
            this.allowCrossProtocolRedirects = z6;
            return this;
        }

        public b c(int i10) {
            this.connectTimeoutMs = i10;
            return this;
        }

        public b d(int i10) {
            this.readTimeoutMs = i10;
            return this;
        }

        public b e(@Nullable String str) {
            this.userAgent = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.k.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t createDataSource() {
            t tVar = new t(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            m0 m0Var = this.transferListener;
            if (m0Var != null) {
                tVar.b(m0Var);
            }
            return tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c extends com.google.common.collect.u<String, List<String>> {
        private final Map<String, List<String>> headers;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean v(String str) {
            return str != null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.v
        public Map<String, List<String>> f() {
            return this.headers;
        }

        @Override // com.google.common.collect.u, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // java.util.Map
        public boolean equals(@Nullable Object obj) {
            return obj != null && super.p(obj);
        }

        @Override // com.google.common.collect.u, java.util.Map
        @Nullable
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public List<String> get(@Nullable Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        public c(Map<String, List<String>> map) {
            this.headers = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean u(Map.Entry entry) {
            if (entry.getKey() != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map
        public boolean containsValue(@Nullable Object obj) {
            return super.j(obj);
        }

        @Override // com.google.common.collect.u, java.util.Map
        public Set<Map.Entry<String, List<String>>> entrySet() {
            return f1.b(super.entrySet(), new com.google.common.base.p() { // from class: com.google.android.exoplayer2.upstream.v
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return t.c.u((Map.Entry) obj);
                }
            });
        }

        @Override // java.util.Map
        public int hashCode() {
            return super.q();
        }

        @Override // com.google.common.collect.u, java.util.Map
        public boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            if (super.size() == 1 && super.containsKey(null)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.u, java.util.Map
        public Set<String> keySet() {
            return f1.b(super.keySet(), new com.google.common.base.p() { // from class: com.google.android.exoplayer2.upstream.u
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return t.c.v((String) obj);
                }
            });
        }

        @Override // com.google.common.collect.u, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    private URL i(URL url, @Nullable String str, o oVar) throws z {
        if (str == null) {
            throw new z("Null location redirect", oVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new z("Unsupported protocol redirect: " + protocol, oVar, 2001, 1);
            }
            if (this.allowCrossProtocolRedirects || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new z("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", oVar, 2001, 1);
        } catch (MalformedURLException e) {
            throw new z(e, oVar, 2001, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws z {
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                long j6 = this.bytesToRead;
                long j10 = -1;
                if (j6 != -1) {
                    j10 = j6 - this.bytesRead;
                }
                m(this.connection, j10);
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new z(e, (o) o0.j(this.dataSpec), 2000, 3);
                }
            }
            this.inputStream = null;
            h();
            if (this.opened) {
                this.opened = false;
                e();
            }
        } catch (Throwable th) {
            this.inputStream = null;
            h();
            if (this.opened) {
                this.opened = false;
                e();
            }
            throw th;
        }
    }

    @Deprecated
    public t() {
        this(null, 8000, 8000);
    }

    private void h() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                com.google.android.exoplayer2.util.t.d(TAG, "Unexpected error while disconnecting", e);
            }
            this.connection = null;
        }
    }

    private static boolean j(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpConnection.CONTENT_ENCODING));
    }

    private HttpURLConnection k(o oVar) throws IOException {
        URL url = new URL(oVar.uri.toString());
        int i10 = oVar.httpMethod;
        byte[] bArr = oVar.httpBody;
        long j6 = oVar.position;
        long j10 = oVar.length;
        boolean zD = oVar.d(1);
        if (!this.allowCrossProtocolRedirects && !this.keepPostFor302Redirects) {
            return l(url, i10, bArr, j6, j10, zD, true, oVar.httpRequestHeaders);
        }
        int i11 = 0;
        URL urlI = url;
        int i12 = i10;
        byte[] bArr2 = bArr;
        while (true) {
            int i13 = i11 + 1;
            if (i11 > 20) {
                throw new z(new NoRouteToHostException("Too many redirects: " + i13), oVar, 2001, 1);
            }
            long j11 = j6;
            long j12 = j6;
            int i14 = i12;
            URL url2 = urlI;
            long j13 = j10;
            HttpURLConnection httpURLConnectionL = l(urlI, i12, bArr2, j11, j10, zD, false, oVar.httpRequestHeaders);
            int responseCode = httpURLConnectionL.getResponseCode();
            String headerField = httpURLConnectionL.getHeaderField("Location");
            if ((i14 == 1 || i14 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionL.disconnect();
                urlI = i(url2, headerField, oVar);
                i12 = i14;
            } else {
                if (i14 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionL;
                }
                httpURLConnectionL.disconnect();
                if (this.keepPostFor302Redirects && responseCode == 302) {
                    i12 = i14;
                } else {
                    bArr2 = null;
                    i12 = 1;
                }
                urlI = i(url2, headerField, oVar);
            }
            i11 = i13;
            j6 = j12;
            j10 = j13;
        }
    }

    private static void m(@Nullable HttpURLConnection httpURLConnection, long j6) {
        int i10;
        if (httpURLConnection == null || (i10 = o0.SDK_INT) < 19 || i10 > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j6 == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j6 <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) com.google.android.exoplayer2.util.a.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            }
        } catch (Exception unused) {
        }
    }

    private int o(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        long j6 = this.bytesToRead;
        if (j6 != -1) {
            long j10 = j6 - this.bytesRead;
            if (j10 == 0) {
                return -1;
            }
            i11 = (int) Math.min(i11, j10);
        }
        int i12 = ((InputStream) o0.j(this.inputStream)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.bytesRead += (long) i12;
        d(i12);
        return i12;
    }

    private void p(long j6, o oVar) throws IOException {
        if (j6 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j6 > 0) {
            int i10 = ((InputStream) o0.j(this.inputStream)).read(bArr, 0, (int) Math.min(j6, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new z(new InterruptedIOException(), oVar, 2000, 1);
            }
            if (i10 == -1) {
                throw new z(oVar, 2008, 1);
            }
            j6 -= (long) i10;
            d(i10);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws z {
        byte[] bArrL0;
        this.dataSpec = oVar;
        long j6 = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        f(oVar);
        try {
            HttpURLConnection httpURLConnectionK = k(oVar);
            this.connection = httpURLConnectionK;
            this.responseCode = httpURLConnectionK.getResponseCode();
            String responseMessage = httpURLConnectionK.getResponseMessage();
            int i10 = this.responseCode;
            if (i10 < 200 || i10 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionK.getHeaderFields();
                if (this.responseCode == 416) {
                    if (oVar.position == d0.c(httpURLConnectionK.getHeaderField("Content-Range"))) {
                        this.opened = true;
                        g(oVar);
                        long j10 = oVar.length;
                        if (j10 != -1) {
                            return j10;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionK.getErrorStream();
                try {
                    bArrL0 = errorStream != null ? o0.L0(errorStream) : o0.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    bArrL0 = o0.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr = bArrL0;
                h();
                throw new b0(this.responseCode, responseMessage, this.responseCode == 416 ? new l(2008) : null, headerFields, oVar, bArr);
            }
            String contentType = httpURLConnectionK.getContentType();
            com.google.common.base.p<String> pVar = this.contentTypePredicate;
            if (pVar != null && !pVar.apply(contentType)) {
                h();
                throw new a0(contentType, oVar);
            }
            if (this.responseCode == 200) {
                long j11 = oVar.position;
                if (j11 != 0) {
                    j6 = j11;
                }
            }
            boolean zJ = j(httpURLConnectionK);
            if (zJ) {
                this.bytesToRead = oVar.length;
            } else {
                long j12 = oVar.length;
                if (j12 != -1) {
                    this.bytesToRead = j12;
                } else {
                    long jB = d0.b(httpURLConnectionK.getHeaderField("Content-Length"), httpURLConnectionK.getHeaderField("Content-Range"));
                    this.bytesToRead = jB != -1 ? jB - j6 : -1L;
                }
            }
            try {
                this.inputStream = httpURLConnectionK.getInputStream();
                if (zJ) {
                    this.inputStream = new GZIPInputStream(this.inputStream);
                }
                this.opened = true;
                g(oVar);
                try {
                    p(j6, oVar);
                    return this.bytesToRead;
                } catch (IOException e) {
                    h();
                    if (e instanceof z) {
                        throw ((z) e);
                    }
                    throw new z(e, oVar, 2000, 1);
                }
            } catch (IOException e2) {
                h();
                throw new z(e2, oVar, 2000, 1);
            }
        } catch (IOException e6) {
            h();
            throw z.c(e6, oVar, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.f, com.google.android.exoplayer2.upstream.k
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.connection;
        return httpURLConnection == null ? com.google.common.collect.b0.m() : new c(httpURLConnection.getHeaderFields());
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Deprecated
    public t(@Nullable String str) {
        this(str, 8000, 8000);
    }

    private HttpURLConnection l(URL url, int i10, @Nullable byte[] bArr, long j6, long j10, boolean z6, boolean z10, Map<String, String> map) throws IOException {
        String str;
        boolean z11;
        HttpURLConnection httpURLConnectionN = n(url);
        httpURLConnectionN.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnectionN.setReadTimeout(this.readTimeoutMillis);
        HashMap map2 = new HashMap();
        c0 c0Var = this.defaultRequestProperties;
        if (c0Var != null) {
            map2.putAll(c0Var.a());
        }
        map2.putAll(this.requestProperties.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionN.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = d0.a(j6, j10);
        if (strA != null) {
            httpURLConnectionN.setRequestProperty("Range", strA);
        }
        String str2 = this.userAgent;
        if (str2 != null) {
            httpURLConnectionN.setRequestProperty("User-Agent", str2);
        }
        if (z6) {
            str = "gzip";
        } else {
            str = "identity";
        }
        httpURLConnectionN.setRequestProperty("Accept-Encoding", str);
        httpURLConnectionN.setInstanceFollowRedirects(z10);
        if (bArr != null) {
            z11 = true;
        } else {
            z11 = false;
        }
        httpURLConnectionN.setDoOutput(z11);
        httpURLConnectionN.setRequestMethod(o.c(i10));
        if (bArr != null) {
            httpURLConnectionN.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionN.connect();
            OutputStream outputStream = httpURLConnectionN.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionN.connect();
        }
        return httpURLConnectionN;
    }

    @VisibleForTesting
    HttpURLConnection n(URL url) throws IOException {
        return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws z {
        try {
            return o(bArr, i10, i11);
        } catch (IOException e) {
            throw z.c(e, (o) o0.j(this.dataSpec), 2);
        }
    }

    @Deprecated
    public t(@Nullable String str, int i10, int i11) {
        this(str, i10, i11, false, null);
    }

    @Deprecated
    public t(@Nullable String str, int i10, int i11, boolean z6, @Nullable c0 c0Var) {
        this(str, i10, i11, z6, c0Var, null, false);
    }

    private t(@Nullable String str, int i10, int i11, boolean z6, @Nullable c0 c0Var, @Nullable com.google.common.base.p<String> pVar, boolean z10) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i10;
        this.readTimeoutMillis = i11;
        this.allowCrossProtocolRedirects = z6;
        this.defaultRequestProperties = c0Var;
        this.contentTypePredicate = pVar;
        this.requestProperties = new c0();
        this.keepPostFor302Redirects = z10;
    }
}
