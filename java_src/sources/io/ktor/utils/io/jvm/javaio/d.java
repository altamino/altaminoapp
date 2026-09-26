package io.ktor.utils.io.jvm.javaio;

import java.io.InputStream;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class d extends InputStream {

    @NotNull
    private final io.ktor.utils.io.g channel;

    @NotNull
    private final a0 context;

    @NotNull
    private final a loop;

    @Nullable
    private byte[] single;

    public static final class a extends io.ktor.utils.io.jvm.javaio.a {
        final /* synthetic */ d this$0;

        /* JADX INFO: renamed from: io.ktor.utils.io.jvm.javaio.d$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.jvm.javaio.InputAdapter$loop$1", f = "Blocking.kt", l = {319, 38}, m = "loop")
        static final class C0418a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            C0418a(kotlin.coroutines.d<? super C0418a> dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return a.this.h(this);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(b2 b2Var, d dVar) {
            super(b2Var);
            this.this$0 = dVar;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x005b  */
        /* JADX WARN: Code duplicated, block: B:21:0x0060 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:24:0x0083 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:27:0x008d  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0081 -> B:25:0x0084). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:27:0x008d
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // io.ktor.utils.io.jvm.javaio.a
        @org.jetbrains.annotations.Nullable
        protected java.lang.Object h(@org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super w7.l0> r10) {
            /*
                r9 = this;
                boolean r0 = r10 instanceof io.ktor.utils.io.jvm.javaio.d.a.C0418a
                if (r0 == 0) goto L13
                r0 = r10
                io.ktor.utils.io.jvm.javaio.d$a$a r0 = (io.ktor.utils.io.jvm.javaio.d.a.C0418a) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                io.ktor.utils.io.jvm.javaio.d$a$a r0 = new io.ktor.utils.io.jvm.javaio.d$a$a
                r0.<init>(r10)
            L18:
                java.lang.Object r10 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L44
                if (r2 == r4) goto L38
                if (r2 != r3) goto L30
                java.lang.Object r2 = r0.L$0
                io.ktor.utils.io.jvm.javaio.d$a r2 = (io.ktor.utils.io.jvm.javaio.d.a) r2
                w7.w.b(r10)
                goto L84
            L30:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L38:
                java.lang.Object r2 = r0.L$1
                io.ktor.utils.io.jvm.javaio.a r2 = (io.ktor.utils.io.jvm.javaio.a) r2
                java.lang.Object r2 = r0.L$0
                io.ktor.utils.io.jvm.javaio.d$a r2 = (io.ktor.utils.io.jvm.javaio.d.a) r2
                w7.w.b(r10)
                goto L61
            L44:
                w7.w.b(r10)
                r10 = 0
                r2 = r9
            L49:
                r2.result = r10
                r0.L$0 = r2
                r0.L$1 = r2
                r0.label = r4
                java.lang.Object r10 = io.ktor.utils.io.jvm.javaio.a.c(r2, r0)
                java.lang.Object r5 = kotlin.coroutines.intrinsics.b.e()
                if (r10 != r5) goto L5e
                kotlin.coroutines.jvm.internal.h.c(r0)
            L5e:
                if (r10 != r1) goto L61
                return r1
            L61:
                java.lang.String r5 = "null cannot be cast to non-null type kotlin.ByteArray"
                kotlin.jvm.internal.t.h(r10, r5)
                byte[] r10 = (byte[]) r10
                io.ktor.utils.io.jvm.javaio.d r5 = r2.this$0
                io.ktor.utils.io.g r5 = io.ktor.utils.io.jvm.javaio.d.a(r5)
                int r6 = r2.f()
                int r7 = r2.e()
                r0.L$0 = r2
                r8 = 0
                r0.L$1 = r8
                r0.label = r3
                java.lang.Object r10 = r5.k(r10, r6, r7, r0)
                if (r10 != r1) goto L84
                return r1
            L84:
                java.lang.Number r10 = (java.lang.Number) r10
                int r10 = r10.intValue()
                r5 = -1
                if (r10 != r5) goto L49
                io.ktor.utils.io.jvm.javaio.d r0 = r2.this$0
                kotlinx.coroutines.a0 r0 = io.ktor.utils.io.jvm.javaio.d.b(r0)
                r0.complete()
                r2.d(r10)
                w7.l0 r10 = w7.l0.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.jvm.javaio.d.a.h(kotlin.coroutines.d):java.lang.Object");
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            super.close();
            io.ktor.utils.io.i.a(this.channel);
            if (!this.context.m()) {
                b2.a.a(this.context, null, 1, null);
            }
            this.loop.k();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        try {
            byte[] bArr = this.single;
            if (bArr == null) {
                bArr = new byte[1];
                this.single = bArr;
            }
            int iM = this.loop.m(bArr, 0, 1);
            if (iM == -1) {
                return -1;
            }
            if (iM == 1) {
                return bArr[0] & 255;
            }
            throw new IllegalStateException(("Expected a single byte or EOF. Got " + iM + " bytes.").toString());
        } catch (Throwable th) {
            throw th;
        }
    }

    public d(@Nullable b2 b2Var, @NotNull io.ktor.utils.io.g channel) {
        t.j(channel, "channel");
        this.channel = channel;
        this.context = f2.a(b2Var);
        this.loop = new a(b2Var, this);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.channel.f();
    }

    @Override // java.io.InputStream
    public synchronized int read(@Nullable byte[] bArr, int i10, int i11) {
        a aVar;
        aVar = this.loop;
        t.g(bArr);
        return aVar.m(bArr, i10, i11);
    }
}
