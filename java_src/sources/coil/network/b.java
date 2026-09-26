package coil.network;

import coil.util.i;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.text.t;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.http.entity.mime.MIME;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jsoup.helper.HttpConnection;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    @NotNull
    public static final a Companion = new a(null);

    @Nullable
    private final coil.network.a cacheResponse;

    @Nullable
    private final Request networkRequest;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        private final boolean d(String str) {
            return t.w("Content-Length", str, true) || t.w(HttpConnection.CONTENT_ENCODING, str, true) || t.w(MIME.CONTENT_TYPE, str, true);
        }

        private final boolean e(String str) {
            return (t.w("Connection", str, true) || t.w("Keep-Alive", str, true) || t.w("Proxy-Authenticate", str, true) || t.w("Proxy-Authorization", str, true) || t.w("TE", str, true) || t.w("Trailers", str, true) || t.w("Transfer-Encoding", str, true) || t.w("Upgrade", str, true)) ? false : true;
        }

        @NotNull
        public final Headers a(@NotNull Headers headers, @NotNull Headers headers2) {
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                String strName = headers.name(i10);
                String strValue = headers.value(i10);
                if ((!t.w("Warning", strName, true) || !t.K(strValue, "1", false, 2, null)) && (d(strName) || !e(strName) || headers2.get(strName) == null)) {
                    builder.add(strName, strValue);
                }
            }
            int size2 = headers2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                String strName2 = headers2.name(i11);
                if (!d(strName2) && e(strName2)) {
                    builder.add(strName2, headers2.value(i11));
                }
            }
            return builder.build();
        }

        public final boolean b(@NotNull Request request, @NotNull coil.network.a aVar) {
            if (!request.cacheControl().noStore() && !aVar.a().noStore() && !kotlin.jvm.internal.t.e(aVar.d().get("Vary"), "*")) {
                return true;
            }
            return false;
        }

        public final boolean c(@NotNull Request request, @NotNull Response response) {
            if (!request.cacheControl().noStore() && !response.cacheControl().noStore() && !kotlin.jvm.internal.t.e(response.headers().get("Vary"), "*")) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: coil.network.b$b, reason: collision with other inner class name */
    public static final class C0104b {
        private int ageSeconds;

        @Nullable
        private final coil.network.a cacheResponse;

        @Nullable
        private String etag;

        @Nullable
        private Date expires;

        @Nullable
        private Date lastModified;

        @Nullable
        private String lastModifiedString;
        private long receivedResponseMillis;

        @NotNull
        private final Request request;
        private long sentRequestMillis;

        @Nullable
        private Date servedDate;

        @Nullable
        private String servedDateString;

        private final long a() {
            Date date = this.servedDate;
            long jMax = date != null ? Math.max(0L, this.receivedResponseMillis - date.getTime()) : 0L;
            int i10 = this.ageSeconds;
            if (i10 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i10));
            }
            return jMax + (this.receivedResponseMillis - this.sentRequestMillis) + (coil.util.t.INSTANCE.a() - this.receivedResponseMillis);
        }

        private final long c() {
            coil.network.a aVar = this.cacheResponse;
            kotlin.jvm.internal.t.g(aVar);
            CacheControl cacheControlA = aVar.a();
            if (cacheControlA.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(cacheControlA.maxAgeSeconds());
            }
            Date date = this.expires;
            if (date != null) {
                Date date2 = this.servedDate;
                long time = date.getTime() - (date2 != null ? date2.getTime() : this.receivedResponseMillis);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.lastModified == null || this.request.url().query() != null) {
                return 0L;
            }
            Date date3 = this.servedDate;
            long time2 = date3 != null ? date3.getTime() : this.sentRequestMillis;
            Date date4 = this.lastModified;
            kotlin.jvm.internal.t.g(date4);
            long time3 = time2 - date4.getTime();
            if (time3 > 0) {
                return time3 / ((long) 10);
            }
            return 0L;
        }

        private final boolean d(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        public final b b() {
            String str;
            coil.network.a aVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            Object[] objArr6 = 0;
            Object[] objArr7 = 0;
            Object[] objArr8 = 0;
            Object[] objArr9 = 0;
            Object[] objArr10 = 0;
            Object[] objArr11 = 0;
            Object[] objArr12 = 0;
            if (this.cacheResponse == null) {
                return new b(this.request, aVar, objArr12 == true ? 1 : 0);
            }
            if (this.request.isHttps() && !this.cacheResponse.f()) {
                return new b(this.request, objArr11 == true ? 1 : 0, objArr10 == true ? 1 : 0);
            }
            CacheControl cacheControlA = this.cacheResponse.a();
            if (!b.Companion.b(this.request, this.cacheResponse)) {
                return new b(this.request, objArr9 == true ? 1 : 0, objArr8 == true ? 1 : 0);
            }
            CacheControl cacheControl = this.request.cacheControl();
            if (cacheControl.noCache() || d(this.request)) {
                return new b(this.request, objArr2 == true ? 1 : 0, objArr == true ? 1 : 0);
            }
            long jA = a();
            long jC = c();
            if (cacheControl.maxAgeSeconds() != -1) {
                jC = Math.min(jC, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
            }
            long millis = 0;
            long millis2 = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
            if (!cacheControlA.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                millis = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
            }
            if (!cacheControlA.noCache() && jA + millis2 < jC + millis) {
                return new b(objArr7 == true ? 1 : 0, this.cacheResponse, objArr6 == true ? 1 : 0);
            }
            String str2 = this.etag;
            if (str2 != null) {
                kotlin.jvm.internal.t.g(str2);
                str = "If-None-Match";
            } else {
                str = "If-Modified-Since";
                if (this.lastModified != null) {
                    str2 = this.lastModifiedString;
                    kotlin.jvm.internal.t.g(str2);
                } else {
                    if (this.servedDate == null) {
                        return new b(this.request, objArr4 == true ? 1 : 0, objArr3 == true ? 1 : 0);
                    }
                    str2 = this.servedDateString;
                    kotlin.jvm.internal.t.g(str2);
                }
            }
            return new b(this.request.newBuilder().addHeader(str, str2).build(), this.cacheResponse, objArr5 == true ? 1 : 0);
        }

        public C0104b(@NotNull Request request, @Nullable coil.network.a aVar) {
            this.request = request;
            this.cacheResponse = aVar;
            this.ageSeconds = -1;
            if (aVar != null) {
                this.sentRequestMillis = aVar.e();
                this.receivedResponseMillis = aVar.c();
                Headers headersD = aVar.d();
                int size = headersD.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String strName = headersD.name(i10);
                    if (t.w(strName, "Date", true)) {
                        this.servedDate = headersD.getDate("Date");
                        this.servedDateString = headersD.value(i10);
                    } else if (t.w(strName, "Expires", true)) {
                        this.expires = headersD.getDate("Expires");
                    } else if (t.w(strName, "Last-Modified", true)) {
                        this.lastModified = headersD.getDate("Last-Modified");
                        this.lastModifiedString = headersD.value(i10);
                    } else if (t.w(strName, "ETag", true)) {
                        this.etag = headersD.value(i10);
                    } else if (t.w(strName, "Age", true)) {
                        this.ageSeconds = i.A(headersD.value(i10), -1);
                    }
                }
            }
        }
    }

    public /* synthetic */ b(Request request, coil.network.a aVar, k kVar) {
        this(request, aVar);
    }

    @Nullable
    public final coil.network.a a() {
        return this.cacheResponse;
    }

    @Nullable
    public final Request b() {
        return this.networkRequest;
    }

    private b(Request request, coil.network.a aVar) {
        this.networkRequest = request;
        this.cacheResponse = aVar;
    }
}
