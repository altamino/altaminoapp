package io.ktor.utils.io;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class h {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteReadChannelJVMKt", f = "ByteReadChannelJVM.kt", l = {309, 312}, m = "copyToImpl")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int I$1;
        long J$0;
        long J$1;
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
            return h.c(null, null, 0L, this);
        }
    }

    @Nullable
    public static final Object b(@NotNull g gVar, @NotNull j jVar, long j6, @NotNull kotlin.coroutines.d<? super Long> dVar) {
        if (gVar == jVar) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (j6 == 0) {
            return kotlin.coroutines.jvm.internal.b.e(0L);
        }
        if ((gVar instanceof io.ktor.utils.io.a) && (jVar instanceof io.ktor.utils.io.a)) {
            return ((io.ktor.utils.io.a) jVar).J((io.ktor.utils.io.a) gVar, j6, null, dVar);
        }
        return ((gVar instanceof f) && (jVar instanceof f)) ? io.ktor.utils.io.internal.j.b((f) gVar, (f) jVar, Long.MAX_VALUE, dVar) : c(gVar, jVar, j6, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x0097 A[Catch: all -> 0x00ff, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00ff, blocks: (B:37:0x00f5, B:39:0x00fb, B:25:0x0097), top: B:56:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d0 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #2 {all -> 0x004f, blocks: (B:13:0x0040, B:29:0x00c7, B:31:0x00d0, B:46:0x010f, B:20:0x006e), top: B:58:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00fb A[Catch: all -> 0x00ff, TRY_LEAVE, TryCatch #1 {all -> 0x00ff, blocks: (B:37:0x00f5, B:39:0x00fb, B:25:0x0097), top: B:56:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x010c  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v3, types: [int] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00e7 -> B:35:0x00f1). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object c(io.ktor.utils.io.g r21, io.ktor.utils.io.j r22, long r23, kotlin.coroutines.d<? super java.lang.Long> r25) {
        /*
            Method dump skipped, instruction units count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.h.c(io.ktor.utils.io.g, io.ktor.utils.io.j, long, kotlin.coroutines.d):java.lang.Object");
    }
}
