package okhttp3;

import com.google.firebase.sessions.settings.c;
import com.narvii.modulization.ConfigApiRequestHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.g;
import kotlin.text.u;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class Cookie {

    @NotNull
    private final String domain;
    private final long expiresAt;
    private final boolean hostOnly;
    private final boolean httpOnly;

    @NotNull
    private final String name;

    @NotNull
    private final String path;
    private final boolean persistent;
    private final boolean secure;

    @NotNull
    private final String value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public static final class Builder {

        @Nullable
        private String domain;
        private boolean hostOnly;
        private boolean httpOnly;

        @Nullable
        private String name;
        private boolean persistent;
        private boolean secure;

        @Nullable
        private String value;
        private long expiresAt = DatesKt.MAX_DATE;

        @NotNull
        private String path = c.FORWARD_SLASH_STRING;

        @NotNull
        public final Builder domain(@NotNull String domain) {
            t.j(domain, "domain");
            return domain(domain, false);
        }

        @NotNull
        public final Builder expiresAt(long j6) {
            if (j6 <= 0) {
                j6 = Long.MIN_VALUE;
            }
            if (j6 > DatesKt.MAX_DATE) {
                j6 = 253402300799999L;
            }
            this.expiresAt = j6;
            this.persistent = true;
            return this;
        }

        @NotNull
        public final Builder httpOnly() {
            this.httpOnly = true;
            return this;
        }

        @NotNull
        public final Builder secure() {
            this.secure = true;
            return this;
        }

        private final Builder domain(String str, boolean z6) {
            String canonicalHost = HostnamesKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(t.s("unexpected domain: ", str));
            }
            this.domain = canonicalHost;
            this.hostOnly = z6;
            return this;
        }

        @NotNull
        public final Cookie build() {
            String str = this.name;
            if (str == null) {
                throw new NullPointerException("builder.name == null");
            }
            String str2 = this.value;
            if (str2 == null) {
                throw new NullPointerException("builder.value == null");
            }
            long j6 = this.expiresAt;
            String str3 = this.domain;
            if (str3 != null) {
                return new Cookie(str, str2, j6, str3, this.path, this.secure, this.httpOnly, this.persistent, this.hostOnly, null);
            }
            throw new NullPointerException("builder.domain == null");
        }

        @NotNull
        public final Builder hostOnlyDomain(@NotNull String domain) {
            t.j(domain, "domain");
            return domain(domain, true);
        }

        @NotNull
        public final Builder name(@NotNull String name) {
            t.j(name, "name");
            if (!t.e(u.b1(name).toString(), name)) {
                throw new IllegalArgumentException("name is not trimmed".toString());
            }
            this.name = name;
            return this;
        }

        @NotNull
        public final Builder path(@NotNull String path) {
            t.j(path, "path");
            if (!kotlin.text.t.K(path, c.FORWARD_SLASH_STRING, false, 2, null)) {
                throw new IllegalArgumentException("path must start with '/'".toString());
            }
            this.path = path;
            return this;
        }

        @NotNull
        public final Builder value(@NotNull String value) {
            t.j(value, "value");
            if (!t.e(u.b1(value).toString(), value)) {
                throw new IllegalArgumentException("value is not trimmed".toString());
            }
            this.value = value;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private final String parseDomain(String str) {
            if (!(!kotlin.text.t.v(str, ".", false, 2, null))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            String canonicalHost = HostnamesKt.toCanonicalHost(u.t0(str, "."));
            if (canonicalHost != null) {
                return canonicalHost;
            }
            throw new IllegalArgumentException();
        }

        private Companion() {
        }

        private final int dateCharacterOffset(String str, int i10, int i11, boolean z6) {
            while (i10 < i11) {
                int i12 = i10 + 1;
                char cCharAt = str.charAt(i10);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt <= '9' && '0' <= cCharAt) || ((cCharAt <= 'z' && 'a' <= cCharAt) || ((cCharAt <= 'Z' && 'A' <= cCharAt) || cCharAt == ':'))) == (!z6)) {
                    return i10;
                }
                i10 = i12;
            }
            return i11;
        }

        private final long parseExpires(String str, int i10, int i11) {
            int iDateCharacterOffset = dateCharacterOffset(str, i10, i11, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int iC0 = -1;
            int i15 = -1;
            int i16 = -1;
            while (iDateCharacterOffset < i11) {
                int iDateCharacterOffset2 = dateCharacterOffset(str, iDateCharacterOffset + 1, i11, true);
                matcher.region(iDateCharacterOffset, iDateCharacterOffset2);
                if (i13 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String strGroup = matcher.group(1);
                    t.i(strGroup, "matcher.group(1)");
                    i13 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    t.i(strGroup2, "matcher.group(2)");
                    i15 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    t.i(strGroup3, "matcher.group(3)");
                    i16 = Integer.parseInt(strGroup3);
                } else if (i14 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String strGroup4 = matcher.group(1);
                    t.i(strGroup4, "matcher.group(1)");
                    i14 = Integer.parseInt(strGroup4);
                } else if (iC0 == -1 && matcher.usePattern(Cookie.MONTH_PATTERN).matches()) {
                    String strGroup5 = matcher.group(1);
                    t.i(strGroup5, "matcher.group(1)");
                    Locale US = Locale.US;
                    t.i(US, "US");
                    String lowerCase = strGroup5.toLowerCase(US);
                    t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    String strPattern = Cookie.MONTH_PATTERN.pattern();
                    t.i(strPattern, "MONTH_PATTERN.pattern()");
                    iC0 = u.c0(strPattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i12 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                    String strGroup6 = matcher.group(1);
                    t.i(strGroup6, "matcher.group(1)");
                    i12 = Integer.parseInt(strGroup6);
                }
                iDateCharacterOffset = dateCharacterOffset(str, iDateCharacterOffset2 + 1, i11, false);
            }
            if (70 <= i12 && i12 < 100) {
                i12 += 1900;
            }
            if (i12 >= 0 && i12 < 70) {
                i12 += 2000;
            }
            if (i12 < 1601) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (iC0 == -1) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (1 > i14 || i14 >= 32) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i13 < 0 || i13 >= 24) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i15 < 0 || i15 >= 60) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i16 < 0 || i16 >= 60) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i12);
            gregorianCalendar.set(2, iC0 - 1);
            gregorianCalendar.set(5, i14);
            gregorianCalendar.set(11, i13);
            gregorianCalendar.set(12, i15);
            gregorianCalendar.set(13, i16);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        private final long parseMaxAge(String str) {
            try {
                long j6 = Long.parseLong(str);
                if (j6 <= 0) {
                    return Long.MIN_VALUE;
                }
                return j6;
            } catch (NumberFormatException e) {
                if (new g("-?\\d+").b(str)) {
                    return kotlin.text.t.K(str, "-", false, 2, null) ? Long.MIN_VALUE : Long.MAX_VALUE;
                }
                throw e;
            }
        }

        @Nullable
        public final Cookie parse(@NotNull HttpUrl url, @NotNull String setCookie) {
            t.j(url, "url");
            t.j(setCookie, "setCookie");
            return parse$okhttp(System.currentTimeMillis(), url, setCookie);
        }

        /* JADX WARN: Code duplicated, block: B:43:0x00da A[PHI: r1
          0x00da: PHI (r1v23 long) = (r1v7 long), (r1v11 long) binds: [B:42:0x00d8, B:53:0x0100] A[DONT_GENERATE, DONT_INLINE]] */
        @Nullable
        public final Cookie parse$okhttp(long j6, @NotNull HttpUrl url, @NotNull String setCookie) {
            long j10;
            long j11;
            Cookie cookie;
            String str;
            String str2;
            t.j(url, "url");
            t.j(setCookie, "setCookie");
            int iDelimiterOffset$default = Util.delimiterOffset$default(setCookie, ';', 0, 0, 6, (Object) null);
            int iDelimiterOffset$default2 = Util.delimiterOffset$default(setCookie, '=', 0, iDelimiterOffset$default, 2, (Object) null);
            if (iDelimiterOffset$default2 == iDelimiterOffset$default) {
                return null;
            }
            String strTrimSubstring$default = Util.trimSubstring$default(setCookie, 0, iDelimiterOffset$default2, 1, null);
            if (strTrimSubstring$default.length() == 0 || Util.indexOfControlOrNonAscii(strTrimSubstring$default) != -1) {
                return null;
            }
            String strTrimSubstring = Util.trimSubstring(setCookie, iDelimiterOffset$default2 + 1, iDelimiterOffset$default);
            if (Util.indexOfControlOrNonAscii(strTrimSubstring) != -1) {
                return null;
            }
            int i10 = iDelimiterOffset$default + 1;
            int length = setCookie.length();
            String domain = null;
            String str3 = null;
            boolean z6 = false;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = true;
            long maxAge = -1;
            long expires = DatesKt.MAX_DATE;
            while (i10 < length) {
                int iDelimiterOffset = Util.delimiterOffset(setCookie, ';', i10, length);
                int iDelimiterOffset2 = Util.delimiterOffset(setCookie, '=', i10, iDelimiterOffset);
                String strTrimSubstring2 = Util.trimSubstring(setCookie, i10, iDelimiterOffset2);
                String strTrimSubstring3 = iDelimiterOffset2 < iDelimiterOffset ? Util.trimSubstring(setCookie, iDelimiterOffset2 + 1, iDelimiterOffset) : "";
                if (kotlin.text.t.w(strTrimSubstring2, "expires", true)) {
                    try {
                        expires = parseExpires(strTrimSubstring3, 0, strTrimSubstring3.length());
                        z11 = true;
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                    }
                } else if (kotlin.text.t.w(strTrimSubstring2, "max-age", true)) {
                    maxAge = parseMaxAge(strTrimSubstring3);
                    z11 = true;
                } else if (kotlin.text.t.w(strTrimSubstring2, "domain", true)) {
                    domain = parseDomain(strTrimSubstring3);
                    z12 = false;
                } else if (kotlin.text.t.w(strTrimSubstring2, ConfigApiRequestHelper.PATH_KEY, true)) {
                    str3 = strTrimSubstring3;
                } else if (kotlin.text.t.w(strTrimSubstring2, "secure", true)) {
                    z6 = true;
                } else if (kotlin.text.t.w(strTrimSubstring2, "httponly", true)) {
                    z10 = true;
                }
                i10 = iDelimiterOffset + 1;
            }
            long j12 = Long.MIN_VALUE;
            if (maxAge == Long.MIN_VALUE) {
                j10 = j12;
            } else if (maxAge != -1) {
                j12 = j6 + (maxAge <= 9223372036854775L ? maxAge * ((long) 1000) : Long.MAX_VALUE);
                if (j12 >= j6) {
                    j11 = DatesKt.MAX_DATE;
                    if (j12 <= DatesKt.MAX_DATE) {
                        j10 = j12;
                    }
                } else {
                    j11 = DatesKt.MAX_DATE;
                }
                j10 = j11;
            } else {
                j10 = expires;
            }
            String strHost = url.host();
            if (domain == null) {
                str = strHost;
                cookie = null;
            } else {
                if (!domainMatch(strHost, domain)) {
                    return null;
                }
                cookie = null;
                str = domain;
            }
            if (strHost.length() != str.length() && PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(str) == null) {
                return cookie;
            }
            String strSubstring = c.FORWARD_SLASH_STRING;
            String str4 = str3;
            if (str4 == null || !kotlin.text.t.K(str4, c.FORWARD_SLASH_STRING, false, 2, cookie)) {
                String strEncodedPath = url.encodedPath();
                int iH0 = u.h0(strEncodedPath, '/', 0, false, 6, null);
                if (iH0 != 0) {
                    strSubstring = strEncodedPath.substring(0, iH0);
                    t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                str2 = strSubstring;
            } else {
                str2 = str4;
            }
            return new Cookie(strTrimSubstring$default, strTrimSubstring, j10, str, str2, z6, z10, z11, z12, null);
        }

        @NotNull
        public final List<Cookie> parseAll(@NotNull HttpUrl url, @NotNull Headers headers) {
            t.j(url, "url");
            t.j(headers, "headers");
            List<String> listValues = headers.values("Set-Cookie");
            int size = listValues.size();
            ArrayList arrayList = null;
            int i10 = 0;
            while (i10 < size) {
                int i11 = i10 + 1;
                Cookie cookie = parse(url, listValues.get(i10));
                if (cookie != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(cookie);
                }
                i10 = i11;
            }
            if (arrayList == null) {
                return v.m();
            }
            List<Cookie> listUnmodifiableList = Collections.unmodifiableList(arrayList);
            t.i(listUnmodifiableList, "{\n        Collections.un…ableList(cookies)\n      }");
            return listUnmodifiableList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean domainMatch(String str, String str2) {
            if (t.e(str, str2)) {
                return true;
            }
            if (kotlin.text.t.v(str, str2, false, 2, null) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.canParseAsIpAddress(str)) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean pathMatch(HttpUrl httpUrl, String str) {
            String strEncodedPath = httpUrl.encodedPath();
            if (t.e(strEncodedPath, str)) {
                return true;
            }
            if (kotlin.text.t.K(strEncodedPath, str, false, 2, null) && (kotlin.text.t.v(str, c.FORWARD_SLASH_STRING, false, 2, null) || strEncodedPath.charAt(str.length()) == '/')) {
                return true;
            }
            return false;
        }
    }

    public /* synthetic */ Cookie(String str, String str2, long j6, String str3, String str4, boolean z6, boolean z10, boolean z11, boolean z12, k kVar) {
        this(str, str2, j6, str3, str4, z6, z10, z11, z12);
    }

    @Nullable
    public static final Cookie parse(@NotNull HttpUrl httpUrl, @NotNull String str) {
        return Companion.parse(httpUrl, str);
    }

    @NotNull
    public static final List<Cookie> parseAll(@NotNull HttpUrl httpUrl, @NotNull Headers headers) {
        return Companion.parseAll(httpUrl, headers);
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_domain, reason: not valid java name */
    public final String m1673deprecated_domain() {
        return this.domain;
    }

    /* JADX INFO: renamed from: -deprecated_expiresAt, reason: not valid java name */
    public final long m1674deprecated_expiresAt() {
        return this.expiresAt;
    }

    /* JADX INFO: renamed from: -deprecated_hostOnly, reason: not valid java name */
    public final boolean m1675deprecated_hostOnly() {
        return this.hostOnly;
    }

    /* JADX INFO: renamed from: -deprecated_httpOnly, reason: not valid java name */
    public final boolean m1676deprecated_httpOnly() {
        return this.httpOnly;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_name, reason: not valid java name */
    public final String m1677deprecated_name() {
        return this.name;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_path, reason: not valid java name */
    public final String m1678deprecated_path() {
        return this.path;
    }

    /* JADX INFO: renamed from: -deprecated_persistent, reason: not valid java name */
    public final boolean m1679deprecated_persistent() {
        return this.persistent;
    }

    /* JADX INFO: renamed from: -deprecated_secure, reason: not valid java name */
    public final boolean m1680deprecated_secure() {
        return this.secure;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_value, reason: not valid java name */
    public final String m1681deprecated_value() {
        return this.value;
    }

    @NotNull
    public final String domain() {
        return this.domain;
    }

    public final long expiresAt() {
        return this.expiresAt;
    }

    public final boolean hostOnly() {
        return this.hostOnly;
    }

    public final boolean httpOnly() {
        return this.httpOnly;
    }

    @NotNull
    public final String name() {
        return this.name;
    }

    @NotNull
    public final String path() {
        return this.path;
    }

    public final boolean persistent() {
        return this.persistent;
    }

    public final boolean secure() {
        return this.secure;
    }

    @NotNull
    public String toString() {
        return toString$okhttp(false);
    }

    @NotNull
    public final String value() {
        return this.value;
    }

    private Cookie(String str, String str2, long j6, String str3, String str4, boolean z6, boolean z10, boolean z11, boolean z12) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j6;
        this.domain = str3;
        this.path = str4;
        this.secure = z6;
        this.httpOnly = z10;
        this.persistent = z11;
        this.hostOnly = z12;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Cookie) {
            Cookie cookie = (Cookie) obj;
            if (t.e(cookie.name, this.name) && t.e(cookie.value, this.value) && cookie.expiresAt == this.expiresAt && t.e(cookie.domain, this.domain) && t.e(cookie.path, this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return ((((((((((((((((527 + this.name.hashCode()) * 31) + this.value.hashCode()) * 31) + i.a.a(this.expiresAt)) * 31) + this.domain.hashCode()) * 31) + this.path.hashCode()) * 31) + androidx.compose.foundation.c.a(this.secure)) * 31) + androidx.compose.foundation.c.a(this.httpOnly)) * 31) + androidx.compose.foundation.c.a(this.persistent)) * 31) + androidx.compose.foundation.c.a(this.hostOnly);
    }

    public final boolean matches(@NotNull HttpUrl url) {
        t.j(url, "url");
        if ((this.hostOnly ? t.e(url.host(), this.domain) : Companion.domainMatch(url.host(), this.domain)) && Companion.pathMatch(url, this.path)) {
            return !this.secure || url.isHttps();
        }
        return false;
    }

    @NotNull
    public final String toString$okhttp(boolean z6) {
        StringBuilder sb = new StringBuilder();
        sb.append(name());
        sb.append('=');
        sb.append(value());
        if (persistent()) {
            if (expiresAt() == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(DatesKt.toHttpDateString(new Date(expiresAt())));
            }
        }
        if (!hostOnly()) {
            sb.append("; domain=");
            if (z6) {
                sb.append(".");
            }
            sb.append(domain());
        }
        sb.append("; path=");
        sb.append(path());
        if (secure()) {
            sb.append("; secure");
        }
        if (httpOnly()) {
            sb.append("; httponly");
        }
        String string = sb.toString();
        t.i(string, "toString()");
        return string;
    }
}
