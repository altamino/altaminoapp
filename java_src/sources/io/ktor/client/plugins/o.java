package io.ktor.client.plugins;

import com.narvii.util.ws.WsMessage;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.u0;
import kotlin.jvm.internal.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    @NotNull
    public static final b Plugin = new b(null);

    @NotNull
    private static final io.ktor.util.a<o> key = new io.ktor.util.a<>("HttpPlainText");

    @NotNull
    private final String acceptCharsetHeader;

    @NotNull
    private final Charset requestCharset;

    @NotNull
    private final Charset responseCharsetFallback;

    public static final class a {

        @Nullable
        private Charset sendCharset;

        @NotNull
        private final Set<Charset> charsets = new LinkedHashSet();

        @NotNull
        private final Map<Charset, Float> charsetQuality = new LinkedHashMap();

        @NotNull
        private Charset responseCharsetFallback = kotlin.text.d.UTF_8;

        @NotNull
        public final Map<Charset, Float> a() {
            return this.charsetQuality;
        }

        @NotNull
        public final Set<Charset> b() {
            return this.charsets;
        }

        @NotNull
        public final Charset c() {
            return this.responseCharsetFallback;
        }

        @Nullable
        public final Charset d() {
            return this.sendCharset;
        }
    }

    public static final class b implements m<a, o> {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$1", f = "HttpPlainText.kt", l = {130}, m = "invokeSuspend")
        static final class a extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<Object, i7.d>, Object, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ o $plugin;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(o oVar, kotlin.coroutines.d<? super a> dVar) {
                super(3, dVar);
                this.$plugin = oVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<Object, i7.d> eVar, @NotNull Object obj, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                a aVar = new a(this.$plugin, dVar);
                aVar.L$0 = eVar;
                aVar.L$1 = obj;
                return aVar.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        w7.w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w7.w.b(obj);
                    io.ktor.util.pipeline.e eVar = (io.ktor.util.pipeline.e) this.L$0;
                    Object obj2 = this.L$1;
                    this.$plugin.c((i7.d) eVar.b());
                    if (!(obj2 instanceof String)) {
                        return l0.INSTANCE;
                    }
                    io.ktor.http.c cVarD = io.ktor.http.s.d((io.ktor.http.r) eVar.b());
                    if (cVarD == null || kotlin.jvm.internal.t.e(cVarD.e(), io.ktor.http.c.C0410c.INSTANCE.a().e())) {
                        Object objE2 = this.$plugin.e((i7.d) eVar.b(), (String) obj2, cVarD);
                        this.L$0 = null;
                        this.label = 1;
                        if (eVar.e(objE2, this) == objE) {
                            return objE;
                        }
                    } else {
                        return l0.INSTANCE;
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.ktor.client.plugins.o$b$b, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$2", f = "HttpPlainText.kt", l = {WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 138}, m = "invokeSuspend")
        static final class C0401b extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b>, io.ktor.client.statement.d, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ o $plugin;
            private /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0401b(o oVar, kotlin.coroutines.d<? super C0401b> dVar) {
                super(3, dVar);
                this.$plugin = oVar;
            }

            @Override // e8.q
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> eVar, @NotNull io.ktor.client.statement.d dVar, @Nullable kotlin.coroutines.d<? super l0> dVar2) {
                C0401b c0401b = new C0401b(this.$plugin, dVar2);
                c0401b.L$0 = eVar;
                c0401b.L$1 = dVar;
                return c0401b.invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                io.ktor.util.pipeline.e eVar;
                o7.a aVar;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            w7.w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        aVar = (o7.a) this.L$1;
                        eVar = (io.ktor.util.pipeline.e) this.L$0;
                        w7.w.b(obj);
                    }
                    return l0.INSTANCE;
                }
                w7.w.b(obj);
                io.ktor.util.pipeline.e eVar2 = (io.ktor.util.pipeline.e) this.L$0;
                io.ktor.client.statement.d dVar = (io.ktor.client.statement.d) this.L$1;
                o7.a aVarA = dVar.a();
                Object objB = dVar.b();
                if (kotlin.jvm.internal.t.e(aVarA.a(), q0.b(String.class)) && (objB instanceof io.ktor.utils.io.g)) {
                    this.L$0 = eVar2;
                    this.L$1 = aVarA;
                    this.label = 1;
                    Object objA = io.ktor.utils.io.g.b.a((io.ktor.utils.io.g) objB, 0L, this, 1, null);
                    if (objA == objE) {
                        return objE;
                    }
                    eVar = eVar2;
                    obj = objA;
                    aVar = aVarA;
                } else {
                    return l0.INSTANCE;
                }
                io.ktor.client.statement.d dVar2 = new io.ktor.client.statement.d(aVar, this.$plugin.d((io.ktor.client.call.b) eVar.b(), (r7.j) obj));
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (eVar.e(dVar2, this) == objE) {
                    return objE;
                }
                return l0.INSTANCE;
            }
        }

        private b() {
        }

        @Override // io.ktor.client.plugins.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(@NotNull o plugin, @NotNull io.ktor.client.a scope) {
            kotlin.jvm.internal.t.j(plugin, "plugin");
            kotlin.jvm.internal.t.j(scope, "scope");
            scope.n().l(i7.g.Phases.b(), new a(plugin, null));
            scope.o().l(io.ktor.client.statement.f.Phases.c(), new C0401b(plugin, null));
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public o a(@NotNull e8.l<? super a, l0> block) {
            kotlin.jvm.internal.t.j(block, "block");
            a aVar = new a();
            block.invoke(aVar);
            return new o(aVar.b(), aVar.a(), aVar.d(), aVar.c());
        }

        @Override // io.ktor.client.plugins.m
        @NotNull
        public io.ktor.util.a<o> getKey() {
            return o.key;
        }
    }

    public static final class c<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t5, T t10) {
            return y7.c.d(q7.a.i((Charset) t5), q7.a.i((Charset) t10));
        }
    }

    public static final class d<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t5, T t10) {
            return y7.c.d((Float) ((w7.u) t10).d(), (Float) ((w7.u) t5).d());
        }
    }

    public o(@NotNull Set<? extends Charset> charsets, @NotNull Map<Charset, Float> charsetQuality, @Nullable Charset charset, @NotNull Charset responseCharsetFallback) {
        kotlin.jvm.internal.t.j(charsets, "charsets");
        kotlin.jvm.internal.t.j(charsetQuality, "charsetQuality");
        kotlin.jvm.internal.t.j(responseCharsetFallback, "responseCharsetFallback");
        this.responseCharsetFallback = responseCharsetFallback;
        List<w7.u> listL0 = kotlin.collections.d0.L0(u0.C(charsetQuality), new d());
        ArrayList arrayList = new ArrayList();
        for (Object obj : charsets) {
            if (!charsetQuality.containsKey((Charset) obj)) {
                arrayList.add(obj);
            }
        }
        List<Charset> listL1 = kotlin.collections.d0.L0(arrayList, new c());
        StringBuilder sb = new StringBuilder();
        for (Charset charset2 : listL1) {
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append(q7.a.i(charset2));
        }
        for (w7.u uVar : listL0) {
            Charset charset3 = (Charset) uVar.a();
            float fFloatValue = ((Number) uVar.b()).floatValue();
            if (sb.length() > 0) {
                sb.append(",");
            }
            double d2 = fFloatValue;
            if (com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE > d2 || d2 > 1.0d) {
                throw new IllegalStateException("Check failed.".toString());
            }
            sb.append(q7.a.i(charset3) + ";q=" + (((double) g8.c.c(100 * fFloatValue)) / 100.0d));
        }
        if (sb.length() == 0) {
            sb.append(q7.a.i(this.responseCharsetFallback));
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        this.acceptCharsetHeader = string;
        if (charset == null && (charset = (Charset) kotlin.collections.d0.l0(listL1)) == null) {
            w7.u uVar2 = (w7.u) kotlin.collections.d0.l0(listL0);
            charset = uVar2 != null ? (Charset) uVar2.c() : null;
            if (charset == null) {
                charset = kotlin.text.d.UTF_8;
            }
        }
        this.requestCharset = charset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object e(i7.d dVar, String str, io.ktor.http.c cVar) {
        Charset charsetA;
        io.ktor.http.c cVarA = cVar == null ? io.ktor.http.c.C0410c.INSTANCE.a() : cVar;
        if (cVar == null || (charsetA = io.ktor.http.d.a(cVar)) == null) {
            charsetA = this.requestCharset;
        }
        p.LOGGER.a("Sending request body to " + dVar.h() + " as text/plain with charset " + charsetA);
        return new k7.c(str, io.ktor.http.d.b(cVarA, charsetA), null, 4, null);
    }

    public final void c(@NotNull i7.d context) {
        kotlin.jvm.internal.t.j(context, "context");
        io.ktor.http.l headers = context.getHeaders();
        io.ktor.http.o oVar = io.ktor.http.o.INSTANCE;
        if (headers.h(oVar.d()) != null) {
            return;
        }
        p.LOGGER.a("Adding Accept-Charset=" + this.acceptCharsetHeader + " to " + context.h());
        context.getHeaders().k(oVar.d(), this.acceptCharsetHeader);
    }

    @NotNull
    public final String d(@NotNull io.ktor.client.call.b call, @NotNull r7.m body) {
        kotlin.jvm.internal.t.j(call, "call");
        kotlin.jvm.internal.t.j(body, "body");
        Charset charsetA = io.ktor.http.s.a(call.f());
        if (charsetA == null) {
            charsetA = this.responseCharsetFallback;
        }
        p.LOGGER.a("Reading response body for " + call.e().getUrl() + " as String with charset " + charsetA);
        return r7.s.e(body, charsetA, 0, 2, null);
    }
}
