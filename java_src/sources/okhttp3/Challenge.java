package okhttp3;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class Challenge {

    @NotNull
    private final Map<String, String> authParams;

    @NotNull
    private final String scheme;

    public Challenge(@NotNull String scheme, @NotNull Map<String, String> authParams) {
        String lowerCase;
        t.j(scheme, "scheme");
        t.j(authParams, "authParams");
        this.scheme = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : authParams.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key == null) {
                lowerCase = null;
            } else {
                Locale US = Locale.US;
                t.i(US, "US");
                lowerCase = key.toLowerCase(US);
                t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            }
            linkedHashMap.put(lowerCase, value);
        }
        Map<String, String> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        t.i(mapUnmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.authParams = mapUnmodifiableMap;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_authParams, reason: not valid java name */
    public final Map<String, String> m1665deprecated_authParams() {
        return this.authParams;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_scheme, reason: not valid java name */
    public final String m1668deprecated_scheme() {
        return this.scheme;
    }

    @NotNull
    public final Map<String, String> authParams() {
        return this.authParams;
    }

    @NotNull
    public final String scheme() {
        return this.scheme;
    }

    @NotNull
    public final Charset charset() {
        String str = this.authParams.get("charset");
        if (str != null) {
            try {
                Charset charsetForName = Charset.forName(str);
                t.i(charsetForName, "forName(charset)");
                return charsetForName;
            } catch (Exception unused) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        t.i(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (t.e(challenge.scheme, this.scheme) && t.e(challenge.authParams, this.authParams)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.scheme.hashCode()) * 31) + this.authParams.hashCode();
    }

    @Nullable
    public final String realm() {
        return this.authParams.get("realm");
    }

    @NotNull
    public String toString() {
        return this.scheme + " authParams=" + this.authParams;
    }

    @NotNull
    public final Challenge withCharset(@NotNull Charset charset) {
        t.j(charset, "charset");
        Map mapA = s0.A(this.authParams);
        String strName = charset.name();
        t.i(strName, "charset.name()");
        mapA.put("charset", strName);
        return new Challenge(this.scheme, (Map<String, String>) mapA);
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_charset, reason: not valid java name */
    public final Charset m1666deprecated_charset() {
        return charset();
    }

    @Nullable
    /* JADX INFO: renamed from: -deprecated_realm, reason: not valid java name */
    public final String m1667deprecated_realm() {
        return realm();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Challenge(@NotNull String scheme, @NotNull String realm) {
        t.j(scheme, "scheme");
        t.j(realm, "realm");
        Map mapSingletonMap = Collections.singletonMap("realm", realm);
        t.i(mapSingletonMap, "singletonMap(\"realm\", realm)");
        this(scheme, (Map<String, String>) mapSingletonMap);
    }
}
