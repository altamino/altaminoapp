package io.ktor.utils.io.jvm.javaio;

import java.io.OutputStream;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class j {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.jvm.javaio.WritingKt", f = "Writing.kt", l = {22}, m = "copyTo")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        long J$0;
        long J$1;
        long J$2;
        Object L$0;
        Object L$1;
        Object L$2;
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
            return j.a(null, null, 0L, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    /* JADX WARN: Code duplicated, block: B:28:0x0093 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x00a3 A[Catch: all -> 0x00af, TRY_LEAVE, TryCatch #1 {all -> 0x00af, blocks: (B:30:0x0098, B:33:0x00a3, B:26:0x007a), top: B:49:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0094 -> B:49:0x0098). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull io.ktor.utils.io.g r18, @org.jetbrains.annotations.NotNull java.io.OutputStream r19, long r20, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Long> r22) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.jvm.javaio.j.a(io.ktor.utils.io.g, java.io.OutputStream, long, kotlin.coroutines.d):java.lang.Object");
    }

    public static /* synthetic */ Object b(io.ktor.utils.io.g gVar, OutputStream outputStream, long j6, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = Long.MAX_VALUE;
        }
        return a(gVar, outputStream, j6, dVar);
    }
}
