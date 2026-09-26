package i7;

import io.ktor.client.engine.f;
import io.ktor.http.f0;
import io.ktor.http.l;
import io.ktor.http.n0;
import io.ktor.http.p0;
import io.ktor.http.r;
import io.ktor.http.t;
import io.ktor.util.x;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements r {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private final f0 url = new f0(null, null, 0, null, null, null, null, null, false, 511, null);

    @NotNull
    private t method = t.Companion.a();

    @NotNull
    private final l headers = new l(0, 1, null);

    @NotNull
    private Object body = io.ktor.client.utils.c.INSTANCE;

    @NotNull
    private b2 executionContext = y2.b(null, 1, null);

    @NotNull
    private final io.ktor.util.b attributes = io.ktor.util.d.a(true);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    static final class b extends v implements e8.a<Map<io.ktor.client.engine.e<?>, Object>> {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final Map<io.ktor.client.engine.e<?>, Object> invoke() {
            return new LinkedHashMap();
        }
    }

    @NotNull
    public final io.ktor.util.b b() {
        return this.attributes;
    }

    @NotNull
    public final Object c() {
        return this.body;
    }

    @NotNull
    public final b2 f() {
        return this.executionContext;
    }

    @NotNull
    public final t g() {
        return this.method;
    }

    @Override // io.ktor.http.r
    @NotNull
    public l getHeaders() {
        return this.headers;
    }

    @NotNull
    public final f0 h() {
        return this.url;
    }

    public final void i(@NotNull Object obj) {
        kotlin.jvm.internal.t.j(obj, "<set-?>");
        this.body = obj;
    }

    public final void l(@NotNull b2 b2Var) {
        kotlin.jvm.internal.t.j(b2Var, "<set-?>");
        this.executionContext = b2Var;
    }

    public final void m(@NotNull t tVar) {
        kotlin.jvm.internal.t.j(tVar, "<set-?>");
        this.method = tVar;
    }

    @NotNull
    public final e a() {
        p0 p0VarB = this.url.b();
        t tVar = this.method;
        io.ktor.http.k kVarN = getHeaders().n();
        Object obj = this.body;
        k7.b bVar = obj instanceof k7.b ? (k7.b) obj : null;
        if (bVar != null) {
            return new e(p0VarB, tVar, kVarN, bVar, this.executionContext, this.attributes);
        }
        throw new IllegalStateException(("No request transformation found: " + this.body).toString());
    }

    @Nullable
    public final o7.a d() {
        return (o7.a) this.attributes.e(j.a());
    }

    @Nullable
    public final <T> T e(@NotNull io.ktor.client.engine.e<T> key) {
        kotlin.jvm.internal.t.j(key, "key");
        Map map = (Map) this.attributes.e(f.a());
        if (map != null) {
            return (T) map.get(key);
        }
        return null;
    }

    public final void j(@Nullable o7.a aVar) {
        if (aVar != null) {
            this.attributes.a(j.a(), aVar);
        } else {
            this.attributes.c(j.a());
        }
    }

    public final <T> void k(@NotNull io.ktor.client.engine.e<T> key, @NotNull T capability) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(capability, "capability");
        ((Map) this.attributes.g(f.a(), b.INSTANCE)).put(key, capability);
    }

    @NotNull
    public final d n(@NotNull d builder) {
        kotlin.jvm.internal.t.j(builder, "builder");
        this.method = builder.method;
        this.body = builder.body;
        j(builder.d());
        n0.g(this.url, builder.url);
        f0 f0Var = this.url;
        f0Var.u(f0Var.g());
        x.c(getHeaders(), builder.getHeaders());
        io.ktor.util.e.a(this.attributes, builder.attributes);
        return this;
    }

    @NotNull
    public final d o(@NotNull d builder) {
        kotlin.jvm.internal.t.j(builder, "builder");
        this.executionContext = builder.executionContext;
        return n(builder);
    }
}
