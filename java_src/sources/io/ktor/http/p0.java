package io.ktor.http;

import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class p0 {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private final w7.m encodedFragment$delegate;

    @NotNull
    private final w7.m encodedPassword$delegate;

    @NotNull
    private final w7.m encodedPath$delegate;

    @NotNull
    private final w7.m encodedPathAndQuery$delegate;

    @NotNull
    private final w7.m encodedQuery$delegate;

    @NotNull
    private final w7.m encodedUser$delegate;

    @NotNull
    private final String fragment;

    @NotNull
    private final String host;

    @NotNull
    private final z parameters;

    @Nullable
    private final String password;

    @NotNull
    private final List<String> pathSegments;

    @NotNull
    private final l0 protocol;
    private final int specifiedPort;
    private final boolean trailingQuery;

    @NotNull
    private final String urlString;

    @Nullable
    private final String user;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.a<String> {
        b() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final String invoke() {
            int iB0 = kotlin.text.u.b0(p0.this.urlString, '#', 0, false, 6, null) + 1;
            if (iB0 == 0) {
                return "";
            }
            String strSubstring = p0.this.urlString.substring(iB0);
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            return strSubstring;
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.a<String> {
        c() {
            super(0);
        }

        @Override // e8.a
        @Nullable
        public final String invoke() {
            if (p0.this.h() == null) {
                return null;
            }
            if (p0.this.h().length() == 0) {
                return "";
            }
            String strSubstring = p0.this.urlString.substring(kotlin.text.u.b0(p0.this.urlString, kotlinx.serialization.json.internal.b.COLON, p0.this.k().d().length() + 3, false, 4, null) + 1, kotlin.text.u.b0(p0.this.urlString, '@', 0, false, 6, null));
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }
    }

    static final class d extends kotlin.jvm.internal.v implements e8.a<String> {
        d() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final String invoke() {
            int iB0;
            if (p0.this.i().isEmpty() || (iB0 = kotlin.text.u.b0(p0.this.urlString, '/', p0.this.k().d().length() + 3, false, 4, null)) == -1) {
                return "";
            }
            int iE0 = kotlin.text.u.e0(p0.this.urlString, new char[]{'?', '#'}, iB0, false, 4, null);
            if (iE0 == -1) {
                String strSubstring = p0.this.urlString.substring(iB0);
                kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                return strSubstring;
            }
            String strSubstring2 = p0.this.urlString.substring(iB0, iE0);
            kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring2;
        }
    }

    static final class e extends kotlin.jvm.internal.v implements e8.a<String> {
        e() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final String invoke() {
            int iB0 = kotlin.text.u.b0(p0.this.urlString, '/', p0.this.k().d().length() + 3, false, 4, null);
            if (iB0 == -1) {
                return "";
            }
            int iB1 = kotlin.text.u.b0(p0.this.urlString, '#', iB0, false, 4, null);
            if (iB1 == -1) {
                String strSubstring = p0.this.urlString.substring(iB0);
                kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                return strSubstring;
            }
            String strSubstring2 = p0.this.urlString.substring(iB0, iB1);
            kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring2;
        }
    }

    static final class f extends kotlin.jvm.internal.v implements e8.a<String> {
        f() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final String invoke() {
            int iB0 = kotlin.text.u.b0(p0.this.urlString, '?', 0, false, 6, null) + 1;
            if (iB0 == 0) {
                return "";
            }
            int iB1 = kotlin.text.u.b0(p0.this.urlString, '#', iB0, false, 4, null);
            if (iB1 == -1) {
                String strSubstring = p0.this.urlString.substring(iB0);
                kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                return strSubstring;
            }
            String strSubstring2 = p0.this.urlString.substring(iB0, iB1);
            kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring2;
        }
    }

    static final class g extends kotlin.jvm.internal.v implements e8.a<String> {
        g() {
            super(0);
        }

        @Override // e8.a
        @Nullable
        public final String invoke() {
            if (p0.this.n() == null) {
                return null;
            }
            if (p0.this.n().length() == 0) {
                return "";
            }
            int length = p0.this.k().d().length() + 3;
            String strSubstring = p0.this.urlString.substring(length, kotlin.text.u.e0(p0.this.urlString, new char[]{kotlinx.serialization.json.internal.b.COLON, '@'}, length, false, 4, null));
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }
    }

    public p0(@NotNull l0 protocol, @NotNull String host, int i10, @NotNull List<String> pathSegments, @NotNull z parameters, @NotNull String fragment, @Nullable String str, @Nullable String str2, boolean z6, @NotNull String urlString) {
        kotlin.jvm.internal.t.j(protocol, "protocol");
        kotlin.jvm.internal.t.j(host, "host");
        kotlin.jvm.internal.t.j(pathSegments, "pathSegments");
        kotlin.jvm.internal.t.j(parameters, "parameters");
        kotlin.jvm.internal.t.j(fragment, "fragment");
        kotlin.jvm.internal.t.j(urlString, "urlString");
        this.protocol = protocol;
        this.host = host;
        this.specifiedPort = i10;
        this.pathSegments = pathSegments;
        this.parameters = parameters;
        this.fragment = fragment;
        this.user = str;
        this.password = str2;
        this.trailingQuery = z6;
        this.urlString = urlString;
        if ((i10 < 0 || i10 >= 65536) && i10 != 0) {
            throw new IllegalArgumentException("port must be between 0 and 65535, or 0 if not set".toString());
        }
        this.encodedPath$delegate = w7.o.a(new d());
        this.encodedQuery$delegate = w7.o.a(new f());
        this.encodedPathAndQuery$delegate = w7.o.a(new e());
        this.encodedUser$delegate = w7.o.a(new g());
        this.encodedPassword$delegate = w7.o.a(new c());
        this.encodedFragment$delegate = w7.o.a(new b());
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && p0.class == obj.getClass() && kotlin.jvm.internal.t.e(this.urlString, ((p0) obj).urlString);
    }

    @NotNull
    public final String g() {
        return this.host;
    }

    @Nullable
    public final String h() {
        return this.password;
    }

    @NotNull
    public final List<String> i() {
        return this.pathSegments;
    }

    @NotNull
    public final l0 k() {
        return this.protocol;
    }

    public final int l() {
        return this.specifiedPort;
    }

    public final boolean m() {
        return this.trailingQuery;
    }

    @Nullable
    public final String n() {
        return this.user;
    }

    @NotNull
    public String toString() {
        return this.urlString;
    }

    @NotNull
    public final String b() {
        return (String) this.encodedFragment$delegate.getValue();
    }

    @Nullable
    public final String c() {
        return (String) this.encodedPassword$delegate.getValue();
    }

    @NotNull
    public final String d() {
        return (String) this.encodedPath$delegate.getValue();
    }

    @NotNull
    public final String e() {
        return (String) this.encodedQuery$delegate.getValue();
    }

    @Nullable
    public final String f() {
        return (String) this.encodedUser$delegate.getValue();
    }

    public int hashCode() {
        return this.urlString.hashCode();
    }

    public final int j() {
        Integer numValueOf = Integer.valueOf(this.specifiedPort);
        if (numValueOf.intValue() == 0) {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : this.protocol.c();
    }
}
