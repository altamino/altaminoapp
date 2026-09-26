package io.ktor.http;

import java.util.List;
import org.apache.http.entity.mime.MIME;
import org.jetbrains.annotations.NotNull;
import org.jsoup.helper.HttpConnection;

/* JADX INFO: loaded from: classes11.dex */
public final class o {

    @NotNull
    private static final String[] UnsafeHeadersArray;

    @NotNull
    private static final List<String> UnsafeHeadersList;

    @NotNull
    public static final o INSTANCE = new o();

    @NotNull
    private static final String Accept = "Accept";

    @NotNull
    private static final String AcceptCharset = "Accept-Charset";

    @NotNull
    private static final String AcceptEncoding = "Accept-Encoding";

    @NotNull
    private static final String AcceptLanguage = "Accept-Language";

    @NotNull
    private static final String AcceptRanges = "Accept-Ranges";

    @NotNull
    private static final String Age = "Age";

    @NotNull
    private static final String Allow = "Allow";

    @NotNull
    private static final String ALPN = "ALPN";

    @NotNull
    private static final String AuthenticationInfo = "Authentication-Info";

    @NotNull
    private static final String Authorization = "Authorization";

    @NotNull
    private static final String CacheControl = "Cache-Control";

    @NotNull
    private static final String Connection = "Connection";

    @NotNull
    private static final String ContentDisposition = MIME.CONTENT_DISPOSITION;

    @NotNull
    private static final String ContentEncoding = HttpConnection.CONTENT_ENCODING;

    @NotNull
    private static final String ContentLanguage = "Content-Language";

    @NotNull
    private static final String ContentLength = "Content-Length";

    @NotNull
    private static final String ContentLocation = "Content-Location";

    @NotNull
    private static final String ContentRange = "Content-Range";

    @NotNull
    private static final String ContentType = MIME.CONTENT_TYPE;

    @NotNull
    private static final String Cookie = "Cookie";

    @NotNull
    private static final String DASL = "DASL";

    @NotNull
    private static final String Date = "Date";

    @NotNull
    private static final String DAV = "DAV";

    @NotNull
    private static final String Depth = "Depth";

    @NotNull
    private static final String Destination = "Destination";

    @NotNull
    private static final String ETag = "ETag";

    @NotNull
    private static final String Expect = "Expect";

    @NotNull
    private static final String Expires = "Expires";

    @NotNull
    private static final String From = "From";

    @NotNull
    private static final String Forwarded = "Forwarded";

    @NotNull
    private static final String Host = "Host";

    @NotNull
    private static final String HTTP2Settings = "HTTP2-Settings";

    @NotNull
    private static final String If = "If";

    @NotNull
    private static final String IfMatch = "If-Match";

    @NotNull
    private static final String IfModifiedSince = "If-Modified-Since";

    @NotNull
    private static final String IfNoneMatch = "If-None-Match";

    @NotNull
    private static final String IfRange = "If-Range";

    @NotNull
    private static final String IfScheduleTagMatch = "If-Schedule-Tag-Match";

    @NotNull
    private static final String IfUnmodifiedSince = "If-Unmodified-Since";

    @NotNull
    private static final String LastModified = "Last-Modified";

    @NotNull
    private static final String Location = "Location";

    @NotNull
    private static final String LockToken = "Lock-Token";

    @NotNull
    private static final String Link = "Link";

    @NotNull
    private static final String MaxForwards = "Max-Forwards";

    @NotNull
    private static final String MIMEVersion = "MIME-Version";

    @NotNull
    private static final String OrderingType = "Ordering-Type";

    @NotNull
    private static final String Origin = "Origin";

    @NotNull
    private static final String Overwrite = "Overwrite";

    @NotNull
    private static final String Position = "Position";

    @NotNull
    private static final String Pragma = "Pragma";

    @NotNull
    private static final String Prefer = "Prefer";

    @NotNull
    private static final String PreferenceApplied = "Preference-Applied";

    @NotNull
    private static final String ProxyAuthenticate = "Proxy-Authenticate";

    @NotNull
    private static final String ProxyAuthenticationInfo = "Proxy-Authentication-Info";

    @NotNull
    private static final String ProxyAuthorization = "Proxy-Authorization";

    @NotNull
    private static final String PublicKeyPins = "Public-Key-Pins";

    @NotNull
    private static final String PublicKeyPinsReportOnly = "Public-Key-Pins-Report-Only";

    @NotNull
    private static final String Range = "Range";

    @NotNull
    private static final String Referrer = "Referer";

    @NotNull
    private static final String RetryAfter = "Retry-After";

    @NotNull
    private static final String ScheduleReply = "Schedule-Reply";

    @NotNull
    private static final String ScheduleTag = "Schedule-Tag";

    @NotNull
    private static final String SecWebSocketAccept = "Sec-WebSocket-Accept";

    @NotNull
    private static final String SecWebSocketExtensions = "Sec-WebSocket-Extensions";

    @NotNull
    private static final String SecWebSocketKey = "Sec-WebSocket-Key";

    @NotNull
    private static final String SecWebSocketProtocol = "Sec-WebSocket-Protocol";

    @NotNull
    private static final String SecWebSocketVersion = "Sec-WebSocket-Version";

    @NotNull
    private static final String Server = "Server";

    @NotNull
    private static final String SetCookie = "Set-Cookie";

    @NotNull
    private static final String SLUG = "SLUG";

    @NotNull
    private static final String StrictTransportSecurity = "Strict-Transport-Security";

    @NotNull
    private static final String TE = "TE";

    @NotNull
    private static final String Timeout = "Timeout";

    @NotNull
    private static final String Trailer = "Trailer";

    @NotNull
    private static final String TransferEncoding = "Transfer-Encoding";

    @NotNull
    private static final String Upgrade = "Upgrade";

    @NotNull
    private static final String UserAgent = "User-Agent";

    @NotNull
    private static final String Vary = "Vary";

    @NotNull
    private static final String Via = "Via";

    @NotNull
    private static final String Warning = "Warning";

    @NotNull
    private static final String WWWAuthenticate = "WWW-Authenticate";

    @NotNull
    private static final String AccessControlAllowOrigin = "Access-Control-Allow-Origin";

    @NotNull
    private static final String AccessControlAllowMethods = "Access-Control-Allow-Methods";

    @NotNull
    private static final String AccessControlAllowCredentials = "Access-Control-Allow-Credentials";

    @NotNull
    private static final String AccessControlAllowHeaders = "Access-Control-Allow-Headers";

    @NotNull
    private static final String AccessControlRequestMethod = "Access-Control-Request-Method";

    @NotNull
    private static final String AccessControlRequestHeaders = "Access-Control-Request-Headers";

    @NotNull
    private static final String AccessControlExposeHeaders = "Access-Control-Expose-Headers";

    @NotNull
    private static final String AccessControlMaxAge = "Access-Control-Max-Age";

    @NotNull
    private static final String XHttpMethodOverride = "X-Http-Method-Override";

    @NotNull
    private static final String XForwardedHost = "X-Forwarded-Host";

    @NotNull
    private static final String XForwardedServer = "X-Forwarded-Server";

    @NotNull
    private static final String XForwardedProto = "X-Forwarded-Proto";

    @NotNull
    private static final String XForwardedFor = "X-Forwarded-For";

    @NotNull
    private static final String XForwardedPort = "X-Forwarded-Port";

    @NotNull
    private static final String XRequestId = "X-Request-ID";

    @NotNull
    private static final String XCorrelationId = "X-Correlation-ID";

    @NotNull
    private static final String XTotalCount = "X-Total-Count";

    @NotNull
    public final String c() {
        return Accept;
    }

    @NotNull
    public final String d() {
        return AcceptCharset;
    }

    @NotNull
    public final String e() {
        return Authorization;
    }

    @NotNull
    public final String f() {
        return ContentEncoding;
    }

    @NotNull
    public final String g() {
        return ContentLength;
    }

    @NotNull
    public final String h() {
        return ContentRange;
    }

    @NotNull
    public final String i() {
        return ContentType;
    }

    @NotNull
    public final String j() {
        return Cookie;
    }

    @NotNull
    public final String k() {
        return Date;
    }

    @NotNull
    public final String l() {
        return ETag;
    }

    @NotNull
    public final String m() {
        return Expires;
    }

    @NotNull
    public final String n() {
        return IfModifiedSince;
    }

    @NotNull
    public final String o() {
        return IfRange;
    }

    @NotNull
    public final String p() {
        return IfUnmodifiedSince;
    }

    @NotNull
    public final String q() {
        return LastModified;
    }

    @NotNull
    public final String r() {
        return Location;
    }

    @NotNull
    public final String s() {
        return Range;
    }

    @NotNull
    public final String t() {
        return RetryAfter;
    }

    @NotNull
    public final String u() {
        return TransferEncoding;
    }

    @NotNull
    public final List<String> v() {
        return UnsafeHeadersList;
    }

    @NotNull
    public final String w() {
        return UserAgent;
    }

    static {
        String[] strArr = {"Transfer-Encoding", "Upgrade"};
        UnsafeHeadersArray = strArr;
        UnsafeHeadersList = kotlin.collections.o.c(strArr);
    }

    public final void a(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        int i10 = 0;
        int i11 = 0;
        while (i10 < name.length()) {
            char cCharAt = name.charAt(i10);
            int i12 = i11 + 1;
            if (kotlin.jvm.internal.t.l(cCharAt, 32) <= 0 || p.b(cCharAt)) {
                throw new x(name, i11);
            }
            i10++;
            i11 = i12;
        }
    }

    public final void b(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        int i10 = 0;
        int i11 = 0;
        while (i10 < value.length()) {
            char cCharAt = value.charAt(i10);
            int i12 = i11 + 1;
            if (kotlin.jvm.internal.t.l(cCharAt, 32) < 0 && cCharAt != '\t') {
                throw new y(value, i11);
            }
            i10++;
            i11 = i12;
        }
    }

    private o() {
    }
}
