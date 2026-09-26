package okhttp3;

import a8.c;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class MediaType {

    @NotNull
    private static final String QUOTED = "\"([^\"]*)\"";

    @NotNull
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";

    @NotNull
    private final String mediaType;

    @NotNull
    private final String[] parameterNamesAndValues;

    @NotNull
    private final String subtype;

    @NotNull
    private final String type;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final MediaType m1719deprecated_get(@NotNull String mediaType) {
            t.j(mediaType, "mediaType");
            return get(mediaType);
        }

        @Nullable
        /* JADX INFO: renamed from: -deprecated_parse, reason: not valid java name */
        public final MediaType m1720deprecated_parse(@NotNull String mediaType) {
            t.j(mediaType, "mediaType");
            return parse(mediaType);
        }

        @NotNull
        public final MediaType get(@NotNull String str) {
            t.j(str, "<this>");
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(str);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + str + kotlinx.serialization.json.internal.b.STRING).toString());
            }
            String strGroup = matcher.group(1);
            t.i(strGroup, "typeSubtype.group(1)");
            Locale US = Locale.US;
            t.i(US, "US");
            String lowerCase = strGroup.toLowerCase(US);
            t.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            String strGroup2 = matcher.group(2);
            t.i(strGroup2, "typeSubtype.group(2)");
            t.i(US, "US");
            String lowerCase2 = strGroup2.toLowerCase(US);
            t.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = MediaType.PARAMETER.matcher(str);
            int iEnd = matcher.end();
            while (iEnd < str.length()) {
                matcher2.region(iEnd, str.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Parameter is not formatted correctly: \"");
                    String strSubstring = str.substring(iEnd);
                    t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                    sb.append(strSubstring);
                    sb.append("\" for: \"");
                    sb.append(str);
                    sb.append(kotlinx.serialization.json.internal.b.STRING);
                    throw new IllegalArgumentException(sb.toString().toString());
                }
                String strGroup3 = matcher2.group(1);
                if (strGroup3 == null) {
                    iEnd = matcher2.end();
                } else {
                    String strGroup4 = matcher2.group(2);
                    if (strGroup4 == null) {
                        strGroup4 = matcher2.group(3);
                    } else if (kotlin.text.t.K(strGroup4, "'", false, 2, null) && kotlin.text.t.v(strGroup4, "'", false, 2, null) && strGroup4.length() > 2) {
                        strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                        t.i(strGroup4, "this as java.lang.String…ing(startIndex, endIndex)");
                    }
                    arrayList.add(strGroup3);
                    arrayList.add(strGroup4);
                    iEnd = matcher2.end();
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return new MediaType(str, lowerCase, lowerCase2, (String[]) array, null);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Nullable
        public final MediaType parse(@NotNull String str) {
            t.j(str, "<this>");
            try {
                return get(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, k kVar) {
        this(str, str2, str3, strArr);
    }

    @NotNull
    public static final MediaType get(@NotNull String str) {
        return Companion.get(str);
    }

    @Nullable
    public static final MediaType parse(@NotNull String str) {
        return Companion.parse(str);
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_subtype, reason: not valid java name */
    public final String m1717deprecated_subtype() {
        return this.subtype;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name */
    public final String m1718deprecated_type() {
        return this.type;
    }

    @Nullable
    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    @NotNull
    public final String subtype() {
        return this.subtype;
    }

    @NotNull
    public String toString() {
        return this.mediaType;
    }

    @NotNull
    public final String type() {
        return this.type;
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    @Nullable
    public final Charset charset(@Nullable Charset charset) {
        String strParameter = parameter("charset");
        if (strParameter == null) {
            return charset;
        }
        try {
            return Charset.forName(strParameter);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof MediaType) && t.e(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    @Nullable
    public final String parameter(@NotNull String name) {
        t.j(name, "name");
        int i10 = 0;
        int iC = c.c(0, this.parameterNamesAndValues.length - 1, 2);
        if (iC < 0) {
            return null;
        }
        while (true) {
            int i11 = i10 + 2;
            if (kotlin.text.t.w(this.parameterNamesAndValues[i10], name, true)) {
                return this.parameterNamesAndValues[i10 + 1];
            }
            if (i10 == iC) {
                return null;
            }
            i10 = i11;
        }
    }
}
