package io.ktor.utils.io.jvm.nio;

import e8.l;
import io.ktor.utils.io.g;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.o0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: io.ktor.utils.io.jvm.nio.a$a, reason: collision with other inner class name */
    @f(c = "io.ktor.utils.io.jvm.nio.WritingKt", f = "Writing.kt", l = {50}, m = "copyTo")
    static final class C0419a extends d {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C0419a(kotlin.coroutines.d<? super C0419a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.a(null, null, 0L, this);
        }
    }

    static final class b extends v implements l<ByteBuffer, l0> {
        final /* synthetic */ WritableByteChannel $channel;
        final /* synthetic */ o0 $copied;
        final /* synthetic */ long $limit;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j6, o0 o0Var, WritableByteChannel writableByteChannel) {
            super(1);
            this.$limit = j6;
            this.$copied = o0Var;
            this.$channel = writableByteChannel;
        }

        public final void a(@NotNull ByteBuffer bb) throws IOException {
            t.j(bb, "bb");
            long j6 = this.$limit - this.$copied.element;
            if (j6 >= bb.remaining()) {
                long jWrite = 0;
                while (bb.hasRemaining()) {
                    jWrite += (long) this.$channel.write(bb);
                }
                this.$copied.element += jWrite;
                return;
            }
            int iLimit = bb.limit();
            bb.limit(bb.position() + ((int) j6));
            while (bb.hasRemaining()) {
                this.$channel.write(bb);
            }
            bb.limit(iLimit);
            this.$copied.element += j6;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(ByteBuffer byteBuffer) throws IOException {
            a(byteBuffer);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007f A[PHI: r2 r7 r9 r11
      0x007f: PHI (r2v2 e8.l<? super java.nio.ByteBuffer, w7.l0>) = (r2v1 e8.l<? super java.nio.ByteBuffer, w7.l0>), (r2v3 e8.l<? super java.nio.ByteBuffer, w7.l0>) binds: [B:30:0x0075, B:37:0x009b] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r7v11 io.ktor.utils.io.g) = (r7v0 io.ktor.utils.io.g), (r7v12 io.ktor.utils.io.g) binds: [B:30:0x0075, B:37:0x009b] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r9v1 long) = (r9v0 long), (r9v2 long) binds: [B:30:0x0075, B:37:0x009b] A[DONT_GENERATE, DONT_INLINE]
      0x007f: PHI (r11v10 kotlin.jvm.internal.o0) = (r11v5 kotlin.jvm.internal.o0), (r11v11 kotlin.jvm.internal.o0) binds: [B:30:0x0075, B:37:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:35:0x0096 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0094 -> B:36:0x0097). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull io.ktor.utils.io.g r7, @org.jetbrains.annotations.NotNull java.nio.channels.WritableByteChannel r8, long r9, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Long> r11) {
        /*
            boolean r0 = r11 instanceof io.ktor.utils.io.jvm.nio.a.C0419a
            if (r0 == 0) goto L13
            r0 = r11
            io.ktor.utils.io.jvm.nio.a$a r0 = (io.ktor.utils.io.jvm.nio.a.C0419a) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.jvm.nio.a$a r0 = new io.ktor.utils.io.jvm.nio.a$a
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            long r7 = r0.J$0
            java.lang.Object r9 = r0.L$2
            e8.l r9 = (e8.l) r9
            java.lang.Object r10 = r0.L$1
            kotlin.jvm.internal.o0 r10 = (kotlin.jvm.internal.o0) r10
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.g r2 = (io.ktor.utils.io.g) r2
            w7.w.b(r11)
            r11 = r10
            r6 = r2
            r2 = r9
            r9 = r7
            r7 = r6
            goto L97
        L3c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L44:
            w7.w.b(r11)
            r4 = 0
            int r11 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r11 < 0) goto Lab
            boolean r11 = r8 instanceof java.nio.channels.SelectableChannel
            if (r11 == 0) goto L63
            r11 = r8
            java.nio.channels.SelectableChannel r11 = (java.nio.channels.SelectableChannel) r11
            boolean r11 = r11.isBlocking()
            if (r11 == 0) goto L5b
            goto L63
        L5b:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "Non-blocking channels are not supported"
            r7.<init>(r8)
            throw r7
        L63:
            boolean r11 = r7.o()
            if (r11 == 0) goto L75
            java.lang.Throwable r7 = r7.j()
            if (r7 != 0) goto L74
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.b.e(r4)
            return r7
        L74:
            throw r7
        L75:
            kotlin.jvm.internal.o0 r11 = new kotlin.jvm.internal.o0
            r11.<init>()
            io.ktor.utils.io.jvm.nio.a$b r2 = new io.ktor.utils.io.jvm.nio.a$b
            r2.<init>(r9, r11, r8)
        L7f:
            long r4 = r11.element
            int r8 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r8 >= 0) goto L9d
            r0.L$0 = r7
            r0.L$1 = r11
            r0.L$2 = r2
            r0.J$0 = r9
            r0.label = r3
            r8 = 0
            java.lang.Object r8 = r7.l(r8, r2, r0)
            if (r8 != r1) goto L97
            return r1
        L97:
            boolean r8 = r7.o()
            if (r8 == 0) goto L7f
        L9d:
            java.lang.Throwable r7 = r7.j()
            if (r7 != 0) goto Laa
            long r7 = r11.element
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.b.e(r7)
            return r7
        Laa:
            throw r7
        Lab:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Limit shouldn't be negative: "
            r7.append(r8)
            r7.append(r9)
            java.lang.String r7 = r7.toString()
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r7 = r7.toString()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.jvm.nio.a.a(io.ktor.utils.io.g, java.nio.channels.WritableByteChannel, long, kotlin.coroutines.d):java.lang.Object");
    }

    public static /* synthetic */ Object b(g gVar, WritableByteChannel writableByteChannel, long j6, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = Long.MAX_VALUE;
        }
        return a(gVar, writableByteChannel, j6, dVar);
    }
}
