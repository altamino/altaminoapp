package okhttp3.internal.cache;

import com.narvii.util.DateUtils;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class CacheStrategy {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private final Response cacheResponse;

    @Nullable
    private final Request networkRequest;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Code duplicated, block: B:24:0x003b  */
        public final boolean isCacheable(@NotNull Response response, @NotNull Request request) {
            t.j(response, "response");
            t.j(request, "request");
            int iCode = response.code();
            if (iCode != 200 && iCode != 410 && iCode != 414 && iCode != 501 && iCode != 203 && iCode != 204) {
                if (iCode == 307) {
                    if (Response.header$default(response, "Expires", null, 2, null) == null && response.cacheControl().maxAgeSeconds() == -1 && !response.cacheControl().isPublic() && !response.cacheControl().isPrivate()) {
                        return false;
                    }
                } else if (iCode != 308 && iCode != 404 && iCode != 405) {
                    switch (iCode) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            if (Response.header$default(response, "Expires", null, 2, null) == null) {
                                return false;
                            }
                            break;
                        default:
                            return false;
                    }
                }
            }
            return (response.cacheControl().noStore() || request.cacheControl().noStore()) ? false : true;
        }
    }

    public static final class Factory {
        private int ageSeconds;

        @Nullable
        private final Response cacheResponse;

        @Nullable
        private String etag;

        @Nullable
        private Date expires;

        @Nullable
        private Date lastModified;

        @Nullable
        private String lastModifiedString;
        private final long nowMillis;
        private long receivedResponseMillis;

        @NotNull
        private final Request request;
        private long sentRequestMillis;

        @Nullable
        private Date servedDate;

        @Nullable
        private String servedDateString;

        @NotNull
        public final Request getRequest$okhttp() {
            return this.request;
        }

        public Factory(long j6, @NotNull Request request, @Nullable Response response) {
            t.j(request, "request");
            this.nowMillis = j6;
            this.request = request;
            this.cacheResponse = response;
            this.ageSeconds = -1;
            if (response != null) {
                this.sentRequestMillis = response.sentRequestAtMillis();
                this.receivedResponseMillis = response.receivedResponseAtMillis();
                Headers headers = response.headers();
                int size = headers.size();
                int i10 = 0;
                while (i10 < size) {
                    int i11 = i10 + 1;
                    String strName = headers.name(i10);
                    String strValue = headers.value(i10);
                    if (kotlin.text.t.w(strName, "Date", true)) {
                        this.servedDate = DatesKt.toHttpDateOrNull(strValue);
                        this.servedDateString = strValue;
                    } else if (kotlin.text.t.w(strName, "Expires", true)) {
                        this.expires = DatesKt.toHttpDateOrNull(strValue);
                    } else if (kotlin.text.t.w(strName, "Last-Modified", true)) {
                        this.lastModified = DatesKt.toHttpDateOrNull(strValue);
                        this.lastModifiedString = strValue;
                    } else if (kotlin.text.t.w(strName, "ETag", true)) {
                        this.etag = strValue;
                    } else if (kotlin.text.t.w(strName, "Age", true)) {
                        this.ageSeconds = Util.toNonNegativeInt(strValue, -1);
                    }
                    i10 = i11;
                }
            }
        }

        private final long cacheResponseAge() {
            Date date = this.servedDate;
            long jMax = date != null ? Math.max(0L, this.receivedResponseMillis - date.getTime()) : 0L;
            int i10 = this.ageSeconds;
            if (i10 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i10));
            }
            long j6 = this.receivedResponseMillis;
            return jMax + (j6 - this.sentRequestMillis) + (this.nowMillis - j6);
        }

        private final CacheStrategy computeCandidate() {
            String str;
            if (this.cacheResponse == null) {
                return new CacheStrategy(this.request, null);
            }
            if (this.request.isHttps() && this.cacheResponse.handshake() == null) {
                return new CacheStrategy(this.request, null);
            }
            if (!CacheStrategy.Companion.isCacheable(this.cacheResponse, this.request)) {
                return new CacheStrategy(this.request, null);
            }
            CacheControl cacheControl = this.request.cacheControl();
            if (cacheControl.noCache() || hasConditions(this.request)) {
                return new CacheStrategy(this.request, null);
            }
            CacheControl cacheControl2 = this.cacheResponse.cacheControl();
            long jCacheResponseAge = cacheResponseAge();
            long jComputeFreshnessLifetime = computeFreshnessLifetime();
            if (cacheControl.maxAgeSeconds() != -1) {
                jComputeFreshnessLifetime = Math.min(jComputeFreshnessLifetime, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
            }
            long millis = 0;
            long millis2 = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
            if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                millis = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
            }
            if (!cacheControl2.noCache()) {
                long j6 = millis2 + jCacheResponseAge;
                if (j6 < millis + jComputeFreshnessLifetime) {
                    Response.Builder builderNewBuilder = this.cacheResponse.newBuilder();
                    if (j6 >= jComputeFreshnessLifetime) {
                        builderNewBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jCacheResponseAge > DateUtils.ONE_DAY && isFreshnessLifetimeHeuristic()) {
                        builderNewBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new CacheStrategy(null, builderNewBuilder.build());
                }
            }
            String str2 = this.etag;
            if (str2 != null) {
                str = "If-None-Match";
            } else {
                if (this.lastModified != null) {
                    str2 = this.lastModifiedString;
                } else {
                    if (this.servedDate == null) {
                        return new CacheStrategy(this.request, null);
                    }
                    str2 = this.servedDateString;
                }
                str = "If-Modified-Since";
            }
            Headers.Builder builderNewBuilder2 = this.request.headers().newBuilder();
            t.g(str2);
            builderNewBuilder2.addLenient$okhttp(str, str2);
            return new CacheStrategy(this.request.newBuilder().headers(builderNewBuilder2.build()).build(), this.cacheResponse);
        }

        private final long computeFreshnessLifetime() {
            Long lValueOf;
            Response response = this.cacheResponse;
            t.g(response);
            CacheControl cacheControl = response.cacheControl();
            if (cacheControl.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
            }
            Date date = this.expires;
            if (date != null) {
                Date date2 = this.servedDate;
                lValueOf = date2 != null ? Long.valueOf(date2.getTime()) : null;
                long time = date.getTime() - (lValueOf == null ? this.receivedResponseMillis : lValueOf.longValue());
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.lastModified == null || this.cacheResponse.request().url().query() != null) {
                return 0L;
            }
            Date date3 = this.servedDate;
            lValueOf = date3 != null ? Long.valueOf(date3.getTime()) : null;
            long jLongValue = lValueOf == null ? this.sentRequestMillis : lValueOf.longValue();
            Date date4 = this.lastModified;
            t.g(date4);
            long time2 = jLongValue - date4.getTime();
            if (time2 > 0) {
                return time2 / ((long) 10);
            }
            return 0L;
        }

        private final boolean hasConditions(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        private final boolean isFreshnessLifetimeHeuristic() {
            Response response = this.cacheResponse;
            t.g(response);
            return response.cacheControl().maxAgeSeconds() == -1 && this.expires == null;
        }

        @NotNull
        public final CacheStrategy compute() {
            CacheStrategy cacheStrategyComputeCandidate = computeCandidate();
            if (cacheStrategyComputeCandidate.getNetworkRequest() != null && this.request.cacheControl().onlyIfCached()) {
                return new CacheStrategy(null, null);
            }
            return cacheStrategyComputeCandidate;
        }
    }

    @Nullable
    public final Response getCacheResponse() {
        return this.cacheResponse;
    }

    @Nullable
    public final Request getNetworkRequest() {
        return this.networkRequest;
    }

    public CacheStrategy(@Nullable Request request, @Nullable Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }
}
