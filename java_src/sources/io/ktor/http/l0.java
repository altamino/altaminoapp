package io.ktor.http;

import androidx.webkit.ProxyConfig;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class l0 {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final l0 HTTP;

    @NotNull
    private static final l0 HTTPS;

    @NotNull
    private static final l0 SOCKS;

    @NotNull
    private static final l0 WS;

    @NotNull
    private static final l0 WSS;

    @NotNull
    private static final Map<String, l0> byName;
    private final int defaultPort;

    @NotNull
    private final String name;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final l0 a(@NotNull String name) {
            kotlin.jvm.internal.t.j(name, "name");
            String strC = io.ktor.util.y.c(name);
            l0 l0Var = l0.Companion.b().get(strC);
            return l0Var == null ? new l0(strC, 0) : l0Var;
        }

        @NotNull
        public final Map<String, l0> b() {
            return l0.byName;
        }

        @NotNull
        public final l0 c() {
            return l0.HTTP;
        }
    }

    public final int c() {
        return this.defaultPort;
    }

    @NotNull
    public final String d() {
        return this.name;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return kotlin.jvm.internal.t.e(this.name, l0Var.name) && this.defaultPort == l0Var.defaultPort;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.defaultPort;
    }

    @NotNull
    public String toString() {
        return "URLProtocol(name=" + this.name + ", defaultPort=" + this.defaultPort + ')';
    }

    static {
        l0 l0Var = new l0(ProxyConfig.MATCH_HTTP, 80);
        HTTP = l0Var;
        l0 l0Var2 = new l0(ProxyConfig.MATCH_HTTPS, 443);
        HTTPS = l0Var2;
        l0 l0Var3 = new l0("ws", 80);
        WS = l0Var3;
        l0 l0Var4 = new l0("wss", 443);
        WSS = l0Var4;
        l0 l0Var5 = new l0("socks", 1080);
        SOCKS = l0Var5;
        List listP = kotlin.collections.v.p(l0Var, l0Var2, l0Var3, l0Var4, l0Var5);
        LinkedHashMap linkedHashMap = new LinkedHashMap(j8.o.e(kotlin.collections.r0.e(kotlin.collections.w.x(listP, 10)), 16));
        for (Object obj : listP) {
            linkedHashMap.put(((l0) obj).name, obj);
        }
        byName = linkedHashMap;
    }

    public l0(@NotNull String name, int i10) {
        kotlin.jvm.internal.t.j(name, "name");
        this.name = name;
        this.defaultPort = i10;
        for (int i11 = 0; i11 < name.length(); i11++) {
            if (!io.ktor.util.i.a(name.charAt(i11))) {
                throw new IllegalArgumentException("All characters should be lower case".toString());
            }
        }
    }
}
