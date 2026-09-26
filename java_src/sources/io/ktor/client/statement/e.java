package io.ktor.client.statement;

import io.ktor.http.s;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r7.j;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.statement.HttpResponseKt", f = "HttpResponse.kt", l = {97}, m = "bodyAsChannel")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return e.a(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.statement.HttpResponseKt", f = "HttpResponse.kt", l = {97}, m = "bodyAsText")
    static final class b extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return e.b(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object a(@NotNull c cVar, @NotNull kotlin.coroutines.d<? super io.ktor.utils.io.g> dVar) {
        a aVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object objA = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar.label;
        if (i11 == 0) {
            w.b(objA);
            io.ktor.client.call.b bVarY0 = cVar.y0();
            KType kTypeK = q0.k(io.ktor.utils.io.g.class);
            o7.a aVarB = o7.b.b(TypesJVMKt.getJavaType(kTypeK), q0.b(io.ktor.utils.io.g.class), kTypeK);
            aVar.label = 1;
            objA = bVarY0.a(aVarB, aVar);
            if (objA == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(objA);
        }
        if (objA != null) {
            return (io.ktor.utils.io.g) objA;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.ktor.utils.io.ByteReadChannel");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object b(@NotNull c cVar, @NotNull Charset charset, @NotNull kotlin.coroutines.d<? super String> dVar) {
        b bVar;
        CharsetDecoder decoder;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.label = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object objA = bVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = bVar.label;
        if (i11 == 0) {
            w.b(objA);
            Charset charsetA = s.a(cVar);
            if (charsetA != null) {
                charset = charsetA;
            }
            CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
            io.ktor.client.call.b bVarY0 = cVar.y0();
            KType kTypeK = q0.k(j.class);
            o7.a aVarB = o7.b.b(TypesJVMKt.getJavaType(kTypeK), q0.b(j.class), kTypeK);
            bVar.L$0 = charsetDecoderNewDecoder;
            bVar.label = 1;
            objA = bVarY0.a(aVarB, bVar);
            if (objA == objE) {
                return objE;
            }
            decoder = charsetDecoderNewDecoder;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            decoder = (CharsetDecoder) bVar.L$0;
            w.b(objA);
        }
        if (objA == null) {
            throw new NullPointerException("null cannot be cast to non-null type io.ktor.utils.io.core.ByteReadPacket");
        }
        t.i(decoder, "decoder");
        return q7.b.b(decoder, (j) objA, 0, 2, null);
    }

    public static /* synthetic */ Object c(c cVar, Charset charset, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = kotlin.text.d.UTF_8;
        }
        return b(cVar, charset, dVar);
    }

    public static final void d(@NotNull c cVar) {
        t.j(cVar, "<this>");
        kotlin.coroutines.g.b bVar = cVar.getCoroutineContext().get(b2.Key);
        t.g(bVar);
        ((a0) bVar).complete();
    }

    @NotNull
    public static final i7.c e(@NotNull c cVar) {
        t.j(cVar, "<this>");
        return cVar.y0().e();
    }
}
