package io.ktor.http;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class f0 {

    @NotNull
    public static final a Companion;

    @NotNull
    private static final p0 originUrl;

    @NotNull
    private String encodedFragment;

    @NotNull
    private a0 encodedParameters;

    @Nullable
    private String encodedPassword;

    @NotNull
    private List<String> encodedPathSegments;

    @Nullable
    private String encodedUser;

    @NotNull
    private String host;

    @NotNull
    private a0 parameters;
    private int port;

    @NotNull
    private l0 protocol;
    private boolean trailingQuery;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public f0() {
        this(null, null, 0, null, null, null, null, null, false, 511, null);
    }

    public final void A(@Nullable String str) {
        this.encodedUser = str != null ? b.m(str, false, 1, null) : null;
    }

    @NotNull
    public final String d() {
        return this.encodedFragment;
    }

    @NotNull
    public final a0 e() {
        return this.encodedParameters;
    }

    @Nullable
    public final String f() {
        return this.encodedPassword;
    }

    @NotNull
    public final List<String> g() {
        return this.encodedPathSegments;
    }

    @Nullable
    public final String h() {
        return this.encodedUser;
    }

    @NotNull
    public final String j() {
        return this.host;
    }

    @NotNull
    public final a0 k() {
        return this.parameters;
    }

    public final int n() {
        return this.port;
    }

    @NotNull
    public final l0 o() {
        return this.protocol;
    }

    public final boolean p() {
        return this.trailingQuery;
    }

    public final void r(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<set-?>");
        this.encodedFragment = str;
    }

    public final void t(@Nullable String str) {
        this.encodedPassword = str;
    }

    public final void u(@NotNull List<String> list) {
        kotlin.jvm.internal.t.j(list, "<set-?>");
        this.encodedPathSegments = list;
    }

    public final void v(@Nullable String str) {
        this.encodedUser = str;
    }

    public final void w(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<set-?>");
        this.host = str;
    }

    public final void x(int i10) {
        this.port = i10;
    }

    public final void y(@NotNull l0 l0Var) {
        kotlin.jvm.internal.t.j(l0Var, "<set-?>");
        this.protocol = l0Var;
    }

    public final void z(boolean z6) {
        this.trailingQuery = z6;
    }

    static {
        a aVar = new a(null);
        Companion = aVar;
        originUrl = n0.c(g0.a(aVar));
    }

    public f0(@NotNull l0 protocol, @NotNull String host, int i10, @Nullable String str, @Nullable String str2, @NotNull List<String> pathSegments, @NotNull z parameters, @NotNull String fragment, boolean z6) {
        kotlin.jvm.internal.t.j(protocol, "protocol");
        kotlin.jvm.internal.t.j(host, "host");
        kotlin.jvm.internal.t.j(pathSegments, "pathSegments");
        kotlin.jvm.internal.t.j(parameters, "parameters");
        kotlin.jvm.internal.t.j(fragment, "fragment");
        this.protocol = protocol;
        this.host = host;
        this.port = i10;
        this.trailingQuery = z6;
        this.encodedUser = str != null ? b.m(str, false, 1, null) : null;
        this.encodedPassword = str2 != null ? b.m(str2, false, 1, null) : null;
        this.encodedFragment = b.r(fragment, false, false, null, 7, null);
        List<String> list = pathSegments;
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b.p((String) it.next()));
        }
        this.encodedPathSegments = arrayList;
        a0 a0VarE = r0.e(parameters);
        this.encodedParameters = a0VarE;
        this.parameters = new q0(a0VarE);
    }

    private final void a() {
        if (this.host.length() <= 0 && !kotlin.jvm.internal.t.e(this.protocol.d(), "file")) {
            p0 p0Var = originUrl;
            this.host = p0Var.g();
            if (kotlin.jvm.internal.t.e(this.protocol, l0.Companion.c())) {
                this.protocol = p0Var.k();
            }
            if (this.port == 0) {
                this.port = p0Var.l();
            }
        }
    }

    @NotNull
    public final String i() {
        return b.k(this.encodedFragment, 0, 0, false, null, 15, null);
    }

    @Nullable
    public final String l() {
        String str = this.encodedPassword;
        if (str != null) {
            return b.i(str, 0, 0, null, 7, null);
        }
        return null;
    }

    @NotNull
    public final List<String> m() {
        List<String> list = this.encodedPathSegments;
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(b.i((String) it.next(), 0, 0, null, 7, null));
        }
        return arrayList;
    }

    @Nullable
    public final String q() {
        String str = this.encodedUser;
        if (str != null) {
            return b.i(str, 0, 0, null, 7, null);
        }
        return null;
    }

    public final void s(@NotNull a0 value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.encodedParameters = value;
        this.parameters = new q0(value);
    }

    @NotNull
    public String toString() {
        String string = ((StringBuilder) h0.d(this, new StringBuilder(256))).toString();
        kotlin.jvm.internal.t.i(string, "appendTo(StringBuilder(256)).toString()");
        return string;
    }

    @NotNull
    public final p0 b() {
        a();
        return new p0(this.protocol, this.host, this.port, m(), this.parameters.build(), i(), q(), l(), this.trailingQuery, c());
    }

    @NotNull
    public final String c() {
        a();
        String string = ((StringBuilder) h0.d(this, new StringBuilder(256))).toString();
        kotlin.jvm.internal.t.i(string, "appendTo(StringBuilder(256)).toString()");
        return string;
    }

    public /* synthetic */ f0(l0 l0Var, String str, int i10, String str2, String str3, List list, z zVar, String str4, boolean z6, int i11, kotlin.jvm.internal.k kVar) {
        this((i11 & 1) != 0 ? l0.Companion.c() : l0Var, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? 0 : i10, (i11 & 8) != 0 ? null : str2, (i11 & 16) == 0 ? str3 : null, (i11 & 32) != 0 ? kotlin.collections.v.m() : list, (i11 & 64) != 0 ? z.Companion.a() : zVar, (i11 & 128) == 0 ? str4 : "", (i11 & 256) == 0 ? z6 : false);
    }
}
