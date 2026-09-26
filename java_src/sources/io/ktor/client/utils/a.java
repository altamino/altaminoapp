package io.ktor.client.utils;

import e8.p;
import e8.q;
import io.ktor.utils.io.g;
import io.ktor.utils.io.w;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: io.ktor.client.utils.a$a, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.utils.ByteChannelUtilsKt$observable$1", f = "ByteChannelUtils.kt", l = {23, 24, 26, 31}, m = "invokeSuspend")
    static final class C0408a extends l implements p<w, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ Long $contentLength;
        final /* synthetic */ q<Long, Long, kotlin.coroutines.d<? super l0>, Object> $listener;
        final /* synthetic */ g $this_observable;
        int I$0;
        long J$0;
        long J$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C0408a(Long l, g gVar, q<? super Long, ? super Long, ? super kotlin.coroutines.d<? super l0>, ? extends Object> qVar, kotlin.coroutines.d<? super C0408a> dVar) {
            super(2, dVar);
            this.$contentLength = l;
            this.$this_observable = gVar;
            this.$listener = qVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            C0408a c0408a = new C0408a(this.$contentLength, this.$this_observable, this.$listener, dVar);
            c0408a.L$0 = obj;
            return c0408a;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w wVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((C0408a) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:41:0x00ef A[Catch: all -> 0x0022, TryCatch #1 {all -> 0x0022, blocks: (B:9:0x001d, B:63:0x01a4, B:39:0x00e9, B:41:0x00ef, B:44:0x0108, B:56:0x0172, B:60:0x0185), top: B:70:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:43:0x0107 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x012e A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:47:0x012f  */
        /* JADX WARN: Code duplicated, block: B:51:0x015d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:52:0x015e  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [int] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v16 */
        /* JADX WARN: Type inference failed for: r2v19 */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v22 */
        /* JADX WARN: Type inference failed for: r2v26 */
        /* JADX WARN: Type inference failed for: r2v27 */
        /* JADX WARN: Type inference failed for: r2v28 */
        /* JADX WARN: Type inference failed for: r2v29 */
        /* JADX WARN: Type inference failed for: r2v5 */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x015e -> B:53:0x0168). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 432
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.utils.a.C0408a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @NotNull
    public static final g a(@NotNull g gVar, @NotNull kotlin.coroutines.g context, @Nullable Long l, @NotNull q<? super Long, ? super Long, ? super kotlin.coroutines.d<? super l0>, ? extends Object> listener) {
        t.j(gVar, "<this>");
        t.j(context, "context");
        t.j(listener, "listener");
        return io.ktor.utils.io.q.d(t1.INSTANCE, context, true, new C0408a(l, gVar, listener, null)).mo1641d();
    }
}
