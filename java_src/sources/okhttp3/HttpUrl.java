package okhttp3;

import a8.c;
import androidx.webkit.ProxyConfig;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import j8.o;
import java.io.EOFException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.v;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.g;
import kotlin.text.u;
import kotlin.text.w;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpUrl {

    @NotNull
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";

    @NotNull
    public static final String FRAGMENT_ENCODE_SET = "";

    @NotNull
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";

    @NotNull
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";

    @NotNull
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";

    @NotNull
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";

    @NotNull
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";

    @NotNull
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";

    @NotNull
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";

    @NotNull
    public static final String QUERY_ENCODE_SET = " \"'<>#";

    @NotNull
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";

    @Nullable
    private final String fragment;

    @NotNull
    private final String host;
    private final boolean isHttps;

    @NotNull
    private final String password;

    @NotNull
    private final List<String> pathSegments;
    private final int port;

    @Nullable
    private final List<String> queryNamesAndValues;

    @NotNull
    private final String scheme;

    @NotNull
    private final String url;

    @NotNull
    private final String username;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static final class Builder {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final String INVALID_HOST = "Invalid URL host";

        @Nullable
        private String encodedFragment;

        @NotNull
        private final List<String> encodedPathSegments;

        @Nullable
        private List<String> encodedQueryNamesAndValues;

        @Nullable
        private String host;

        @Nullable
        private String scheme;

        @NotNull
        private String encodedUsername = "";

        @NotNull
        private String encodedPassword = "";
        private int port = -1;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i10, int i11) {
                try {
                    int i12 = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i10, i11, "", false, false, false, false, null, 248, null));
                    if (1 > i12 || i12 >= 65536) {
                        return -1;
                    }
                    return i12;
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i10, int i11) {
                int i12 = 0;
                while (i10 < i11) {
                    int i13 = i10 + 1;
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i12++;
                    i10 = i13;
                }
                return i12;
            }

            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i10, int i11) {
                while (i10 < i11) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt == '[') {
                        do {
                            i10++;
                            if (i10 >= i11) {
                                break;
                            }
                        } while (str.charAt(i10) != ']');
                    } else if (cCharAt == ':') {
                        return i10;
                    }
                    i10++;
                }
                return i11;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int schemeDelimiterOffset(String str, int i10, int i11) {
                if (i11 - i10 < 2) {
                    return -1;
                }
                char cCharAt = str.charAt(i10);
                if ((t.l(cCharAt, 97) < 0 || t.l(cCharAt, 122) > 0) && (t.l(cCharAt, 65) < 0 || t.l(cCharAt, 90) > 0)) {
                    return -1;
                }
                int i12 = i10 + 1;
                while (i12 < i11) {
                    int i13 = i12 + 1;
                    char cCharAt2 = str.charAt(i12);
                    if (('a' > cCharAt2 || cCharAt2 >= '{') && (('A' > cCharAt2 || cCharAt2 >= '[') && !(('0' <= cCharAt2 && cCharAt2 < ':') || cCharAt2 == '+' || cCharAt2 == '-' || cCharAt2 == '.'))) {
                        if (cCharAt2 == ':') {
                            return i12;
                        }
                        return -1;
                    }
                    i12 = i13;
                }
                return -1;
            }
        }

        private final void push(String str, int i10, int i11, boolean z6, boolean z10) {
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z10, false, false, false, null, 240, null);
            if (isDot(strCanonicalize$okhttp$default)) {
                return;
            }
            if (isDotDot(strCanonicalize$okhttp$default)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).length() == 0) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, strCanonicalize$okhttp$default);
            } else {
                this.encodedPathSegments.add(strCanonicalize$okhttp$default);
            }
            if (z6) {
                this.encodedPathSegments.add("");
            }
        }

        @NotNull
        public final Builder addEncodedQueryParameter(@NotNull String encodedName, @Nullable String str) {
            t.j(encodedName, "encodedName");
            if (getEncodedQueryNamesAndValues$okhttp() == null) {
                setEncodedQueryNamesAndValues$okhttp(new ArrayList());
            }
            List<String> encodedQueryNamesAndValues$okhttp = getEncodedQueryNamesAndValues$okhttp();
            t.g(encodedQueryNamesAndValues$okhttp);
            Companion companion = HttpUrl.Companion;
            encodedQueryNamesAndValues$okhttp.add(Companion.canonicalize$okhttp$default(companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            List<String> encodedQueryNamesAndValues$okhttp2 = getEncodedQueryNamesAndValues$okhttp();
            t.g(encodedQueryNamesAndValues$okhttp2);
            encodedQueryNamesAndValues$okhttp2.add(str == null ? null : Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            return this;
        }

        @NotNull
        public final Builder addPathSegments(@NotNull String pathSegments) {
            t.j(pathSegments, "pathSegments");
            return addPathSegments(pathSegments, false);
        }

        @NotNull
        public final Builder addQueryParameter(@NotNull String name, @Nullable String str) {
            t.j(name, "name");
            if (getEncodedQueryNamesAndValues$okhttp() == null) {
                setEncodedQueryNamesAndValues$okhttp(new ArrayList());
            }
            List<String> encodedQueryNamesAndValues$okhttp = getEncodedQueryNamesAndValues$okhttp();
            t.g(encodedQueryNamesAndValues$okhttp);
            Companion companion = HttpUrl.Companion;
            encodedQueryNamesAndValues$okhttp.add(Companion.canonicalize$okhttp$default(companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> encodedQueryNamesAndValues$okhttp2 = getEncodedQueryNamesAndValues$okhttp();
            t.g(encodedQueryNamesAndValues$okhttp2);
            encodedQueryNamesAndValues$okhttp2.add(str == null ? null : Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        @NotNull
        public final Builder encodedQuery(@Nullable String str) {
            List<String> queryNamesAndValues$okhttp = null;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 211, null);
                if (strCanonicalize$okhttp$default != null) {
                    queryNamesAndValues$okhttp = companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
                }
            }
            setEncodedQueryNamesAndValues$okhttp(queryNamesAndValues$okhttp);
            return this;
        }

        @Nullable
        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        @NotNull
        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        @NotNull
        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        @Nullable
        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        @NotNull
        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        @Nullable
        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        @Nullable
        public final String getScheme$okhttp() {
            return this.scheme;
        }

        @NotNull
        public final Builder parse$okhttp(@Nullable HttpUrl httpUrl, @NotNull String str) {
            int iDelimiterOffset;
            int i10;
            int i11;
            boolean z6;
            boolean z10;
            String input = str;
            t.j(input, "input");
            int iIndexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(input, 0, 0, 3, null);
            int iIndexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(input, iIndexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            Companion companion = Companion;
            int iSchemeDelimiterOffset = companion.schemeDelimiterOffset(input, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            boolean z11 = true;
            byte b7 = -1;
            if (iSchemeDelimiterOffset != -1) {
                if (kotlin.text.t.H(input, "https:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                    this.scheme = ProxyConfig.MATCH_HTTPS;
                    iIndexOfFirstNonAsciiWhitespace$default += 6;
                } else {
                    if (!kotlin.text.t.H(input, "http:", iIndexOfFirstNonAsciiWhitespace$default, true)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected URL scheme 'http' or 'https' but was '");
                        String strSubstring = input.substring(0, iSchemeDelimiterOffset);
                        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb.append(strSubstring);
                        sb.append('\'');
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.scheme = ProxyConfig.MATCH_HTTP;
                    iIndexOfFirstNonAsciiWhitespace$default += 5;
                }
            } else {
                if (httpUrl == null) {
                    if (str.length() > 6) {
                        input = t.s(w.k1(input, 6), "...");
                    }
                    throw new IllegalArgumentException(t.s("Expected URL scheme 'http' or 'https' but no scheme was found for ", input));
                }
                this.scheme = httpUrl.scheme();
            }
            int iSlashCount = companion.slashCount(input, iIndexOfFirstNonAsciiWhitespace$default, iIndexOfLastNonAsciiWhitespace$default);
            byte b10 = Utf8.REPLACEMENT_BYTE;
            byte b11 = 35;
            if (iSlashCount >= 2 || httpUrl == null || !t.e(httpUrl.scheme(), this.scheme)) {
                boolean z12 = false;
                boolean z13 = false;
                int i12 = iIndexOfFirstNonAsciiWhitespace$default + iSlashCount;
                while (true) {
                    iDelimiterOffset = Util.delimiterOffset(input, "@/\\?#", i12, iIndexOfLastNonAsciiWhitespace$default);
                    byte bCharAt = iDelimiterOffset != iIndexOfLastNonAsciiWhitespace$default ? input.charAt(iDelimiterOffset) : b7;
                    if (bCharAt == b7 || bCharAt == b11 || bCharAt == 47 || bCharAt == 92 || bCharAt == b10) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z12) {
                            i11 = iDelimiterOffset;
                            z6 = z11;
                            this.encodedPassword += "%40" + Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i12, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                        } else {
                            int iDelimiterOffset2 = Util.delimiterOffset(input, kotlinx.serialization.json.internal.b.COLON, i12, iDelimiterOffset);
                            Companion companion2 = HttpUrl.Companion;
                            z6 = z11;
                            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion2, str, i12, iDelimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            if (z13) {
                                strCanonicalize$okhttp$default = this.encodedUsername + "%40" + strCanonicalize$okhttp$default;
                            }
                            this.encodedUsername = strCanonicalize$okhttp$default;
                            i11 = iDelimiterOffset;
                            if (iDelimiterOffset2 != i11) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(companion2, str, iDelimiterOffset2 + 1, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z10 = z6;
                            } else {
                                z10 = z12;
                            }
                            z12 = z10;
                            z13 = z6;
                        }
                        i12 = i11 + 1;
                        iIndexOfLastNonAsciiWhitespace$default = iIndexOfLastNonAsciiWhitespace$default;
                        z11 = z6;
                        b11 = 35;
                        b10 = Utf8.REPLACEMENT_BYTE;
                        b7 = -1;
                    }
                }
                i10 = iIndexOfLastNonAsciiWhitespace$default;
                Companion companion3 = Companion;
                int iPortColonOffset = companion3.portColonOffset(input, i12, iDelimiterOffset);
                int i13 = iPortColonOffset + 1;
                if (i13 < iDelimiterOffset) {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str, i12, iPortColonOffset, false, 4, null));
                    int port = companion3.parsePort(input, i13, iDelimiterOffset);
                    this.port = port;
                    if (port == -1) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid URL port: \"");
                        String strSubstring2 = input.substring(i13, iDelimiterOffset);
                        t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb2.append(strSubstring2);
                        sb2.append(kotlinx.serialization.json.internal.b.STRING);
                        throw new IllegalArgumentException(sb2.toString().toString());
                    }
                } else {
                    Companion companion4 = HttpUrl.Companion;
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(companion4, str, i12, iPortColonOffset, false, 4, null));
                    String str2 = this.scheme;
                    t.g(str2);
                    this.port = companion4.defaultPort(str2);
                }
                if (this.host == null) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Invalid URL host: \"");
                    String strSubstring3 = input.substring(i12, iPortColonOffset);
                    t.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb3.append(strSubstring3);
                    sb3.append(kotlinx.serialization.json.internal.b.STRING);
                    throw new IllegalArgumentException(sb3.toString().toString());
                }
                iIndexOfFirstNonAsciiWhitespace$default = iDelimiterOffset;
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (iIndexOfFirstNonAsciiWhitespace$default == iIndexOfLastNonAsciiWhitespace$default || input.charAt(iIndexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
                i10 = iIndexOfLastNonAsciiWhitespace$default;
            }
            int i14 = i10;
            int iDelimiterOffset3 = Util.delimiterOffset(input, "?#", iIndexOfFirstNonAsciiWhitespace$default, i14);
            resolvePath(input, iIndexOfFirstNonAsciiWhitespace$default, iDelimiterOffset3);
            if (iDelimiterOffset3 < i14 && input.charAt(iDelimiterOffset3) == '?') {
                int iDelimiterOffset4 = Util.delimiterOffset(input, '#', iDelimiterOffset3, i14);
                Companion companion5 = HttpUrl.Companion;
                this.encodedQueryNamesAndValues = companion5.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion5, str, iDelimiterOffset3 + 1, iDelimiterOffset4, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
                iDelimiterOffset3 = iDelimiterOffset4;
            }
            if (iDelimiterOffset3 < i14 && input.charAt(iDelimiterOffset3) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, iDelimiterOffset3 + 1, i14, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        @NotNull
        public final Builder port(int i10) {
            if (1 > i10 || i10 >= 65536) {
                throw new IllegalArgumentException(t.s("unexpected port: ", Integer.valueOf(i10)).toString());
            }
            setPort$okhttp(i10);
            return this;
        }

        @NotNull
        public final Builder query(@Nullable String str) {
            List<String> queryNamesAndValues$okhttp = null;
            if (str != null) {
                Companion companion = HttpUrl.Companion;
                String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null);
                if (strCanonicalize$okhttp$default != null) {
                    queryNamesAndValues$okhttp = companion.toQueryNamesAndValues$okhttp(strCanonicalize$okhttp$default);
                }
            }
            setEncodedQueryNamesAndValues$okhttp(queryNamesAndValues$okhttp);
            return this;
        }

        public final void setEncodedFragment$okhttp(@Nullable String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(@NotNull String str) {
            t.j(str, "<set-?>");
            this.encodedPassword = str;
        }

        public final void setEncodedQueryNamesAndValues$okhttp(@Nullable List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        public final void setEncodedUsername$okhttp(@NotNull String str) {
            t.j(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(@Nullable String str) {
            this.host = str;
        }

        public final void setPort$okhttp(int i10) {
            this.port = i10;
        }

        public final void setScheme$okhttp(@Nullable String str) {
            this.scheme = str;
        }

        private final Builder addPathSegments(String str, boolean z6) {
            int i10 = 0;
            do {
                int iDelimiterOffset = Util.delimiterOffset(str, "/\\", i10, str.length());
                push(str, i10, iDelimiterOffset, iDelimiterOffset < str.length(), z6);
                i10 = iDelimiterOffset + 1;
            } while (i10 <= str.length());
            return this;
        }

        private final int effectivePort() {
            int i10 = this.port;
            if (i10 != -1) {
                return i10;
            }
            Companion companion = HttpUrl.Companion;
            String str = this.scheme;
            t.g(str);
            return companion.defaultPort(str);
        }

        private final boolean isDot(String str) {
            return t.e(str, ".") || kotlin.text.t.w(str, "%2e", true);
        }

        private final boolean isDotDot(String str) {
            return t.e(str, "..") || kotlin.text.t.w(str, "%2e.", true) || kotlin.text.t.w(str, ".%2e", true) || kotlin.text.t.w(str, "%2e%2e", true);
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (list.remove(list.size() - 1).length() != 0 || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add("");
            } else {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, "");
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            List<String> list = this.encodedQueryNamesAndValues;
            t.g(list);
            int size = list.size() - 2;
            int iC = c.c(size, 0, -2);
            if (iC > size) {
                return;
            }
            while (true) {
                int i10 = size - 2;
                List<String> list2 = this.encodedQueryNamesAndValues;
                t.g(list2);
                if (t.e(str, list2.get(size))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    t.g(list3);
                    list3.remove(size + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    t.g(list4);
                    list4.remove(size);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    t.g(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (size == iC) {
                    return;
                } else {
                    size = i10;
                }
            }
        }

        private final void resolvePath(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.encodedPathSegments.clear();
                this.encodedPathSegments.add("");
                i10++;
            } else {
                List<String> list = this.encodedPathSegments;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = Util.delimiterOffset(str, "/\\", i12, i11);
                    boolean z6 = i10 < i11;
                    push(str, i12, i10, z6, true);
                    if (z6) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        @NotNull
        public final Builder addEncodedPathSegment(@NotNull String encodedPathSegment) {
            t.j(encodedPathSegment, "encodedPathSegment");
            push(encodedPathSegment, 0, encodedPathSegment.length(), false, true);
            return this;
        }

        @NotNull
        public final Builder addEncodedPathSegments(@NotNull String encodedPathSegments) {
            t.j(encodedPathSegments, "encodedPathSegments");
            return addPathSegments(encodedPathSegments, true);
        }

        @NotNull
        public final Builder addPathSegment(@NotNull String pathSegment) {
            t.j(pathSegment, "pathSegment");
            push(pathSegment, 0, pathSegment.length(), false, false);
            return this;
        }

        @NotNull
        public final HttpUrl build() {
            ArrayList arrayList;
            String str = this.scheme;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            Companion companion = HttpUrl.Companion;
            String strPercentDecode$okhttp$default = Companion.percentDecode$okhttp$default(companion, this.encodedUsername, 0, 0, false, 7, null);
            String strPercentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(companion, this.encodedPassword, 0, 0, false, 7, null);
            String str2 = this.host;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int iEffectivePort = effectivePort();
            List<String> list = this.encodedPathSegments;
            ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, (String) it.next(), 0, 0, false, 7, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 == null) {
                arrayList = null;
            } else {
                List<String> list3 = list2;
                arrayList = new ArrayList(kotlin.collections.w.x(list3, 10));
                for (String str3 : list3) {
                    arrayList.add(str3 == null ? null : Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, true, 3, null));
                }
            }
            String str4 = this.encodedFragment;
            return new HttpUrl(str, strPercentDecode$okhttp$default, strPercentDecode$okhttp$default2, str2, iEffectivePort, arrayList2, arrayList, str4 == null ? null : Companion.percentDecode$okhttp$default(HttpUrl.Companion, str4, 0, 0, false, 7, null), toString());
        }

        @NotNull
        public final Builder encodedFragment(@Nullable String str) {
            setEncodedFragment$okhttp(str == null ? null : Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", true, false, false, true, null, 179, null));
            return this;
        }

        @NotNull
        public final Builder encodedPassword(@NotNull String encodedPassword) {
            t.j(encodedPassword, "encodedPassword");
            setEncodedPassword$okhttp(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPassword, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null));
            return this;
        }

        @NotNull
        public final Builder encodedPath(@NotNull String encodedPath) {
            t.j(encodedPath, "encodedPath");
            if (!kotlin.text.t.K(encodedPath, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, false, 2, null)) {
                throw new IllegalArgumentException(t.s("unexpected encodedPath: ", encodedPath).toString());
            }
            resolvePath(encodedPath, 0, encodedPath.length());
            return this;
        }

        @NotNull
        public final Builder encodedUsername(@NotNull String encodedUsername) {
            t.j(encodedUsername, "encodedUsername");
            setEncodedUsername$okhttp(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedUsername, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null));
            return this;
        }

        @NotNull
        public final Builder fragment(@Nullable String str) {
            setEncodedFragment$okhttp(str == null ? null : Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", false, false, false, true, null, 187, null));
            return this;
        }

        @NotNull
        public final Builder host(@NotNull String host) {
            t.j(host, "host");
            String canonicalHost = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, host, 0, 0, false, 7, null));
            if (canonicalHost == null) {
                throw new IllegalArgumentException(t.s("unexpected host: ", host));
            }
            setHost$okhttp(canonicalHost);
            return this;
        }

        @NotNull
        public final Builder password(@NotNull String password) {
            t.j(password, "password");
            setEncodedPassword$okhttp(Companion.canonicalize$okhttp$default(HttpUrl.Companion, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, null));
            return this;
        }

        @NotNull
        public final Builder reencodeForUri$okhttp() {
            String host$okhttp = getHost$okhttp();
            setHost$okhttp(host$okhttp == null ? null : new g("[\"<>^`{|}]").c(host$okhttp, ""));
            int size = getEncodedPathSegments$okhttp().size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                getEncodedPathSegments$okhttp().set(i11, Companion.canonicalize$okhttp$default(HttpUrl.Companion, getEncodedPathSegments$okhttp().get(i11), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> encodedQueryNamesAndValues$okhttp = getEncodedQueryNamesAndValues$okhttp();
            if (encodedQueryNamesAndValues$okhttp != null) {
                int size2 = encodedQueryNamesAndValues$okhttp.size();
                while (i10 < size2) {
                    int i12 = i10 + 1;
                    String str = encodedQueryNamesAndValues$okhttp.get(i10);
                    encodedQueryNamesAndValues$okhttp.set(i10, str == null ? null : Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null));
                    i10 = i12;
                }
            }
            String encodedFragment$okhttp = getEncodedFragment$okhttp();
            setEncodedFragment$okhttp(encodedFragment$okhttp != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedFragment$okhttp, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null) : null);
            return this;
        }

        @NotNull
        public final Builder removeAllEncodedQueryParameters(@NotNull String encodedName) {
            t.j(encodedName, "encodedName");
            if (getEncodedQueryNamesAndValues$okhttp() == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            return this;
        }

        @NotNull
        public final Builder removeAllQueryParameters(@NotNull String name) {
            t.j(name, "name");
            if (getEncodedQueryNamesAndValues$okhttp() == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        @NotNull
        public final Builder scheme(@NotNull String scheme) {
            t.j(scheme, "scheme");
            if (kotlin.text.t.w(scheme, ProxyConfig.MATCH_HTTP, true)) {
                setScheme$okhttp(ProxyConfig.MATCH_HTTP);
            } else {
                if (!kotlin.text.t.w(scheme, ProxyConfig.MATCH_HTTPS, true)) {
                    throw new IllegalArgumentException(t.s("unexpected scheme: ", scheme));
                }
                setScheme$okhttp(ProxyConfig.MATCH_HTTPS);
            }
            return this;
        }

        @NotNull
        public final Builder setEncodedPathSegment(int i10, @NotNull String encodedPathSegment) {
            t.j(encodedPathSegment, "encodedPathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            getEncodedPathSegments$okhttp().set(i10, strCanonicalize$okhttp$default);
            if (isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) {
                throw new IllegalArgumentException(t.s("unexpected path segment: ", encodedPathSegment).toString());
            }
            return this;
        }

        @NotNull
        public final Builder setEncodedQueryParameter(@NotNull String encodedName, @Nullable String str) {
            t.j(encodedName, "encodedName");
            removeAllEncodedQueryParameters(encodedName);
            addEncodedQueryParameter(encodedName, str);
            return this;
        }

        @NotNull
        public final Builder setPathSegment(int i10, @NotNull String pathSegment) {
            t.j(pathSegment, "pathSegment");
            String strCanonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, pathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, null);
            if (isDot(strCanonicalize$okhttp$default) || isDotDot(strCanonicalize$okhttp$default)) {
                throw new IllegalArgumentException(t.s("unexpected path segment: ", pathSegment).toString());
            }
            getEncodedPathSegments$okhttp().set(i10, strCanonicalize$okhttp$default);
            return this;
        }

        @NotNull
        public final Builder setQueryParameter(@NotNull String name, @Nullable String str) {
            t.j(name, "name");
            removeAllQueryParameters(name);
            addQueryParameter(name, str);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:29:0x00a9  */
        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (getScheme$okhttp() != null) {
                sb.append(getScheme$okhttp());
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (getEncodedUsername$okhttp().length() > 0 || getEncodedPassword$okhttp().length() > 0) {
                sb.append(getEncodedUsername$okhttp());
                if (getEncodedPassword$okhttp().length() > 0) {
                    sb.append(kotlinx.serialization.json.internal.b.COLON);
                    sb.append(getEncodedPassword$okhttp());
                }
                sb.append('@');
            }
            if (getHost$okhttp() != null) {
                String host$okhttp = getHost$okhttp();
                t.g(host$okhttp);
                if (u.O(host$okhttp, kotlinx.serialization.json.internal.b.COLON, false, 2, null)) {
                    sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
                    sb.append(getHost$okhttp());
                    sb.append(kotlinx.serialization.json.internal.b.END_LIST);
                } else {
                    sb.append(getHost$okhttp());
                }
            }
            if (getPort$okhttp() != -1 || getScheme$okhttp() != null) {
                int iEffectivePort = effectivePort();
                if (getScheme$okhttp() != null) {
                    Companion companion = HttpUrl.Companion;
                    String scheme$okhttp = getScheme$okhttp();
                    t.g(scheme$okhttp);
                    if (iEffectivePort != companion.defaultPort(scheme$okhttp)) {
                        sb.append(kotlinx.serialization.json.internal.b.COLON);
                        sb.append(iEffectivePort);
                    }
                } else {
                    sb.append(kotlinx.serialization.json.internal.b.COLON);
                    sb.append(iEffectivePort);
                }
            }
            Companion companion2 = HttpUrl.Companion;
            companion2.toPathString$okhttp(getEncodedPathSegments$okhttp(), sb);
            if (getEncodedQueryNamesAndValues$okhttp() != null) {
                sb.append('?');
                List<String> encodedQueryNamesAndValues$okhttp = getEncodedQueryNamesAndValues$okhttp();
                t.g(encodedQueryNamesAndValues$okhttp);
                companion2.toQueryString$okhttp(encodedQueryNamesAndValues$okhttp, sb);
            }
            if (getEncodedFragment$okhttp() != null) {
                sb.append('#');
                sb.append(getEncodedFragment$okhttp());
            }
            String string = sb.toString();
            t.i(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }

        @NotNull
        public final Builder username(@NotNull String username) {
            t.j(username, "username");
            setEncodedUsername$okhttp(Companion.canonicalize$okhttp$default(HttpUrl.Companion, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, null));
            return this;
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        @NotNull
        public final Builder removePathSegment(int i10) {
            getEncodedPathSegments$okhttp().remove(i10);
            if (getEncodedPathSegments$okhttp().isEmpty()) {
                getEncodedPathSegments$okhttp().add("");
            }
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i10, int i11, String str2, boolean z6, boolean z10, boolean z11, boolean z12, Charset charset, int i12, Object obj) {
            return companion.canonicalize$okhttp(str, (i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? str.length() : i11, str2, (i12 & 8) != 0 ? false : z6, (i12 & 16) != 0 ? false : z10, (i12 & 32) != 0 ? false : z11, (i12 & 64) != 0 ? false : z12, (i12 & 128) != 0 ? null : charset);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x0067  */
        /* JADX WARN: Code duplicated, block: B:40:0x0069  */
        /* JADX WARN: Code duplicated, block: B:43:0x0071  */
        /* JADX WARN: Code duplicated, block: B:49:0x008a  */
        /* JADX WARN: Code duplicated, block: B:52:0x0093 A[LOOP:1: B:50:0x008d->B:52:0x0093, LOOP_END] */
        private final void writeCanonicalized(Buffer buffer, String str, int i10, int i11, String str2, boolean z6, boolean z10, boolean z11, boolean z12, Charset charset) throws EOFException {
            int iCharCount = i10;
            Buffer buffer2 = null;
            while (iCharCount < i11) {
                int iCodePointAt = str.codePointAt(iCharCount);
                if (!z6 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                    if (iCodePointAt == 43 && z11) {
                        buffer.writeUtf8(z6 ? org.slf4j.c.ANY_NON_NULL_MARKER : "%2B");
                    } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z12) || u.O(str2, (char) iCodePointAt, false, 2, null))) {
                        if (buffer2 == null) {
                            buffer2 = new Buffer();
                        }
                        if (charset != null || t.e(charset, StandardCharsets.UTF_8)) {
                            buffer2.writeUtf8CodePoint(iCodePointAt);
                        } else {
                            buffer2.writeString(str, iCharCount, Character.charCount(iCodePointAt) + iCharCount, charset);
                        }
                        while (!buffer2.exhausted()) {
                            byte b7 = buffer2.readByte();
                            buffer.writeByte(37);
                            buffer.writeByte((int) HttpUrl.HEX_DIGITS[((b7 & 255) >> 4) & 15]);
                            buffer.writeByte((int) HttpUrl.HEX_DIGITS[b7 & com.google.common.base.c.SI]);
                        }
                    } else {
                        if (iCodePointAt == 37) {
                            if (z6) {
                                if (z10) {
                                    if (!isPercentEncoded(str, iCharCount, i11)) {
                                    }
                                }
                            }
                            if (buffer2 == null) {
                                buffer2 = new Buffer();
                            }
                            if (charset != null) {
                                buffer2.writeUtf8CodePoint(iCodePointAt);
                            } else {
                                buffer2.writeUtf8CodePoint(iCodePointAt);
                            }
                            while (!buffer2.exhausted()) {
                                byte b10 = buffer2.readByte();
                                buffer.writeByte(37);
                                buffer.writeByte((int) HttpUrl.HEX_DIGITS[((b10 & 255) >> 4) & 15]);
                                buffer.writeByte((int) HttpUrl.HEX_DIGITS[b10 & com.google.common.base.c.SI]);
                            }
                        }
                        buffer.writeUtf8CodePoint(iCodePointAt);
                    }
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m1713deprecated_get(@NotNull String url) {
            t.j(url, "url");
            return get(url);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0041  */
        @NotNull
        public final String canonicalize$okhttp(@NotNull String str, int i10, int i11, @NotNull String encodeSet, boolean z6, boolean z10, boolean z11, boolean z12, @Nullable Charset charset) throws EOFException {
            t.j(str, "<this>");
            t.j(encodeSet, "encodeSet");
            int iCharCount = i10;
            while (true) {
                if (iCharCount >= i11) {
                    String strSubstring = str.substring(i10, i11);
                    t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return strSubstring;
                }
                int iCodePointAt = str.codePointAt(iCharCount);
                if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z12) || u.O(encodeSet, (char) iCodePointAt, false, 2, null))) {
                    break;
                }
                if (iCodePointAt == 37) {
                    if (!z6) {
                        break;
                    }
                    if (z10) {
                        if (isPercentEncoded(str, iCharCount, i11)) {
                        }
                    }
                    if (iCodePointAt == 43) {
                    }
                    iCharCount += Character.charCount(iCodePointAt);
                } else if (iCodePointAt == 43 || !z11) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i10, iCharCount);
                writeCanonicalized(buffer, str, iCharCount, i11, encodeSet, z6, z10, z11, z12, charset);
                return buffer.readUtf8();
            }
            Buffer buffer2 = new Buffer();
            buffer2.writeUtf8(str, i10, iCharCount);
            writeCanonicalized(buffer2, str, iCharCount, i11, encodeSet, z6, z10, z11, z12, charset);
            return buffer2.readUtf8();
        }

        @NotNull
        public final HttpUrl get(@NotNull String str) {
            t.j(str, "<this>");
            return new Builder().parse$okhttp(null, str).build();
        }

        private Companion() {
        }

        private final boolean isPercentEncoded(String str, int i10, int i11) {
            int i12 = i10 + 2;
            return i12 < i11 && str.charAt(i10) == '%' && Util.parseHexDigit(str.charAt(i10 + 1)) != -1 && Util.parseHexDigit(str.charAt(i12)) != -1;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i10, int i11, boolean z6, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = str.length();
            }
            if ((i12 & 4) != 0) {
                z6 = false;
            }
            return companion.percentDecode$okhttp(str, i10, i11, z6);
        }

        private final void writePercentDecoded(Buffer buffer, String str, int i10, int i11, boolean z6) {
            int i12;
            while (i10 < i11) {
                int iCodePointAt = str.codePointAt(i10);
                if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                    int hexDigit = Util.parseHexDigit(str.charAt(i10 + 1));
                    int hexDigit2 = Util.parseHexDigit(str.charAt(i12));
                    if (hexDigit == -1 || hexDigit2 == -1) {
                        buffer.writeUtf8CodePoint(iCodePointAt);
                        i10 += Character.charCount(iCodePointAt);
                    } else {
                        buffer.writeByte((hexDigit << 4) + hexDigit2);
                        i10 = Character.charCount(iCodePointAt) + i12;
                    }
                } else if (iCodePointAt == 43 && z6) {
                    buffer.writeByte(32);
                    i10++;
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                    i10 += Character.charCount(iCodePointAt);
                }
            }
        }

        @Nullable
        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m1715deprecated_get(@NotNull URL url) {
            t.j(url, "url");
            return get(url);
        }

        @Nullable
        /* JADX INFO: renamed from: -deprecated_parse, reason: not valid java name */
        public final HttpUrl m1716deprecated_parse(@NotNull String url) {
            t.j(url, "url");
            return parse(url);
        }

        public final int defaultPort(@NotNull String scheme) {
            t.j(scheme, "scheme");
            if (t.e(scheme, ProxyConfig.MATCH_HTTP)) {
                return 80;
            }
            return t.e(scheme, ProxyConfig.MATCH_HTTPS) ? 443 : -1;
        }

        @Nullable
        public final HttpUrl get(@NotNull URL url) {
            t.j(url, "<this>");
            String string = url.toString();
            t.i(string, "toString()");
            return parse(string);
        }

        @Nullable
        public final HttpUrl parse(@NotNull String str) {
            t.j(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @NotNull
        public final String percentDecode$okhttp(@NotNull String str, int i10, int i11, boolean z6) {
            t.j(str, "<this>");
            int i12 = i10;
            while (i12 < i11) {
                int i13 = i12 + 1;
                char cCharAt = str.charAt(i12);
                if (cCharAt == '%' || (cCharAt == '+' && z6)) {
                    Buffer buffer = new Buffer();
                    buffer.writeUtf8(str, i10, i12);
                    writePercentDecoded(buffer, str, i12, i11, z6);
                    return buffer.readUtf8();
                }
                i12 = i13;
            }
            String strSubstring = str.substring(i10, i11);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }

        public final void toPathString$okhttp(@NotNull List<String> list, @NotNull StringBuilder out) {
            t.j(list, "<this>");
            t.j(out, "out");
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                out.append('/');
                out.append(list.get(i10));
            }
        }

        @NotNull
        public final List<String> toQueryNamesAndValues$okhttp(@NotNull String str) {
            t.j(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (i10 <= str.length()) {
                int iB0 = u.b0(str, '&', i10, false, 4, null);
                if (iB0 == -1) {
                    iB0 = str.length();
                }
                int i11 = iB0;
                int iB1 = u.b0(str, '=', i10, false, 4, null);
                if (iB1 == -1 || iB1 > i11) {
                    String strSubstring = str.substring(i10, i11);
                    t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i10, iB1);
                    t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iB1 + 1, i11);
                    t.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    arrayList.add(strSubstring3);
                }
                i10 = i11 + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(@NotNull List<String> list, @NotNull StringBuilder out) {
            t.j(list, "<this>");
            t.j(out, "out");
            j8.g gVarU = o.u(o.v(0, list.size()), 2);
            int iE = gVarU.e();
            int iF = gVarU.f();
            int iG = gVarU.g();
            if ((iG <= 0 || iE > iF) && (iG >= 0 || iF > iE)) {
                return;
            }
            while (true) {
                int i10 = iE + iG;
                String str = list.get(iE);
                String str2 = list.get(iE + 1);
                if (iE > 0) {
                    out.append('&');
                }
                out.append(str);
                if (str2 != null) {
                    out.append('=');
                    out.append(str2);
                }
                if (iE == iF) {
                    return;
                } else {
                    iE = i10;
                }
            }
        }

        @Nullable
        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final HttpUrl m1714deprecated_get(@NotNull URI uri) {
            t.j(uri, "uri");
            return get(uri);
        }

        @Nullable
        public final HttpUrl get(@NotNull URI uri) {
            t.j(uri, "<this>");
            String string = uri.toString();
            t.i(string, "toString()");
            return parse(string);
        }
    }

    public static final int defaultPort(@NotNull String str) {
        return Companion.defaultPort(str);
    }

    @NotNull
    public static final HttpUrl get(@NotNull String str) {
        return Companion.get(str);
    }

    @Nullable
    public static final HttpUrl parse(@NotNull String str) {
        return Companion.parse(str);
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_fragment, reason: not valid java name */
    public final String m1700deprecated_fragment() {
        return this.fragment;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_host, reason: not valid java name */
    public final String m1701deprecated_host() {
        return this.host;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_password, reason: not valid java name */
    public final String m1702deprecated_password() {
        return this.password;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_pathSegments, reason: not valid java name */
    public final List<String> m1703deprecated_pathSegments() {
        return this.pathSegments;
    }

    /* JADX INFO: renamed from: -deprecated_port, reason: not valid java name */
    public final int m1705deprecated_port() {
        return this.port;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_scheme, reason: not valid java name */
    public final String m1709deprecated_scheme() {
        return this.scheme;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_username, reason: not valid java name */
    public final String m1712deprecated_username() {
        return this.username;
    }

    @Nullable
    public final String fragment() {
        return this.fragment;
    }

    @NotNull
    public final String host() {
        return this.host;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    @NotNull
    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    @NotNull
    public final String password() {
        return this.password;
    }

    @NotNull
    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    public final int port() {
        return this.port;
    }

    @NotNull
    public final String scheme() {
        return this.scheme;
    }

    @NotNull
    public String toString() {
        return this.url;
    }

    @NotNull
    public final String username() {
        return this.username;
    }

    public HttpUrl(@NotNull String scheme, @NotNull String username, @NotNull String password, @NotNull String host, int i10, @NotNull List<String> pathSegments, @Nullable List<String> list, @Nullable String str, @NotNull String url) {
        t.j(scheme, "scheme");
        t.j(username, "username");
        t.j(password, "password");
        t.j(host, "host");
        t.j(pathSegments, "pathSegments");
        t.j(url, "url");
        this.scheme = scheme;
        this.username = username;
        this.password = password;
        this.host = host;
        this.port = i10;
        this.pathSegments = pathSegments;
        this.queryNamesAndValues = list;
        this.fragment = str;
        this.url = url;
        this.isHttps = t.e(scheme, ProxyConfig.MATCH_HTTPS);
    }

    @Nullable
    public static final HttpUrl get(@NotNull URI uri) {
        return Companion.get(uri);
    }

    @Nullable
    public final String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        String strSubstring = this.url.substring(u.b0(this.url, '#', 0, false, 6, null) + 1);
        t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    @NotNull
    public final String encodedPassword() {
        if (this.password.length() == 0) {
            return "";
        }
        String strSubstring = this.url.substring(u.b0(this.url, kotlinx.serialization.json.internal.b.COLON, this.scheme.length() + 3, false, 4, null) + 1, u.b0(this.url, '@', 0, false, 6, null));
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @NotNull
    public final String encodedPath() {
        int iB0 = u.b0(this.url, '/', this.scheme.length() + 3, false, 4, null);
        String str = this.url;
        String strSubstring = this.url.substring(iB0, Util.delimiterOffset(str, "?#", iB0, str.length()));
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @NotNull
    public final List<String> encodedPathSegments() {
        int iB0 = u.b0(this.url, '/', this.scheme.length() + 3, false, 4, null);
        String str = this.url;
        int iDelimiterOffset = Util.delimiterOffset(str, "?#", iB0, str.length());
        ArrayList arrayList = new ArrayList();
        while (iB0 < iDelimiterOffset) {
            int i10 = iB0 + 1;
            int iDelimiterOffset2 = Util.delimiterOffset(this.url, '/', i10, iDelimiterOffset);
            String strSubstring = this.url.substring(i10, iDelimiterOffset2);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(strSubstring);
            iB0 = iDelimiterOffset2;
        }
        return arrayList;
    }

    @Nullable
    public final String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int iB0 = u.b0(this.url, '?', 0, false, 6, null) + 1;
        String str = this.url;
        String strSubstring = this.url.substring(iB0, Util.delimiterOffset(str, '#', iB0, str.length()));
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @NotNull
    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        String strSubstring = this.url.substring(length, Util.delimiterOffset(str, ":@", length, str.length()));
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HttpUrl) && t.e(((HttpUrl) obj).url, this.url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public final int pathSize() {
        return this.pathSegments.size();
    }

    @Nullable
    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    @Nullable
    public final String queryParameter(@NotNull String name) {
        t.j(name, "name");
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        j8.g gVarU = o.u(o.v(0, list.size()), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (true) {
                int i10 = iE + iG;
                if (t.e(name, this.queryNamesAndValues.get(iE))) {
                    return this.queryNamesAndValues.get(iE + 1);
                }
                if (iE != iF) {
                    iE = i10;
                }
            }
        }
        return null;
    }

    @NotNull
    public final String queryParameterName(int i10) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            throw new IndexOutOfBoundsException();
        }
        String str = list.get(i10 * 2);
        t.g(str);
        return str;
    }

    @NotNull
    public final Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return y0.e();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        j8.g gVarU = o.u(o.v(0, this.queryNamesAndValues.size()), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (true) {
                int i10 = iE + iG;
                String str = this.queryNamesAndValues.get(iE);
                t.g(str);
                linkedHashSet.add(str);
                if (iE == iF) {
                    break;
                }
                iE = i10;
            }
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        t.i(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    @Nullable
    public final String queryParameterValue(int i10) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i10 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    @NotNull
    public final List<String> queryParameterValues(@NotNull String name) {
        t.j(name, "name");
        if (this.queryNamesAndValues == null) {
            return v.m();
        }
        ArrayList arrayList = new ArrayList();
        j8.g gVarU = o.u(o.v(0, this.queryNamesAndValues.size()), 2);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (true) {
                int i10 = iE + iG;
                if (t.e(name, this.queryNamesAndValues.get(iE))) {
                    arrayList.add(this.queryNamesAndValues.get(iE + 1));
                }
                if (iE == iF) {
                    break;
                }
                iE = i10;
            }
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        t.i(listUnmodifiableList, "unmodifiableList(result)");
        return listUnmodifiableList;
    }

    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    @NotNull
    public final String redact() {
        Builder builderNewBuilder = newBuilder("/...");
        t.g(builderNewBuilder);
        return builderNewBuilder.username("").password("").build().toString();
    }

    @Nullable
    public final HttpUrl resolve(@NotNull String link) {
        t.j(link, "link");
        Builder builderNewBuilder = newBuilder(link);
        if (builderNewBuilder == null) {
            return null;
        }
        return builderNewBuilder.build();
    }

    @Nullable
    public final String topPrivateDomain() {
        if (Util.canParseAsIpAddress(this.host)) {
            return null;
        }
        return PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    @NotNull
    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    public static final HttpUrl get(@NotNull URL url) {
        return Companion.get(url);
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_encodedFragment, reason: not valid java name */
    public final String m1694deprecated_encodedFragment() {
        return encodedFragment();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_encodedPassword, reason: not valid java name */
    public final String m1695deprecated_encodedPassword() {
        return encodedPassword();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_encodedPath, reason: not valid java name */
    public final String m1696deprecated_encodedPath() {
        return encodedPath();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_encodedPathSegments, reason: not valid java name */
    public final List<String> m1697deprecated_encodedPathSegments() {
        return encodedPathSegments();
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_encodedQuery, reason: not valid java name */
    public final String m1698deprecated_encodedQuery() {
        return encodedQuery();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_encodedUsername, reason: not valid java name */
    public final String m1699deprecated_encodedUsername() {
        return encodedUsername();
    }

    /* JADX INFO: renamed from: -deprecated_pathSize, reason: not valid java name */
    public final int m1704deprecated_pathSize() {
        return pathSize();
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_query, reason: not valid java name */
    public final String m1706deprecated_query() {
        return query();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_queryParameterNames, reason: not valid java name */
    public final Set<String> m1707deprecated_queryParameterNames() {
        return queryParameterNames();
    }

    /* JADX INFO: renamed from: -deprecated_querySize, reason: not valid java name */
    public final int m1708deprecated_querySize() {
        return querySize();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_uri, reason: not valid java name */
    public final URI m1710deprecated_uri() {
        return uri();
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_url, reason: not valid java name */
    public final URL m1711deprecated_url() {
        return url();
    }

    @NotNull
    public final URI uri() {
        String string = newBuilder().reencodeForUri$okhttp().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                URI uriCreate = URI.create(new g("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").c(string, ""));
                t.i(uriCreate, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    @Nullable
    public final Builder newBuilder(@NotNull String link) {
        t.j(link, "link");
        try {
            return new Builder().parse$okhttp(this, link);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
