package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.google.firebase.sessions.settings.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.a0;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.g;
import kotlin.text.u;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class NavDeepLink {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    private static final Pattern SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");

    @Nullable
    private final String action;

    @NotNull
    private final List<String> arguments;
    private boolean isExactDeepLink;
    private boolean isParameterizedQuery;
    private boolean isSingleQueryParamValueOnly;

    @Nullable
    private final String mimeType;

    @Nullable
    private String mimeTypeFinalRegex;

    @NotNull
    private final m mimeTypePattern$delegate;

    @NotNull
    private final Map<String, ParamQuery> paramArgMap;

    @NotNull
    private final m pattern$delegate;

    @Nullable
    private String patternFinalRegex;

    @Nullable
    private final String uriPattern;

    public static final class Builder {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @Nullable
        private String action;

        @Nullable
        private String mimeType;

        @Nullable
        private String uriPattern;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @NotNull
        public final Builder c(@NotNull String mimeType) {
            t.j(mimeType, "mimeType");
            this.mimeType = mimeType;
            return this;
        }

        @NotNull
        public final Builder d(@NotNull String uriPattern) {
            t.j(uriPattern, "uriPattern");
            this.uriPattern = uriPattern;
            return this;
        }

        @NotNull
        public final NavDeepLink a() {
            return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
        }

        @NotNull
        public final Builder b(@NotNull String action) {
            t.j(action, "action");
            if (action.length() <= 0) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.".toString());
            }
            this.action = action;
            return this;
        }

        @RestrictTo
        public Builder() {
        }
    }

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private static final class MimeType implements Comparable<MimeType> {

        @NotNull
        private String subType;

        @NotNull
        private String type;

        @NotNull
        public final String b() {
            return this.subType;
        }

        @NotNull
        public final String c() {
            return this.type;
        }

        public MimeType(@NotNull String mimeType) {
            List listM;
            t.j(mimeType, "mimeType");
            List<String> listD = new g(c.FORWARD_SLASH_STRING).d(mimeType, 0);
            if (listD.isEmpty()) {
                listM = v.m();
            } else {
                ListIterator<String> listIterator = listD.listIterator(listD.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        listM = d0.O0(listD, listIterator.nextIndex() + 1);
                    }
                }
                listM = v.m();
            }
            this.type = (String) listM.get(0);
            this.subType = (String) listM.get(1);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull MimeType other) {
            int i10;
            t.j(other, "other");
            if (t.e(this.type, other.type)) {
                i10 = 2;
            } else {
                i10 = 0;
            }
            if (t.e(this.subType, other.subType)) {
                return i10 + 1;
            }
            return i10;
        }
    }

    private static final class ParamQuery {

        @NotNull
        private final List<String> arguments = new ArrayList();

        @Nullable
        private String paramRegex;

        @NotNull
        public final List<String> c() {
            return this.arguments;
        }

        @Nullable
        public final String d() {
            return this.paramRegex;
        }

        public final void e(@Nullable String str) {
            this.paramRegex = str;
        }

        public final void a(@NotNull String name) {
            t.j(name, "name");
            this.arguments.add(name);
        }

        @NotNull
        public final String b(int i10) {
            return this.arguments.get(i10);
        }

        public final int f() {
            return this.arguments.size();
        }
    }

    public NavDeepLink(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        this.arguments = new ArrayList();
        this.paramArgMap = new LinkedHashMap();
        this.pattern$delegate = o.a(new NavDeepLink$pattern$2(this));
        this.mimeTypePattern$delegate = o.a(new NavDeepLink$mimeTypePattern$2(this));
        if (str != null) {
            Uri uri = Uri.parse(str);
            this.isParameterizedQuery = uri.getQuery() != null;
            StringBuilder sb = new StringBuilder("^");
            if (!SCHEME_PATTERN.matcher(str).find()) {
                sb.append("http[s]?://");
            }
            Pattern fillInPattern = Pattern.compile("\\{(.+?)\\}");
            if (this.isParameterizedQuery) {
                Matcher matcher = Pattern.compile("(\\?)").matcher(str);
                if (matcher.find()) {
                    String strSubstring = str.substring(0, matcher.start());
                    t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    t.i(fillInPattern, "fillInPattern");
                    this.isExactDeepLink = c(strSubstring, sb, fillInPattern);
                }
                for (String paramName : uri.getQueryParameterNames()) {
                    StringBuilder sb2 = new StringBuilder();
                    String queryParam = uri.getQueryParameter(paramName);
                    if (queryParam == null) {
                        this.isSingleQueryParamValueOnly = true;
                        queryParam = paramName;
                    }
                    Matcher matcher2 = fillInPattern.matcher(queryParam);
                    ParamQuery paramQuery = new ParamQuery();
                    int iEnd = 0;
                    while (matcher2.find()) {
                        String strGroup = matcher2.group(1);
                        if (strGroup == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                        }
                        paramQuery.a(strGroup);
                        t.i(queryParam, "queryParam");
                        String strSubstring2 = queryParam.substring(iEnd, matcher2.start());
                        t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb2.append(Pattern.quote(strSubstring2));
                        sb2.append("(.+?)?");
                        iEnd = matcher2.end();
                    }
                    if (iEnd < queryParam.length()) {
                        t.i(queryParam, "queryParam");
                        String strSubstring3 = queryParam.substring(iEnd);
                        t.i(strSubstring3, "this as java.lang.String).substring(startIndex)");
                        sb2.append(Pattern.quote(strSubstring3));
                    }
                    String string = sb2.toString();
                    t.i(string, "argRegex.toString()");
                    paramQuery.e(kotlin.text.t.G(string, ".*", "\\E.*\\Q", false, 4, null));
                    Map<String, ParamQuery> map = this.paramArgMap;
                    t.i(paramName, "paramName");
                    map.put(paramName, paramQuery);
                }
            } else {
                t.i(fillInPattern, "fillInPattern");
                this.isExactDeepLink = c(str, sb, fillInPattern);
            }
            String string2 = sb.toString();
            t.i(string2, "uriRegex.toString()");
            this.patternFinalRegex = kotlin.text.t.G(string2, ".*", "\\E.*\\Q", false, 4, null);
        }
        if (this.mimeType != null) {
            if (!Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.mimeType).matches()) {
                throw new IllegalArgumentException(("The given mimeType " + this.mimeType + " does not match to required \"type/subtype\" format").toString());
            }
            MimeType mimeType = new MimeType(this.mimeType);
            this.mimeTypeFinalRegex = kotlin.text.t.G("^(" + mimeType.c() + "|[*]+)/(" + mimeType.b() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, null);
        }
    }

    @Nullable
    public final String d() {
        return this.action;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof NavDeepLink)) {
            return false;
        }
        NavDeepLink navDeepLink = (NavDeepLink) obj;
        return t.e(this.uriPattern, navDeepLink.uriPattern) && t.e(this.action, navDeepLink.action) && t.e(this.mimeType, navDeepLink.mimeType);
    }

    @Nullable
    public final String g() {
        return this.mimeType;
    }

    @Nullable
    public final String k() {
        return this.uriPattern;
    }

    @RestrictTo
    public final boolean l() {
        return this.isExactDeepLink;
    }

    private final Pattern i() {
        return (Pattern) this.mimeTypePattern$delegate.getValue();
    }

    private final Pattern j() {
        return (Pattern) this.pattern$delegate.getValue();
    }

    private final boolean m(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument != null) {
            navArgument.a().d(bundle, str, str2);
            return false;
        }
        bundle.putString(str, str2);
        return false;
    }

    @NotNull
    public final List<String> e() {
        List<String> list = this.arguments;
        Collection<ParamQuery> collectionValues = this.paramArgMap.values();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            a0.D(arrayList, ((ParamQuery) it.next()).c());
        }
        return d0.D0(list, arrayList);
    }

    @RestrictTo
    @Nullable
    public final Bundle f(@NotNull Uri deepLink, @NotNull Map<String, NavArgument> arguments) {
        Matcher matcher;
        String strGroup;
        t.j(deepLink, "deepLink");
        t.j(arguments, "arguments");
        Pattern patternJ = j();
        Matcher matcher2 = patternJ != null ? patternJ.matcher(deepLink.toString()) : null;
        if (matcher2 == null || !matcher2.matches()) {
            return null;
        }
        Bundle bundle = new Bundle();
        int size = this.arguments.size();
        int i10 = 0;
        while (i10 < size) {
            String str = this.arguments.get(i10);
            i10++;
            String value = Uri.decode(matcher2.group(i10));
            NavArgument navArgument = arguments.get(str);
            try {
                t.i(value, "value");
                if (m(bundle, str, value, navArgument)) {
                    return null;
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        if (this.isParameterizedQuery) {
            for (String str2 : this.paramArgMap.keySet()) {
                ParamQuery paramQuery = this.paramArgMap.get(str2);
                String queryParameter = deepLink.getQueryParameter(str2);
                if (this.isSingleQueryParamValueOnly) {
                    String string = deepLink.toString();
                    t.i(string, "deepLink.toString()");
                    String strM0 = u.M0(string, '?', null, 2, null);
                    if (!t.e(strM0, string)) {
                        queryParameter = strM0;
                    }
                }
                if (queryParameter != null) {
                    t.g(paramQuery);
                    matcher = Pattern.compile(paramQuery.d(), 32).matcher(queryParameter);
                    if (!matcher.matches()) {
                        return null;
                    }
                } else {
                    matcher = null;
                }
                Bundle bundle2 = new Bundle();
                try {
                    t.g(paramQuery);
                    int iF = paramQuery.f();
                    for (int i11 = 0; i11 < iF; i11++) {
                        if (matcher != null) {
                            strGroup = matcher.group(i11 + 1);
                            if (strGroup == null) {
                                strGroup = "";
                            }
                        } else {
                            strGroup = null;
                        }
                        String strB = paramQuery.b(i11);
                        NavArgument navArgument2 = arguments.get(strB);
                        if (strGroup != null) {
                            if (!t.e(strGroup, b.BEGIN_OBJ + strB + b.END_OBJ) && m(bundle2, strB, strGroup, navArgument2)) {
                                return null;
                            }
                        }
                    }
                    bundle.putAll(bundle2);
                } catch (IllegalArgumentException unused2) {
                }
            }
        }
        for (Map.Entry<String, NavArgument> entry : arguments.entrySet()) {
            String key = entry.getKey();
            NavArgument value2 = entry.getValue();
            if (value2 != null && !value2.c() && !value2.b() && !bundle.containsKey(key)) {
                return null;
            }
        }
        return bundle;
    }

    @RestrictTo
    public final int h(@NotNull String mimeType) {
        t.j(mimeType, "mimeType");
        if (this.mimeType != null) {
            Pattern patternI = i();
            t.g(patternI);
            if (patternI.matcher(mimeType).matches()) {
                return new MimeType(this.mimeType).compareTo(new MimeType(mimeType));
            }
        }
        return -1;
    }

    public int hashCode() {
        String str = this.uriPattern;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.action;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    private final boolean c(String str, StringBuilder sb, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        boolean z6 = !u.P(str, ".*", false, 2, null);
        int iEnd = 0;
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                this.arguments.add(strGroup);
                String strSubstring = str.substring(iEnd, matcher.start());
                t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb.append(Pattern.quote(strSubstring));
                sb.append("([^/]+?)");
                iEnd = matcher.end();
                z6 = false;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
        }
        if (iEnd < str.length()) {
            String strSubstring2 = str.substring(iEnd);
            t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            sb.append(Pattern.quote(strSubstring2));
        }
        sb.append("($|(\\?(.)*)|(\\#(.)*))");
        return z6;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public NavDeepLink(@NotNull String uri) {
        this(uri, null, null);
        t.j(uri, "uri");
    }
}
