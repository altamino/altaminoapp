package io.ktor.client.plugins;

import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.q0;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    public static final class a extends k7.b.d {
        final /* synthetic */ Object $body;

        @Nullable
        private final Long contentLength;

        @NotNull
        private final io.ktor.http.c contentType;

        @Override // k7.b
        @Nullable
        public Long a() {
            return this.contentLength;
        }

        @Override // k7.b
        @NotNull
        public io.ktor.http.c b() {
            return this.contentType;
        }

        a(i7.d dVar, io.ktor.http.c cVar, Object obj) {
            this.$body = obj;
            String strH = dVar.getHeaders().h(io.ktor.http.o.INSTANCE.g());
            this.contentLength = strH != null ? Long.valueOf(Long.parseLong(strH)) : null;
            this.contentType = cVar == null ? io.ktor.http.c.a.INSTANCE.a() : cVar;
        }

        @Override // k7.b.d
        @NotNull
        public io.ktor.utils.io.g d() {
            return io.ktor.utils.io.jvm.javaio.h.c((InputStream) this.$body, null, null, 3, null);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.plugins.DefaultTransformersJvmKt$platformResponseDefaultTransformers$1", f = "DefaultTransformersJvm.kt", l = {36}, m = "invokeSuspend")
    static final class b extends kotlin.coroutines.jvm.internal.l implements e8.q<io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b>, io.ktor.client.statement.d, kotlin.coroutines.d<? super l0>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        public static final class a extends InputStream {
            final /* synthetic */ io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> $$this$intercept;
            final /* synthetic */ InputStream $stream;

            @Override // java.io.InputStream
            public int read() {
                return this.$stream.read();
            }

            a(InputStream inputStream, io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> eVar) {
                this.$stream = inputStream;
                this.$$this$intercept = eVar;
            }

            @Override // java.io.InputStream
            public int available() {
                return this.$stream.available();
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] b7, int i10, int i11) {
                kotlin.jvm.internal.t.j(b7, "b");
                return this.$stream.read(b7, i10, i11);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                super.close();
                this.$stream.close();
                io.ktor.client.statement.e.d(this.$$this$intercept.b().f());
            }
        }

        b(kotlin.coroutines.d<? super b> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull io.ktor.util.pipeline.e<io.ktor.client.statement.d, io.ktor.client.call.b> eVar, @NotNull io.ktor.client.statement.d dVar, @Nullable kotlin.coroutines.d<? super l0> dVar2) {
            b bVar = new b(dVar2);
            bVar.L$0 = eVar;
            bVar.L$1 = dVar;
            return bVar.invokeSuspend(l0.INSTANCE);
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
                io.ktor.client.statement.d dVar = (io.ktor.client.statement.d) this.L$1;
                o7.a aVarA = dVar.a();
                Object objB = dVar.b();
                if (!(objB instanceof io.ktor.utils.io.g)) {
                    return l0.INSTANCE;
                }
                if (kotlin.jvm.internal.t.e(aVarA.a(), q0.b(InputStream.class))) {
                    io.ktor.client.statement.d dVar2 = new io.ktor.client.statement.d(aVarA, new a(io.ktor.utils.io.jvm.javaio.b.c((io.ktor.utils.io.g) objB, (b2) ((io.ktor.client.call.b) eVar.b()).getCoroutineContext().get(b2.Key)), eVar));
                    this.L$0 = null;
                    this.label = 1;
                    if (eVar.e(dVar2, this) == objE) {
                        return objE;
                    }
                }
            }
            return l0.INSTANCE;
        }
    }

    @Nullable
    public static final k7.b a(@Nullable io.ktor.http.c cVar, @NotNull i7.d context, @NotNull Object body) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(body, "body");
        if (body instanceof InputStream) {
            return new a(context, cVar, body);
        }
        return null;
    }

    public static final void b(@NotNull io.ktor.client.a aVar) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        aVar.o().l(io.ktor.client.statement.f.Phases.a(), new b(null));
    }
}
