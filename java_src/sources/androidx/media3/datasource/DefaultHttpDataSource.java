package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.webkit.ProxyConfig;
import com.google.common.base.p;
import com.google.common.collect.b0;
import com.google.common.collect.f1;
import com.google.common.collect.u;
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

/* JADX INFO: loaded from: classes.dex */
public class DefaultHttpDataSource extends BaseDataSource implements HttpDataSource {

    @UnstableApi
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;

    @UnstableApi
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
    private p<String> contentTypePredicate;

    @Nullable
    private DataSpec dataSpec;

    @Nullable
    private final HttpDataSource.RequestProperties defaultRequestProperties;

    @Nullable
    private InputStream inputStream;
    private final boolean keepPostFor302Redirects;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private int responseCode;

    @Nullable
    private final String userAgent;

    public static final class Factory implements HttpDataSource.Factory {
        private boolean allowCrossProtocolRedirects;

        @Nullable
        private p<String> contentTypePredicate;
        private boolean keepPostFor302Redirects;

        @Nullable
        private TransferListener transferListener;

        @Nullable
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        @UnstableApi
        public Factory b(boolean z6) {
            this.allowCrossProtocolRedirects = z6;
            return this;
        }

        @UnstableApi
        public Factory c(int i10) {
            this.connectTimeoutMs = i10;
            return this;
        }

        @UnstableApi
        public Factory d(int i10) {
            this.readTimeoutMs = i10;
            return this;
        }

        @UnstableApi
        public Factory e(@Nullable String str) {
            this.userAgent = str;
            return this;
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DefaultHttpDataSource createDataSource() {
            DefaultHttpDataSource defaultHttpDataSource = new DefaultHttpDataSource(this.userAgent, this.connectTimeoutMs, this.readTimeoutMs, this.allowCrossProtocolRedirects, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                defaultHttpDataSource.c(transferListener);
            }
            return defaultHttpDataSource;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class NullFilteringHeadersMap extends u<String, List<String>> {
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

        public NullFilteringHeadersMap(Map<String, List<String>> map) {
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
            return f1.b(super.entrySet(), new p() { // from class: androidx.media3.datasource.c
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return DefaultHttpDataSource.NullFilteringHeadersMap.u((Map.Entry) obj);
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
            return f1.b(super.keySet(), new p() { // from class: androidx.media3.datasource.d
                @Override // com.google.common.base.p
                public final boolean apply(Object obj) {
                    return DefaultHttpDataSource.NullFilteringHeadersMap.v((String) obj);
                }
            });
        }

        @Override // com.google.common.collect.u, java.util.Map
        public int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    private URL i(URL url, @Nullable String str, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        if (str == null) {
            throw new HttpDataSource.HttpDataSourceException("Null location redirect", dataSpec, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new HttpDataSource.HttpDataSourceException("Unsupported protocol redirect: " + protocol, dataSpec, 2001, 1);
            }
            if (this.allowCrossProtocolRedirects || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new HttpDataSource.HttpDataSourceException("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", dataSpec, 2001, 1);
        } catch (MalformedURLException e) {
            throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2001, 1);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public void close() throws HttpDataSource.HttpDataSourceException {
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
                    throw new HttpDataSource.HttpDataSourceException(e, (DataSpec) Util.j(this.dataSpec), 2000, 3);
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

    @UnstableApi
    @Deprecated
    public DefaultHttpDataSource() {
        this(null, 8000, 8000);
    }

    private void h() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.d(TAG, "Unexpected error while disconnecting", e);
            }
            this.connection = null;
        }
    }

    private static boolean j(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(HttpConnection.CONTENT_ENCODING));
    }

    private HttpURLConnection k(DataSpec dataSpec) throws IOException {
        URL url = new URL(dataSpec.uri.toString());
        int i10 = dataSpec.httpMethod;
        byte[] bArr = dataSpec.httpBody;
        long j6 = dataSpec.position;
        long j10 = dataSpec.length;
        boolean zD = dataSpec.d(1);
        if (!this.allowCrossProtocolRedirects && !this.keepPostFor302Redirects) {
            return l(url, i10, bArr, j6, j10, zD, true, dataSpec.httpRequestHeaders);
        }
        int i11 = 0;
        URL urlI = url;
        int i12 = i10;
        byte[] bArr2 = bArr;
        while (true) {
            int i13 = i11 + 1;
            if (i11 > 20) {
                throw new HttpDataSource.HttpDataSourceException(new NoRouteToHostException("Too many redirects: " + i13), dataSpec, 2001, 1);
            }
            long j11 = j6;
            long j12 = j6;
            int i14 = i12;
            URL url2 = urlI;
            long j13 = j10;
            HttpURLConnection httpURLConnectionL = l(urlI, i12, bArr2, j11, j10, zD, false, dataSpec.httpRequestHeaders);
            int responseCode = httpURLConnectionL.getResponseCode();
            String headerField = httpURLConnectionL.getHeaderField("Location");
            if ((i14 == 1 || i14 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionL.disconnect();
                urlI = i(url2, headerField, dataSpec);
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
                urlI = i(url2, headerField, dataSpec);
            }
            i11 = i13;
            j6 = j12;
            j10 = j13;
        }
    }

    private static void m(@Nullable HttpURLConnection httpURLConnection, long j6) {
        int i10;
        if (httpURLConnection == null || (i10 = Util.SDK_INT) < 19 || i10 > 20) {
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
                Method declaredMethod = ((Class) Assertions.e(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
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
        int i12 = ((InputStream) Util.j(this.inputStream)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.bytesRead += (long) i12;
        d(i12);
        return i12;
    }

    private void p(long j6, DataSpec dataSpec) throws IOException {
        if (j6 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j6 > 0) {
            int i10 = ((InputStream) Util.j(this.inputStream)).read(bArr, 0, (int) Math.min(j6, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new HttpDataSource.HttpDataSourceException(new InterruptedIOException(), dataSpec, 2000, 1);
            }
            if (i10 == -1) {
                throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
            }
            j6 -= (long) i10;
            d(i10);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public long b(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        byte[] bArrJ1;
        this.dataSpec = dataSpec;
        long j6 = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        f(dataSpec);
        try {
            HttpURLConnection httpURLConnectionK = k(dataSpec);
            this.connection = httpURLConnectionK;
            this.responseCode = httpURLConnectionK.getResponseCode();
            String responseMessage = httpURLConnectionK.getResponseMessage();
            int i10 = this.responseCode;
            if (i10 < 200 || i10 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionK.getHeaderFields();
                if (this.responseCode == 416) {
                    if (dataSpec.position == HttpUtil.c(httpURLConnectionK.getHeaderField("Content-Range"))) {
                        this.opened = true;
                        g(dataSpec);
                        long j10 = dataSpec.length;
                        if (j10 != -1) {
                            return j10;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionK.getErrorStream();
                try {
                    bArrJ1 = errorStream != null ? Util.j1(errorStream) : Util.EMPTY_BYTE_ARRAY;
                } catch (IOException unused) {
                    bArrJ1 = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr = bArrJ1;
                h();
                throw new HttpDataSource.InvalidResponseCodeException(this.responseCode, responseMessage, this.responseCode == 416 ? new DataSourceException(2008) : null, headerFields, dataSpec, bArr);
            }
            String contentType = httpURLConnectionK.getContentType();
            p<String> pVar = this.contentTypePredicate;
            if (pVar != null && !pVar.apply(contentType)) {
                h();
                throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
            }
            if (this.responseCode == 200) {
                long j11 = dataSpec.position;
                if (j11 != 0) {
                    j6 = j11;
                }
            }
            boolean zJ = j(httpURLConnectionK);
            if (zJ) {
                this.bytesToRead = dataSpec.length;
            } else {
                long j12 = dataSpec.length;
                if (j12 != -1) {
                    this.bytesToRead = j12;
                } else {
                    long jB = HttpUtil.b(httpURLConnectionK.getHeaderField("Content-Length"), httpURLConnectionK.getHeaderField("Content-Range"));
                    this.bytesToRead = jB != -1 ? jB - j6 : -1L;
                }
            }
            try {
                this.inputStream = httpURLConnectionK.getInputStream();
                if (zJ) {
                    this.inputStream = new GZIPInputStream(this.inputStream);
                }
                this.opened = true;
                g(dataSpec);
                try {
                    p(j6, dataSpec);
                    return this.bytesToRead;
                } catch (IOException e) {
                    h();
                    if (e instanceof HttpDataSource.HttpDataSourceException) {
                        throw ((HttpDataSource.HttpDataSourceException) e);
                    }
                    throw new HttpDataSource.HttpDataSourceException(e, dataSpec, 2000, 1);
                }
            } catch (IOException e2) {
                h();
                throw new HttpDataSource.HttpDataSourceException(e2, dataSpec, 2000, 1);
            }
        } catch (IOException e6) {
            h();
            throw HttpDataSource.HttpDataSourceException.c(e6, dataSpec, 1);
        }
    }

    @Override // androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.connection;
        return httpURLConnection == null ? b0.m() : new NullFilteringHeadersMap(httpURLConnection.getHeaderFields());
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    @UnstableApi
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.connection;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @UnstableApi
    @Deprecated
    public DefaultHttpDataSource(@Nullable String str) {
        this(str, 8000, 8000);
    }

    private HttpURLConnection l(URL url, int i10, @Nullable byte[] bArr, long j6, long j10, boolean z6, boolean z10, Map<String, String> map) throws IOException {
        String str;
        boolean z11;
        HttpURLConnection httpURLConnectionN = n(url);
        httpURLConnectionN.setConnectTimeout(this.connectTimeoutMillis);
        httpURLConnectionN.setReadTimeout(this.readTimeoutMillis);
        HashMap map2 = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            map2.putAll(requestProperties.a());
        }
        map2.putAll(this.requestProperties.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionN.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = HttpUtil.a(j6, j10);
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
        httpURLConnectionN.setRequestMethod(DataSpec.c(i10));
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

    @Override // androidx.media3.common.DataReader
    @UnstableApi
    public int read(byte[] bArr, int i10, int i11) throws HttpDataSource.HttpDataSourceException {
        try {
            return o(bArr, i10, i11);
        } catch (IOException e) {
            throw HttpDataSource.HttpDataSourceException.c(e, (DataSpec) Util.j(this.dataSpec), 2);
        }
    }

    @UnstableApi
    @Deprecated
    public DefaultHttpDataSource(@Nullable String str, int i10, int i11) {
        this(str, i10, i11, false, null);
    }

    @UnstableApi
    @Deprecated
    public DefaultHttpDataSource(@Nullable String str, int i10, int i11, boolean z6, @Nullable HttpDataSource.RequestProperties requestProperties) {
        this(str, i10, i11, z6, requestProperties, null, false);
    }

    private DefaultHttpDataSource(@Nullable String str, int i10, int i11, boolean z6, @Nullable HttpDataSource.RequestProperties requestProperties, @Nullable p<String> pVar, boolean z10) {
        super(true);
        this.userAgent = str;
        this.connectTimeoutMillis = i10;
        this.readTimeoutMillis = i11;
        this.allowCrossProtocolRedirects = z6;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = pVar;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.keepPostFor302Redirects = z10;
    }
}
