package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;
import kotlin.collections.v;
import kotlin.collections.y0;
import kotlin.io.c;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import kotlin.text.u;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.StatusLine;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.apache.http.entity.mime.MIME;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class Cache implements Closeable, Flushable {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int ENTRY_BODY = 1;
    private static final int ENTRY_COUNT = 2;
    private static final int ENTRY_METADATA = 0;
    private static final int VERSION = 201105;

    @NotNull
    private final DiskLruCache cache;
    private int hitCount;
    private int networkCount;
    private int requestCount;
    private int writeAbortCount;
    private int writeSuccessCount;

    private static final class CacheResponseBody extends ResponseBody {

        @NotNull
        private final BufferedSource bodySource;

        @Nullable
        private final String contentLength;

        @Nullable
        private final String contentType;

        @NotNull
        private final DiskLruCache.Snapshot snapshot;

        @NotNull
        public final DiskLruCache.Snapshot getSnapshot() {
            return this.snapshot;
        }

        @Override // okhttp3.ResponseBody
        @NotNull
        public BufferedSource source() {
            return this.bodySource;
        }

        public CacheResponseBody(@NotNull DiskLruCache.Snapshot snapshot, @Nullable String str, @Nullable String str2) {
            t.j(snapshot, "snapshot");
            this.snapshot = snapshot;
            this.contentType = str;
            this.contentLength = str2;
            this.bodySource = Okio.buffer(new ForwardingSource(this) { // from class: okhttp3.Cache.CacheResponseBody.1
                final /* synthetic */ CacheResponseBody this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(this.$source);
                    this.this$0 = this;
                }

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.this$0.getSnapshot().close();
                    super.close();
                }
            });
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            String str = this.contentLength;
            if (str == null) {
                return -1L;
            }
            return Util.toLongOrDefault(str, -1L);
        }

        @Override // okhttp3.ResponseBody
        @Nullable
        public MediaType contentType() {
            String str = this.contentType;
            if (str == null) {
                return null;
            }
            return MediaType.Companion.parse(str);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @NotNull
        public final Headers varyHeaders(@NotNull Response response) {
            t.j(response, "<this>");
            Response responseNetworkResponse = response.networkResponse();
            t.g(responseNetworkResponse);
            return varyHeaders(responseNetworkResponse.request().headers(), response.headers());
        }

        private Companion() {
        }

        public final boolean hasVaryAll(@NotNull Response response) {
            t.j(response, "<this>");
            return varyFields(response.headers()).contains("*");
        }

        @NotNull
        public final String key(@NotNull HttpUrl url) {
            t.j(url, "url");
            return ByteString.Companion.encodeUtf8(url.toString()).md5().hex();
        }

        public final int readInt$okhttp(@NotNull BufferedSource source) throws IOException {
            t.j(source, "source");
            try {
                long decimalLong = source.readDecimalLong();
                String utf8LineStrict = source.readUtf8LineStrict();
                if (decimalLong >= 0 && decimalLong <= 2147483647L && utf8LineStrict.length() <= 0) {
                    return (int) decimalLong;
                }
                throw new IOException("expected an int but was \"" + decimalLong + utf8LineStrict + kotlinx.serialization.json.internal.b.STRING);
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final boolean varyMatches(@NotNull Response cachedResponse, @NotNull Headers cachedRequest, @NotNull Request newRequest) {
            t.j(cachedResponse, "cachedResponse");
            t.j(cachedRequest, "cachedRequest");
            t.j(newRequest, "newRequest");
            Set<String> setVaryFields = varyFields(cachedResponse.headers());
            if ((setVaryFields instanceof Collection) && setVaryFields.isEmpty()) {
                return true;
            }
            for (String str : setVaryFields) {
                if (!t.e(cachedRequest.values(str), newRequest.headers(str))) {
                    return false;
                }
            }
            return true;
        }

        private final Set<String> varyFields(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            int i10 = 0;
            while (i10 < size) {
                int i11 = i10 + 1;
                if (kotlin.text.t.w("Vary", headers.name(i10), true)) {
                    String strValue = headers.value(i10);
                    if (treeSet == null) {
                        treeSet = new TreeSet(kotlin.text.t.y(u0.INSTANCE));
                    }
                    Iterator it = u.B0(strValue, new char[]{kotlinx.serialization.json.internal.b.COMMA}, false, 0, 6, null).iterator();
                    while (it.hasNext()) {
                        treeSet.add(u.b1((String) it.next()).toString());
                    }
                }
                i10 = i11;
            }
            if (treeSet == null) {
                return y0.e();
            }
            return treeSet;
        }

        private final Headers varyHeaders(Headers headers, Headers headers2) {
            Set<String> setVaryFields = varyFields(headers2);
            if (setVaryFields.isEmpty()) {
                return Util.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            int i10 = 0;
            while (i10 < size) {
                int i11 = i10 + 1;
                String strName = headers.name(i10);
                if (setVaryFields.contains(strName)) {
                    builder.add(strName, headers.value(i10));
                }
                i10 = i11;
            }
            return builder.build();
        }
    }

    private static final class Entry {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static final String RECEIVED_MILLIS;

        @NotNull
        private static final String SENT_MILLIS;
        private final int code;

        @Nullable
        private final Handshake handshake;

        @NotNull
        private final String message;

        @NotNull
        private final Protocol protocol;
        private final long receivedResponseMillis;

        @NotNull
        private final String requestMethod;

        @NotNull
        private final Headers responseHeaders;
        private final long sentRequestMillis;

        @NotNull
        private final HttpUrl url;

        @NotNull
        private final Headers varyHeaders;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public Entry(@NotNull Source rawSource) throws IOException {
            t.j(rawSource, "rawSource");
            try {
                BufferedSource bufferedSourceBuffer = Okio.buffer(rawSource);
                String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
                HttpUrl httpUrl = HttpUrl.Companion.parse(utf8LineStrict);
                if (httpUrl == null) {
                    IOException iOException = new IOException(t.s("Cache corruption for ", utf8LineStrict));
                    Platform.Companion.get().log("cache corruption", 5, iOException);
                    throw iOException;
                }
                this.url = httpUrl;
                this.requestMethod = bufferedSourceBuffer.readUtf8LineStrict();
                Headers.Builder builder = new Headers.Builder();
                int int$okhttp = Cache.Companion.readInt$okhttp(bufferedSourceBuffer);
                int i10 = 0;
                int i11 = 0;
                while (i11 < int$okhttp) {
                    i11++;
                    builder.addLenient$okhttp(bufferedSourceBuffer.readUtf8LineStrict());
                }
                this.varyHeaders = builder.build();
                StatusLine statusLine = StatusLine.Companion.parse(bufferedSourceBuffer.readUtf8LineStrict());
                this.protocol = statusLine.protocol;
                this.code = statusLine.code;
                this.message = statusLine.message;
                Headers.Builder builder2 = new Headers.Builder();
                int int$okhttp2 = Cache.Companion.readInt$okhttp(bufferedSourceBuffer);
                while (i10 < int$okhttp2) {
                    i10++;
                    builder2.addLenient$okhttp(bufferedSourceBuffer.readUtf8LineStrict());
                }
                String str = SENT_MILLIS;
                String str2 = builder2.get(str);
                String str3 = RECEIVED_MILLIS;
                String str4 = builder2.get(str3);
                builder2.removeAll(str);
                builder2.removeAll(str3);
                long j6 = 0;
                this.sentRequestMillis = str2 == null ? 0L : Long.parseLong(str2);
                if (str4 != null) {
                    j6 = Long.parseLong(str4);
                }
                this.receivedResponseMillis = j6;
                this.responseHeaders = builder2.build();
                if (isHttps()) {
                    String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
                    if (utf8LineStrict2.length() > 0) {
                        throw new IOException("expected \"\" but was \"" + utf8LineStrict2 + kotlinx.serialization.json.internal.b.STRING);
                    }
                    this.handshake = Handshake.Companion.get(!bufferedSourceBuffer.exhausted() ? TlsVersion.Companion.forJavaName(bufferedSourceBuffer.readUtf8LineStrict()) : TlsVersion.SSL_3_0, CipherSuite.Companion.forJavaName(bufferedSourceBuffer.readUtf8LineStrict()), readCertificateList(bufferedSourceBuffer), readCertificateList(bufferedSourceBuffer));
                } else {
                    this.handshake = null;
                }
                l0 l0Var = l0.INSTANCE;
                c.a(rawSource, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    c.a(rawSource, th);
                    throw th2;
                }
            }
        }

        static {
            Platform.Companion companion = Platform.Companion;
            SENT_MILLIS = t.s(companion.get().getPrefix(), "-Sent-Millis");
            RECEIVED_MILLIS = t.s(companion.get().getPrefix(), "-Received-Millis");
        }

        private final boolean isHttps() {
            return t.e(this.url.scheme(), ProxyConfig.MATCH_HTTPS);
        }

        private final List<Certificate> readCertificateList(BufferedSource bufferedSource) throws IOException {
            int int$okhttp = Cache.Companion.readInt$okhttp(bufferedSource);
            if (int$okhttp == -1) {
                return v.m();
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                ArrayList arrayList = new ArrayList(int$okhttp);
                int i10 = 0;
                while (i10 < int$okhttp) {
                    i10++;
                    String utf8LineStrict = bufferedSource.readUtf8LineStrict();
                    Buffer buffer = new Buffer();
                    ByteString byteStringDecodeBase64 = ByteString.Companion.decodeBase64(utf8LineStrict);
                    t.g(byteStringDecodeBase64);
                    buffer.write(byteStringDecodeBase64);
                    arrayList.add(certificateFactory.generateCertificate(buffer.inputStream()));
                }
                return arrayList;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        public final boolean matches(@NotNull Request request, @NotNull Response response) {
            t.j(request, "request");
            t.j(response, "response");
            return t.e(this.url, request.url()) && t.e(this.requestMethod, request.method()) && Cache.Companion.varyMatches(response, this.varyHeaders, request);
        }

        @NotNull
        public final Response response(@NotNull DiskLruCache.Snapshot snapshot) {
            t.j(snapshot, "snapshot");
            String str = this.responseHeaders.get(MIME.CONTENT_TYPE);
            String str2 = this.responseHeaders.get("Content-Length");
            return new Response.Builder().request(new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build()).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new CacheResponseBody(snapshot, str, str2)).handshake(this.handshake).sentRequestAtMillis(this.sentRequestMillis).receivedResponseAtMillis(this.receivedResponseMillis).build();
        }

        public final void writeTo(@NotNull DiskLruCache.Editor editor) throws IOException {
            t.j(editor, "editor");
            BufferedSink bufferedSinkBuffer = Okio.buffer(editor.newSink(0));
            try {
                bufferedSinkBuffer.writeUtf8(this.url.toString()).writeByte(10);
                bufferedSinkBuffer.writeUtf8(this.requestMethod).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.varyHeaders.size()).writeByte(10);
                int size = this.varyHeaders.size();
                int i10 = 0;
                while (i10 < size) {
                    int i11 = i10 + 1;
                    bufferedSinkBuffer.writeUtf8(this.varyHeaders.name(i10)).writeUtf8(": ").writeUtf8(this.varyHeaders.value(i10)).writeByte(10);
                    i10 = i11;
                }
                bufferedSinkBuffer.writeUtf8(new StatusLine(this.protocol, this.code, this.message).toString()).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.responseHeaders.size() + 2).writeByte(10);
                int size2 = this.responseHeaders.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    bufferedSinkBuffer.writeUtf8(this.responseHeaders.name(i12)).writeUtf8(": ").writeUtf8(this.responseHeaders.value(i12)).writeByte(10);
                }
                bufferedSinkBuffer.writeUtf8(SENT_MILLIS).writeUtf8(": ").writeDecimalLong(this.sentRequestMillis).writeByte(10);
                bufferedSinkBuffer.writeUtf8(RECEIVED_MILLIS).writeUtf8(": ").writeDecimalLong(this.receivedResponseMillis).writeByte(10);
                if (isHttps()) {
                    bufferedSinkBuffer.writeByte(10);
                    Handshake handshake = this.handshake;
                    t.g(handshake);
                    bufferedSinkBuffer.writeUtf8(handshake.cipherSuite().javaName()).writeByte(10);
                    writeCertList(bufferedSinkBuffer, this.handshake.peerCertificates());
                    writeCertList(bufferedSinkBuffer, this.handshake.localCertificates());
                    bufferedSinkBuffer.writeUtf8(this.handshake.tlsVersion().javaName()).writeByte(10);
                }
                l0 l0Var = l0.INSTANCE;
                c.a(bufferedSinkBuffer, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    c.a(bufferedSinkBuffer, th);
                    throw th2;
                }
            }
        }

        private final void writeCertList(BufferedSink bufferedSink, List<? extends Certificate> list) throws IOException {
            try {
                bufferedSink.writeDecimalLong(list.size()).writeByte(10);
                Iterator<? extends Certificate> it = list.iterator();
                while (it.hasNext()) {
                    byte[] bytes = it.next().getEncoded();
                    ByteString.Companion companion = ByteString.Companion;
                    t.i(bytes, "bytes");
                    bufferedSink.writeUtf8(ByteString.Companion.of$default(companion, bytes, 0, 0, 3, null).base64()).writeByte(10);
                }
            } catch (CertificateEncodingException e) {
                throw new IOException(e.getMessage());
            }
        }

        public Entry(@NotNull Response response) {
            t.j(response, "response");
            this.url = response.request().url();
            this.varyHeaders = Cache.Companion.varyHeaders(response);
            this.requestMethod = response.request().method();
            this.protocol = response.protocol();
            this.code = response.code();
            this.message = response.message();
            this.responseHeaders = response.headers();
            this.handshake = response.handshake();
            this.sentRequestMillis = response.sentRequestAtMillis();
            this.receivedResponseMillis = response.receivedResponseAtMillis();
        }
    }

    private final class RealCacheRequest implements CacheRequest {

        @NotNull
        private final Sink body;

        @NotNull
        private final Sink cacheOut;
        private boolean done;

        @NotNull
        private final DiskLruCache.Editor editor;
        final /* synthetic */ Cache this$0;

        @Override // okhttp3.internal.cache.CacheRequest
        @NotNull
        public Sink body() {
            return this.body;
        }

        public final boolean getDone() {
            return this.done;
        }

        public final void setDone(boolean z6) {
            this.done = z6;
        }

        public RealCacheRequest(@NotNull final Cache this$0, DiskLruCache.Editor editor) {
            t.j(this$0, "this$0");
            t.j(editor, "editor");
            this.this$0 = this$0;
            this.editor = editor;
            Sink sinkNewSink = editor.newSink(1);
            this.cacheOut = sinkNewSink;
            this.body = new ForwardingSink(sinkNewSink) { // from class: okhttp3.Cache.RealCacheRequest.1
                @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    Cache cache = this$0;
                    RealCacheRequest realCacheRequest = this;
                    synchronized (cache) {
                        if (realCacheRequest.getDone()) {
                            return;
                        }
                        realCacheRequest.setDone(true);
                        cache.setWriteSuccessCount$okhttp(cache.getWriteSuccessCount$okhttp() + 1);
                        super.close();
                        this.editor.commit();
                    }
                }
            };
        }

        @Override // okhttp3.internal.cache.CacheRequest
        public void abort() {
            Cache cache = this.this$0;
            synchronized (cache) {
                if (getDone()) {
                    return;
                }
                setDone(true);
                cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount$okhttp() + 1);
                Util.closeQuietly(this.cacheOut);
                try {
                    this.editor.abort();
                } catch (IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: okhttp3.Cache$urls$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<String>, f8.a {
        private boolean canRemove;

        @NotNull
        private final Iterator<DiskLruCache.Snapshot> delegate;

        @Nullable
        private String nextUrl;

        AnonymousClass1() {
            this.delegate = Cache.this.getCache$okhttp().snapshots();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextUrl != null) {
                return true;
            }
            this.canRemove = false;
            while (this.delegate.hasNext()) {
                try {
                    DiskLruCache.Snapshot next = this.delegate.next();
                    try {
                        continue;
                        this.nextUrl = Okio.buffer(next.getSource(0)).readUtf8LineStrict();
                        c.a(next, null);
                        return true;
                    } catch (Throwable th) {
                        try {
                            continue;
                            throw th;
                        } catch (Throwable th2) {
                            c.a(next, th);
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        @NotNull
        public String next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.nextUrl;
            t.g(str);
            this.nextUrl = null;
            this.canRemove = true;
            return str;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("remove() before next()".toString());
            }
            this.delegate.remove();
        }
    }

    public Cache(@NotNull File directory, long j6, @NotNull FileSystem fileSystem) {
        t.j(directory, "directory");
        t.j(fileSystem, "fileSystem");
        this.cache = new DiskLruCache(fileSystem, directory, VERSION, 2, j6, TaskRunner.INSTANCE);
    }

    @NotNull
    public static final String key(@NotNull HttpUrl httpUrl) {
        return Companion.key(httpUrl);
    }

    @NotNull
    public final DiskLruCache getCache$okhttp() {
        return this.cache;
    }

    public final int getWriteAbortCount$okhttp() {
        return this.writeAbortCount;
    }

    public final int getWriteSuccessCount$okhttp() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int networkCount() {
        return this.networkCount;
    }

    public final synchronized int requestCount() {
        return this.requestCount;
    }

    public final void setWriteAbortCount$okhttp(int i10) {
        this.writeAbortCount = i10;
    }

    public final void setWriteSuccessCount$okhttp(int i10) {
        this.writeSuccessCount = i10;
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.hitCount++;
    }

    public final synchronized void trackResponse$okhttp(@NotNull CacheStrategy cacheStrategy) {
        try {
            t.j(cacheStrategy, "cacheStrategy");
            this.requestCount++;
            if (cacheStrategy.getNetworkRequest() != null) {
                this.networkCount++;
            } else if (cacheStrategy.getCacheResponse() != null) {
                this.hitCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    private final void abortQuietly(DiskLruCache.Editor editor) {
        if (editor == null) {
            return;
        }
        try {
            editor.abort();
        } catch (IOException unused) {
        }
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_directory, reason: not valid java name */
    public final File m1654deprecated_directory() {
        return this.cache.getDirectory();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cache.close();
    }

    public final void delete() throws IOException {
        this.cache.delete();
    }

    @NotNull
    public final File directory() {
        return this.cache.getDirectory();
    }

    public final void evictAll() throws IOException {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        this.cache.flush();
    }

    @Nullable
    public final Response get$okhttp(@NotNull Request request) {
        t.j(request, "request");
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(Companion.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                Entry entry = new Entry(snapshot.getSource(0));
                Response response = entry.response(snapshot);
                if (entry.matches(request, response)) {
                    return response;
                }
                ResponseBody responseBodyBody = response.body();
                if (responseBodyBody != null) {
                    Util.closeQuietly(responseBodyBody);
                }
                return null;
            } catch (IOException unused) {
                Util.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
        }
    }

    public final void initialize() throws IOException {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    @Nullable
    public final CacheRequest put$okhttp(@NotNull Response response) {
        DiskLruCache.Editor editorEdit$default;
        t.j(response, "response");
        String strMethod = response.request().method();
        if (HttpMethod.INSTANCE.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!t.e(strMethod, ShareTarget.METHOD_GET)) {
            return null;
        }
        Companion companion = Companion;
        if (companion.hasVaryAll(response)) {
            return null;
        }
        Entry entry = new Entry(response);
        try {
            editorEdit$default = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
            if (editorEdit$default == null) {
                return null;
            }
            try {
                entry.writeTo(editorEdit$default);
                return new RealCacheRequest(this, editorEdit$default);
            } catch (IOException unused2) {
                abortQuietly(editorEdit$default);
                return null;
            }
        } catch (IOException unused3) {
            editorEdit$default = null;
        }
    }

    public final void remove$okhttp(@NotNull Request request) throws IOException {
        t.j(request, "request");
        this.cache.remove(Companion.key(request.url()));
    }

    public final long size() throws IOException {
        return this.cache.size();
    }

    public final void update$okhttp(@NotNull Response cached, @NotNull Response network) {
        DiskLruCache.Editor editorEdit;
        t.j(cached, "cached");
        t.j(network, "network");
        Entry entry = new Entry(network);
        ResponseBody responseBodyBody = cached.body();
        if (responseBodyBody == null) {
            throw new NullPointerException("null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        }
        try {
            editorEdit = ((CacheResponseBody) responseBodyBody).getSnapshot().edit();
            if (editorEdit == null) {
                return;
            }
            try {
                entry.writeTo(editorEdit);
                editorEdit.commit();
            } catch (IOException unused) {
                abortQuietly(editorEdit);
            }
        } catch (IOException unused2) {
            editorEdit = null;
        }
    }

    @NotNull
    public final Iterator<String> urls() throws IOException {
        return new AnonymousClass1();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(@NotNull File directory, long j6) {
        this(directory, j6, FileSystem.SYSTEM);
        t.j(directory, "directory");
    }
}
