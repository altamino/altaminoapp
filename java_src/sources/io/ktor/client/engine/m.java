package io.ktor.client.engine;

import e8.p;
import io.ktor.http.o;
import io.ktor.util.r;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.y0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    @NotNull
    private static final Set<String> DATE_HEADERS;

    @NotNull
    private static final String KTOR_DEFAULT_USER_AGENT = "Ktor client";

    static final class a extends v implements e8.l<io.ktor.http.l, l0> {
        final /* synthetic */ k7.b $content;
        final /* synthetic */ io.ktor.http.k $requestHeaders;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(io.ktor.http.k kVar, k7.b bVar) {
            super(1);
            this.$requestHeaders = kVar;
            this.$content = bVar;
        }

        public final void a(@NotNull io.ktor.http.l buildHeaders) {
            t.j(buildHeaders, "$this$buildHeaders");
            buildHeaders.e(this.$requestHeaders);
            buildHeaders.e(this.$content.c());
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(io.ktor.http.l lVar) {
            a(lVar);
            return l0.INSTANCE;
        }
    }

    static final class b extends v implements p<String, List<? extends String>, l0> {
        final /* synthetic */ p<String, String, l0> $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(p<? super String, ? super String, l0> pVar) {
            super(2);
            this.$block = pVar;
        }

        public final void a(@NotNull String key, @NotNull List<String> values) {
            t.j(key, "key");
            t.j(values, "values");
            o oVar = o.INSTANCE;
            if (t.e(oVar.g(), key) || t.e(oVar.i(), key)) {
                return;
            }
            if (!m.DATE_HEADERS.contains(key)) {
                this.$block.invoke(key, d0.t0(values, t.e(oVar.j(), key) ? "; " : ",", null, null, 0, null, null, 62, null));
                return;
            }
            p<String, String, l0> pVar = this.$block;
            Iterator<T> it = values.iterator();
            while (it.hasNext()) {
                pVar.invoke(key, (String) it.next());
            }
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(String str, List<? extends String> list) {
            a(str, list);
            return l0.INSTANCE;
        }
    }

    static {
        o oVar = o.INSTANCE;
        DATE_HEADERS = y0.i(oVar.k(), oVar.m(), oVar.q(), oVar.n(), oVar.p());
    }

    public static final void c(@NotNull io.ktor.http.k requestHeaders, @NotNull k7.b content, @NotNull p<? super String, ? super String, l0> block) {
        String string;
        String string2;
        t.j(requestHeaders, "requestHeaders");
        t.j(content, "content");
        t.j(block, "block");
        io.ktor.client.utils.e.a(new a(requestHeaders, content)).d(new b(block));
        o oVar = o.INSTANCE;
        if (requestHeaders.get(oVar.w()) == null && content.c().get(oVar.w()) == null && d()) {
            block.invoke(oVar.w(), KTOR_DEFAULT_USER_AGENT);
        }
        io.ktor.http.c cVarB = content.b();
        if ((cVarB == null || (string = cVarB.toString()) == null) && (string = content.c().get(oVar.i())) == null) {
            string = requestHeaders.get(oVar.i());
        }
        Long lA = content.a();
        if ((lA == null || (string2 = lA.toString()) == null) && (string2 = content.c().get(oVar.g())) == null) {
            string2 = requestHeaders.get(oVar.g());
        }
        if (string != null) {
            block.invoke(oVar.i(), string);
        }
        if (string2 != null) {
            block.invoke(oVar.g(), string2);
        }
    }

    private static final boolean d() {
        return !r.INSTANCE.a();
    }

    @Nullable
    public static final Object b(@NotNull kotlin.coroutines.d<? super kotlin.coroutines.g> dVar) {
        kotlin.coroutines.g.b bVar = dVar.getContext().get(j.Companion);
        t.g(bVar);
        return ((j) bVar).c();
    }
}
