package io.ktor.client.plugins;

import io.ktor.http.p0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class l {

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.HttpCallValidator");

    @NotNull
    private static final io.ktor.util.a<Boolean> ExpectSuccessAttributeKey = new io.ktor.util.a<>("ExpectSuccessAttributeKey");

    public static final class a implements i7.c {
        final /* synthetic */ i7.d $builder;

        @NotNull
        private final io.ktor.util.b attributes;

        @NotNull
        private final io.ktor.http.k headers;

        @NotNull
        private final io.ktor.http.t method;

        @NotNull
        private final p0 url;

        @Override // i7.c
        @NotNull
        public io.ktor.util.b L() {
            return this.attributes;
        }

        @Override // io.ktor.http.q
        @NotNull
        public io.ktor.http.k getHeaders() {
            return this.headers;
        }

        @Override // i7.c
        @NotNull
        public io.ktor.http.t getMethod() {
            return this.method;
        }

        @Override // i7.c
        @NotNull
        public p0 getUrl() {
            return this.url;
        }

        a(i7.d dVar) {
            this.$builder = dVar;
            this.method = dVar.g();
            this.url = dVar.h().b();
            this.attributes = dVar.b();
            this.headers = dVar.getHeaders().n();
        }

        @Override // i7.c
        @NotNull
        public io.ktor.client.call.b y0() {
            throw new IllegalStateException("Call is not initialized".toString());
        }

        @Override // i7.c, kotlinx.coroutines.o0
        @NotNull
        public kotlin.coroutines.g getCoroutineContext() {
            return i7.c.a.a(this);
        }
    }

    @NotNull
    public static final io.ktor.util.a<Boolean> e() {
        return ExpectSuccessAttributeKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a a(i7.d dVar) {
        return new a(dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(@NotNull io.ktor.client.b<?> bVar, @NotNull e8.l<? super k.b, l0> block) {
        kotlin.jvm.internal.t.j(bVar, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        bVar.h(k.Companion, block);
    }
}
