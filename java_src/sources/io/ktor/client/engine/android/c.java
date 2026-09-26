package io.ktor.client.engine.android;

import e8.p;
import io.ktor.client.call.h;
import io.ktor.http.t;
import io.ktor.utils.io.j;
import io.ktor.utils.io.q;
import io.ktor.utils.io.w;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import kotlin.collections.v;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    @NotNull
    private static final List<t> METHODS_WITHOUT_BODY;

    @f(c = "io.ktor.client.engine.android.AndroidClientEngineKt", f = "AndroidClientEngine.kt", l = {116, 123}, m = "writeTo")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
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
            return c.b(null, null, null, this);
        }
    }

    static {
        t.a aVar = t.Companion;
        METHODS_WITHOUT_BODY = v.p(aVar.a(), aVar.b());
    }

    @f(c = "io.ktor.client.engine.android.AndroidClientEngineKt$writeTo$2$channel$1", f = "AndroidClientEngine.kt", l = {120}, m = "invokeSuspend")
    static final class b extends l implements p<w, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ k7.b $this_writeTo;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(k7.b bVar, kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
            this.$this_writeTo = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            b bVar = new b(this.$this_writeTo, dVar);
            bVar.L$0 = obj;
            return bVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w wVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((b) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
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
                w wVar = (w) this.L$0;
                k7.b.e eVar = (k7.b.e) this.$this_writeTo;
                j jVarMo1642d = wVar.mo1642d();
                this.label = 1;
                if (eVar.d(jVarMo1642d, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Nullable
    public static final Object b(@NotNull k7.b bVar, @NotNull OutputStream outputStream, @NotNull g gVar, @NotNull kotlin.coroutines.d<? super l0> dVar) throws IOException {
        a aVar;
        Throwable th;
        ?? r10;
        Closeable closeable;
        OutputStream outputStream2 = outputStream;
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
        a aVar2 = aVar;
        Object objB = aVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        ?? r5 = aVar2.label;
        try {
            if (r5 == 0) {
                w7.w.b(objB);
                try {
                    if (bVar instanceof k7.b.a) {
                        outputStream2.write(((k7.b.a) bVar).d());
                    } else if (bVar instanceof k7.b.d) {
                        io.ktor.utils.io.g gVarD = ((k7.b.d) bVar).d();
                        aVar2.L$0 = outputStream2;
                        aVar2.label = 1;
                        objB = io.ktor.utils.io.jvm.javaio.j.b(gVarD, outputStream, 0L, aVar2, 2, null);
                        if (objB == objE) {
                            return objE;
                        }
                        closeable = outputStream2;
                        ((Number) objB).longValue();
                        r5 = closeable;
                    } else if (bVar instanceof k7.b.e) {
                        io.ktor.utils.io.g gVarD2 = q.f(t1.INSTANCE, gVar, false, new b(bVar, null), 2, null).mo1641d();
                        aVar2.L$0 = outputStream2;
                        aVar2.label = 2;
                        if (io.ktor.utils.io.jvm.javaio.j.b(gVarD2, outputStream, 0L, aVar2, 2, null) == objE) {
                            return objE;
                        }
                    } else if (!(bVar instanceof k7.b.AbstractC0421b)) {
                        throw new h(bVar);
                    }
                    r5 = outputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    r10 = outputStream2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        kotlin.io.c.a(r10, th);
                        throw th3;
                    }
                }
            } else if (r5 == 1) {
                Closeable closeable2 = (Closeable) aVar2.L$0;
                w7.w.b(objB);
                closeable = closeable2;
                ((Number) objB).longValue();
                r5 = closeable;
            } else {
                if (r5 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Closeable closeable3 = (Closeable) aVar2.L$0;
                w7.w.b(objB);
                r5 = closeable3;
            }
            l0 l0Var = l0.INSTANCE;
            kotlin.io.c.a(r5, null);
            return l0.INSTANCE;
        } catch (Throwable th4) {
            th = th4;
            r10 = r5;
        }
    }
}
