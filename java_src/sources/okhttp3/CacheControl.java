package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class CacheControl {

    @Nullable
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();

    @NotNull
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j6) {
            if (j6 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) j6;
        }

        @NotNull
        public final Builder immutable() {
            this.immutable = true;
            return this;
        }

        @NotNull
        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        @NotNull
        public final Builder noStore() {
            this.noStore = true;
            return this;
        }

        @NotNull
        public final Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        @NotNull
        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }

        @NotNull
        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }

        @NotNull
        public final Builder maxAge(int i10, @NotNull TimeUnit timeUnit) {
            t.j(timeUnit, "timeUnit");
            if (i10 < 0) {
                throw new IllegalArgumentException(t.s("maxAge < 0: ", Integer.valueOf(i10)).toString());
            }
            this.maxAgeSeconds = clampToInt(timeUnit.toSeconds(i10));
            return this;
        }

        @NotNull
        public final Builder maxStale(int i10, @NotNull TimeUnit timeUnit) {
            t.j(timeUnit, "timeUnit");
            if (i10 < 0) {
                throw new IllegalArgumentException(t.s("maxStale < 0: ", Integer.valueOf(i10)).toString());
            }
            this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(i10));
            return this;
        }

        @NotNull
        public final Builder minFresh(int i10, @NotNull TimeUnit timeUnit) {
            t.j(timeUnit, "timeUnit");
            if (i10 < 0) {
                throw new IllegalArgumentException(t.s("minFresh < 0: ", Integer.valueOf(i10)).toString());
            }
            this.minFreshSeconds = clampToInt(timeUnit.toSeconds(i10));
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        static /* synthetic */ int indexOfElement$default(Companion companion, String str, String str2, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            return companion.indexOfElement(str, str2, i10);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x004d  */
        /* JADX WARN: Code duplicated, block: B:28:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:39:0x00f7  */
        /* JADX WARN: Code duplicated, block: B:42:0x0105  */
        /* JADX WARN: Code duplicated, block: B:54:0x0143  */
        /* JADX WARN: Code duplicated, block: B:57:0x0151  */
        /* JADX WARN: Code duplicated, block: B:75:0x00d5 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:76:0x00e4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:77:0x00ce A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:78:0x017a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:79:0x00dd A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:80:0x010d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:81:0x011c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:82:0x012b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:83:0x015a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:84:0x016a A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:85:0x00f1 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:86:0x00ec A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:87:0x00ff A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:88:0x013b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:89:0x014b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:90:0x0172 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:91:0x0162 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:92:0x0133 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:93:0x0123 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:94:0x0114 A[SYNTHETIC] */
        @NotNull
        public final CacheControl parse(@NotNull Headers headers) {
            int iIndexOfElement;
            int iIndexOfElement2;
            String string;
            String string2;
            Headers headers2 = headers;
            t.j(headers2, "headers");
            int size = headers.size();
            boolean z6 = true;
            boolean z10 = true;
            int i10 = 0;
            String str = null;
            boolean z11 = false;
            boolean z12 = false;
            int nonNegativeInt = -1;
            int nonNegativeInt2 = -1;
            boolean z13 = false;
            boolean z14 = false;
            boolean z15 = false;
            int nonNegativeInt3 = -1;
            int nonNegativeInt4 = -1;
            boolean z16 = false;
            boolean z17 = false;
            boolean z18 = false;
            while (i10 < size) {
                int i11 = i10 + 1;
                String strName = headers2.name(i10);
                String strValue = headers2.value(i10);
                if (kotlin.text.t.w(strName, "Cache-Control", z6)) {
                    if (str == null) {
                        str = strValue;
                    }
                    iIndexOfElement = 0;
                    while (iIndexOfElement < strValue.length()) {
                        iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                        String strSubstring = strValue.substring(iIndexOfElement, iIndexOfElement2);
                        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        string = u.b1(strSubstring).toString();
                        if (iIndexOfElement2 != strValue.length() || strValue.charAt(iIndexOfElement2) == ',' || strValue.charAt(iIndexOfElement2) == ';') {
                            iIndexOfElement = iIndexOfElement2 + 1;
                            string2 = null;
                        } else {
                            int iIndexOfNonWhitespace = Util.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                            if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                                iIndexOfElement = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                                String strSubstring2 = strValue.substring(iIndexOfNonWhitespace, iIndexOfElement);
                                t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                                string2 = u.b1(strSubstring2).toString();
                            } else {
                                int i12 = iIndexOfNonWhitespace + 1;
                                int iB0 = u.b0(strValue, kotlinx.serialization.json.internal.b.STRING, i12, false, 4, null);
                                string2 = strValue.substring(i12, iB0);
                                t.i(string2, "this as java.lang.String…ing(startIndex, endIndex)");
                                iIndexOfElement = iB0 + 1;
                            }
                        }
                        if (kotlin.text.t.w("no-cache", string, true)) {
                            z6 = true;
                            z11 = true;
                        } else if (kotlin.text.t.w("no-store", string, true)) {
                            z6 = true;
                            z12 = true;
                        } else {
                            if (kotlin.text.t.w("max-age", string, true)) {
                                nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                            } else if (kotlin.text.t.w("s-maxage", string, true)) {
                                nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                            } else if (kotlin.text.t.w("private", string, true)) {
                                z6 = true;
                                z13 = true;
                            } else if (kotlin.text.t.w("public", string, true)) {
                                z6 = true;
                                z14 = true;
                            } else if (kotlin.text.t.w("must-revalidate", string, true)) {
                                z6 = true;
                                z15 = true;
                            } else if (kotlin.text.t.w("max-stale", string, true)) {
                                nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                            } else if (kotlin.text.t.w("min-fresh", string, true)) {
                                nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                            } else if (kotlin.text.t.w("only-if-cached", string, true)) {
                                z6 = true;
                                z16 = true;
                            } else if (kotlin.text.t.w("no-transform", string, true)) {
                                z6 = true;
                                z17 = true;
                            } else if (kotlin.text.t.w("immutable", string, true)) {
                                z6 = true;
                                z18 = true;
                            }
                            z6 = true;
                        }
                    }
                    headers2 = headers;
                    i10 = i11;
                } else {
                    if (kotlin.text.t.w(strName, "Pragma", z6)) {
                    }
                    headers2 = headers;
                    i10 = i11;
                }
                z10 = false;
                iIndexOfElement = 0;
                while (iIndexOfElement < strValue.length()) {
                    iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                    String strSubstring3 = strValue.substring(iIndexOfElement, iIndexOfElement2);
                    t.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    string = u.b1(strSubstring3).toString();
                    if (iIndexOfElement2 != strValue.length()) {
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string2 = null;
                    } else {
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string2 = null;
                    }
                    if (kotlin.text.t.w("no-cache", string, true)) {
                        z6 = true;
                        z11 = true;
                    } else if (kotlin.text.t.w("no-store", string, true)) {
                        z6 = true;
                        z12 = true;
                    } else {
                        if (kotlin.text.t.w("max-age", string, true)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (kotlin.text.t.w("s-maxage", string, true)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (kotlin.text.t.w("private", string, true)) {
                            z6 = true;
                            z13 = true;
                        } else if (kotlin.text.t.w("public", string, true)) {
                            z6 = true;
                            z14 = true;
                        } else if (kotlin.text.t.w("must-revalidate", string, true)) {
                            z6 = true;
                            z15 = true;
                        } else if (kotlin.text.t.w("max-stale", string, true)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                        } else if (kotlin.text.t.w("min-fresh", string, true)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (kotlin.text.t.w("only-if-cached", string, true)) {
                            z6 = true;
                            z16 = true;
                        } else if (kotlin.text.t.w("no-transform", string, true)) {
                            z6 = true;
                            z17 = true;
                        } else if (kotlin.text.t.w("immutable", string, true)) {
                            z6 = true;
                            z18 = true;
                        }
                        z6 = true;
                    }
                }
                headers2 = headers;
                i10 = i11;
            }
            return new CacheControl(z11, z12, nonNegativeInt, nonNegativeInt2, z13, z14, z15, nonNegativeInt3, nonNegativeInt4, z16, z17, z18, !z10 ? null : str, null);
        }

        private final int indexOfElement(String str, String str2, int i10) {
            int length = str.length();
            while (i10 < length) {
                int i11 = i10 + 1;
                if (u.O(str2, str.charAt(i10), false, 2, null)) {
                    return i10;
                }
                i10 = i11;
            }
            return str.length();
        }
    }

    public /* synthetic */ CacheControl(boolean z6, boolean z10, int i10, int i11, boolean z11, boolean z12, boolean z13, int i12, int i13, boolean z14, boolean z15, boolean z16, String str, k kVar) {
        this(z6, z10, i10, i11, z11, z12, z13, i12, i13, z14, z15, z16, str);
    }

    @NotNull
    public static final CacheControl parse(@NotNull Headers headers) {
        return Companion.parse(headers);
    }

    /* JADX INFO: renamed from: -deprecated_immutable, reason: not valid java name */
    public final boolean m1655deprecated_immutable() {
        return this.immutable;
    }

    /* JADX INFO: renamed from: -deprecated_maxAgeSeconds, reason: not valid java name */
    public final int m1656deprecated_maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_maxStaleSeconds, reason: not valid java name */
    public final int m1657deprecated_maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_minFreshSeconds, reason: not valid java name */
    public final int m1658deprecated_minFreshSeconds() {
        return this.minFreshSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_mustRevalidate, reason: not valid java name */
    public final boolean m1659deprecated_mustRevalidate() {
        return this.mustRevalidate;
    }

    /* JADX INFO: renamed from: -deprecated_noCache, reason: not valid java name */
    public final boolean m1660deprecated_noCache() {
        return this.noCache;
    }

    /* JADX INFO: renamed from: -deprecated_noStore, reason: not valid java name */
    public final boolean m1661deprecated_noStore() {
        return this.noStore;
    }

    /* JADX INFO: renamed from: -deprecated_noTransform, reason: not valid java name */
    public final boolean m1662deprecated_noTransform() {
        return this.noTransform;
    }

    /* JADX INFO: renamed from: -deprecated_onlyIfCached, reason: not valid java name */
    public final boolean m1663deprecated_onlyIfCached() {
        return this.onlyIfCached;
    }

    /* JADX INFO: renamed from: -deprecated_sMaxAgeSeconds, reason: not valid java name */
    public final int m1664deprecated_sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public final boolean immutable() {
        return this.immutable;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final boolean noTransform() {
        return this.noTransform;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    private CacheControl(boolean z6, boolean z10, int i10, int i11, boolean z11, boolean z12, boolean z13, int i12, int i13, boolean z14, boolean z15, boolean z16, String str) {
        this.noCache = z6;
        this.noStore = z10;
        this.maxAgeSeconds = i10;
        this.sMaxAgeSeconds = i11;
        this.isPrivate = z11;
        this.isPublic = z12;
        this.mustRevalidate = z13;
        this.maxStaleSeconds = i12;
        this.minFreshSeconds = i13;
        this.onlyIfCached = z14;
        this.noTransform = z15;
        this.immutable = z16;
        this.headerValue = str;
    }

    @NotNull
    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (noCache()) {
            sb.append("no-cache, ");
        }
        if (noStore()) {
            sb.append("no-store, ");
        }
        if (maxAgeSeconds() != -1) {
            sb.append("max-age=");
            sb.append(maxAgeSeconds());
            sb.append(", ");
        }
        if (sMaxAgeSeconds() != -1) {
            sb.append("s-maxage=");
            sb.append(sMaxAgeSeconds());
            sb.append(", ");
        }
        if (isPrivate()) {
            sb.append("private, ");
        }
        if (isPublic()) {
            sb.append("public, ");
        }
        if (mustRevalidate()) {
            sb.append("must-revalidate, ");
        }
        if (maxStaleSeconds() != -1) {
            sb.append("max-stale=");
            sb.append(maxStaleSeconds());
            sb.append(", ");
        }
        if (minFreshSeconds() != -1) {
            sb.append("min-fresh=");
            sb.append(minFreshSeconds());
            sb.append(", ");
        }
        if (onlyIfCached()) {
            sb.append("only-if-cached, ");
        }
        if (noTransform()) {
            sb.append("no-transform, ");
        }
        if (immutable()) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        t.i(string, "StringBuilder().apply(builderAction).toString()");
        this.headerValue = string;
        return string;
    }
}
