package io.ktor.utils.io;

import androidx.compose.runtime.ComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public abstract class f implements io.ktor.utils.io.c, io.ktor.utils.io.g, io.ktor.utils.io.j {

    @NotNull
    private volatile /* synthetic */ int _availableForRead;

    @NotNull
    private volatile /* synthetic */ Object _closed;

    @NotNull
    private volatile /* synthetic */ Object _lastReadView;

    @NotNull
    private volatile /* synthetic */ long _totalBytesRead;

    @NotNull
    private volatile /* synthetic */ long _totalBytesWritten;
    private final boolean autoFlush;

    @NotNull
    private volatile /* synthetic */ int channelSize;

    @NotNull
    private final r7.i flushBuffer;

    @NotNull
    private final Object flushMutex;

    @NotNull
    private volatile /* synthetic */ int lastReadAvailable$delegate;

    @NotNull
    private volatile /* synthetic */ Object lastReadView$delegate;

    @NotNull
    private final r7.j readable;

    @NotNull
    private final io.ktor.utils.io.internal.a slot;

    @NotNull
    private final r7.i writable;
    private static final /* synthetic */ AtomicLongFieldUpdater _totalBytesRead$FU = AtomicLongFieldUpdater.newUpdater(f.class, "_totalBytesRead");
    private static final /* synthetic */ AtomicLongFieldUpdater _totalBytesWritten$FU = AtomicLongFieldUpdater.newUpdater(f.class, "_totalBytesWritten");
    private static final /* synthetic */ AtomicIntegerFieldUpdater _availableForRead$FU = AtomicIntegerFieldUpdater.newUpdater(f.class, "_availableForRead");
    private static final /* synthetic */ AtomicIntegerFieldUpdater channelSize$FU = AtomicIntegerFieldUpdater.newUpdater(f.class, "channelSize");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closed$FU = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "_closed");

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {88}, m = "awaitAtLeastNBytesAvailableForRead$ktor_io")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        int I$0;
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
            return f.this.t(0, this);
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.a<Boolean> {
        final /* synthetic */ int $count;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i10) {
            super(0);
            this.$count = i10;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(f.this.f() < this.$count && !f.this.o());
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {81}, m = "awaitAtLeastNBytesAvailableForWrite$ktor_io")
    static final class c extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.this.u(0, this);
        }
    }

    static final class d extends kotlin.jvm.internal.v implements e8.a<Boolean> {
        final /* synthetic */ int $count;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(int i10) {
            super(0);
            this.$count = i10;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(f.this.C() < this.$count && !f.this.D());
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE}, m = "awaitSuspend")
    static final class e extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        e(kotlin.coroutines.d<? super e> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.this.w(0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.f$f, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {486}, m = "readAvailable$ktor_io")
    static final class C0413f extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C0413f(kotlin.coroutines.d<? super C0413f> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.this.G(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {530}, m = "readAvailable$suspendImpl")
    static final class g extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        g(kotlin.coroutines.d<? super g> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.I(f.this, null, 0, 0, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {TypedValues.CycleType.TYPE_WAVE_PHASE}, m = "readRemainingSuspend")
    static final class h extends kotlin.coroutines.jvm.internal.d {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        h(kotlin.coroutines.d<? super h> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.this.K(null, 0L, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {193}, m = "writeFully$suspendImpl")
    static final class i extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        i(kotlin.coroutines.d<? super i> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.M(f.this, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteChannelSequentialBase", f = "ByteChannelSequential.kt", l = {ComposerKt.providerMapsKey}, m = "writeFully$suspendImpl")
    static final class j extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        j(kotlin.coroutines.d<? super j> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return f.N(f.this, null, 0, 0, this);
        }
    }

    public f(@NotNull s7.a initial, boolean z6, @NotNull t7.g<s7.a> pool) {
        kotlin.jvm.internal.t.j(initial, "initial");
        kotlin.jvm.internal.t.j(pool, "pool");
        this.autoFlush = z6;
        s7.a.d dVar = s7.a.Companion;
        this._lastReadView = dVar.a();
        this._totalBytesRead = 0L;
        this._totalBytesWritten = 0L;
        this._availableForRead = 0;
        this.channelSize = 0;
        this._closed = null;
        this.writable = new r7.i(pool);
        this.readable = new r7.j(initial, pool);
        this.lastReadAvailable$delegate = 0;
        this.lastReadView$delegate = dVar.a();
        this.slot = new io.ktor.utils.io.internal.a();
        this.flushMutex = new Object();
        this.flushBuffer = new r7.i(null, 1, null);
        int iC = (int) r7.h.c(initial);
        s(iC);
        _availableForRead$FU.addAndGet(this, iC);
    }

    protected final boolean D() {
        return this._closed != null;
    }

    @Override // io.ktor.utils.io.g
    public int f() {
        return this._availableForRead;
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object g(@NotNull s7.a aVar, @NotNull kotlin.coroutines.d<? super Integer> dVar) {
        return H(this, aVar, dVar);
    }

    @Override // io.ktor.utils.io.j
    public boolean h() {
        return this.autoFlush;
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object i(long j6, @NotNull kotlin.coroutines.d<? super r7.j> dVar) {
        return J(this, j6, dVar);
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object k(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super Integer> dVar) {
        return I(this, bArr, i10, i11, dVar);
    }

    @Override // io.ktor.utils.io.j
    @Nullable
    public Object m(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return N(this, bArr, i10, i11, dVar);
    }

    @Override // io.ktor.utils.io.j
    @Nullable
    public Object n(@NotNull r7.a aVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return M(this, aVar, dVar);
    }

    private final boolean A() {
        if (this.writable.N0()) {
            this.slot.c();
            return false;
        }
        B();
        this.slot.c();
        return true;
    }

    private final void B() {
        synchronized (this.flushMutex) {
            int iM0 = this.writable.M0();
            s7.a aVarT0 = this.writable.t0();
            kotlin.jvm.internal.t.g(aVarT0);
            this.flushBuffer.y0(aVarT0);
            _availableForRead$FU.addAndGet(this, iM0);
        }
    }

    private final boolean E() {
        n nVar = (n) this._closed;
        return (nVar != null ? nVar.a() : null) != null;
    }

    static /* synthetic */ Object H(f fVar, s7.a aVar, kotlin.coroutines.d<? super Integer> dVar) {
        kotlin.jvm.internal.t.h(aVar, "null cannot be cast to non-null type io.ktor.utils.io.core.Buffer");
        return fVar.G(aVar, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static /* synthetic */ Object I(f fVar, byte[] bArr, int i10, int i11, kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
        g gVar;
        if (dVar instanceof g) {
            gVar = (g) dVar;
            int i12 = gVar.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                gVar.label = i12 - Integer.MIN_VALUE;
            } else {
                gVar = fVar.new g(dVar);
            }
        } else {
            gVar = fVar.new g(dVar);
        }
        Object obj = gVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i13 = gVar.label;
        if (i13 == 0) {
            w7.w.b(obj);
            Throwable thJ = fVar.j();
            if (thJ != null) {
                throw thJ;
            }
            if (fVar.D() && fVar.f() == 0) {
                return kotlin.coroutines.jvm.internal.b.d(-1);
            }
            if (i11 == 0) {
                return kotlin.coroutines.jvm.internal.b.d(0);
            }
            if (fVar.f() == 0) {
                gVar.L$0 = fVar;
                gVar.L$1 = bArr;
                gVar.I$0 = i10;
                gVar.I$1 = i11;
                gVar.label = 1;
                if (fVar.w(1, gVar) == objE) {
                    return objE;
                }
            }
        } else {
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i11 = gVar.I$1;
            i10 = gVar.I$0;
            bArr = (byte[]) gVar.L$1;
            fVar = (f) gVar.L$0;
            w7.w.b(obj);
        }
        if (!fVar.readable.h()) {
            fVar.F();
        }
        int iMin = (int) Math.min(i11, fVar.readable.G0());
        r7.n.b(fVar.readable, bArr, i10, iMin);
        fVar.r(iMin);
        return kotlin.coroutines.jvm.internal.b.d(iMin);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object K(r7.i iVar, long j6, kotlin.coroutines.d<? super r7.j> dVar) throws Throwable {
        h hVar;
        f fVar;
        if (dVar instanceof h) {
            hVar = (h) dVar;
            int i10 = hVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hVar.label = i10 - Integer.MIN_VALUE;
            } else {
                hVar = new h(dVar);
            }
        } else {
            hVar = new h(dVar);
        }
        Object obj = hVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = hVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            fVar = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            long j10 = hVar.J$0;
            r7.i iVar2 = (r7.i) hVar.L$1;
            fVar = (f) hVar.L$0;
            w7.w.b(obj);
            iVar = iVar2;
            j6 = j10;
        }
        while (iVar.M0() < j6) {
            long jMin = Math.min(j6 - ((long) iVar.M0()), fVar.readable.G0());
            iVar.F0(fVar.readable, jMin);
            fVar.r((int) jMin);
            fVar.z(iVar);
            if (fVar.o() || iVar.M0() == ((int) j6)) {
                break;
            }
            hVar.L$0 = fVar;
            hVar.L$1 = iVar;
            hVar.J$0 = j6;
            hVar.label = 1;
            if (fVar.w(1, hVar) == objE) {
                return objE;
            }
        }
        fVar.z(iVar);
        return iVar.L0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    static /* synthetic */ Object M(f fVar, r7.a aVar, kotlin.coroutines.d<? super l0> dVar) {
        i iVar;
        if (dVar instanceof i) {
            iVar = (i) dVar;
            int i10 = iVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                iVar.label = i10 - Integer.MIN_VALUE;
            } else {
                iVar = fVar.new i(dVar);
            }
        } else {
            iVar = fVar.new i(dVar);
        }
        Object obj = iVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = iVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            iVar.L$0 = fVar;
            iVar.L$1 = aVar;
            iVar.label = 1;
            if (fVar.u(1, iVar) == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (r7.a) iVar.L$1;
            fVar = (f) iVar.L$0;
            w7.w.b(obj);
        }
        int iJ = aVar.j() - aVar.h();
        r7.q.c(fVar.writable, aVar, 0, 2, null);
        fVar.s(iJ);
        return l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004b  */
    /* JADX WARN: Code duplicated, block: B:18:0x005b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:19:0x005c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    static /* synthetic */ java.lang.Object N(io.ktor.utils.io.f r5, byte[] r6, int r7, int r8, kotlin.coroutines.d<? super w7.l0> r9) {
        /*
            boolean r0 = r9 instanceof io.ktor.utils.io.f.j
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.f$j r0 = (io.ktor.utils.io.f.j) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.f$j r0 = new io.ktor.utils.io.f$j
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            int r5 = r0.I$1
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$1
            byte[] r7 = (byte[]) r7
            java.lang.Object r8 = r0.L$0
            io.ktor.utils.io.f r8 = (io.ktor.utils.io.f) r8
            w7.w.b(r9)
            r4 = r8
            r8 = r6
            r6 = r4
            goto L5c
        L38:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L40:
            w7.w.b(r9)
            int r8 = r8 + r7
            r4 = r6
            r6 = r5
            r5 = r8
            r8 = r7
            r7 = r4
        L49:
            if (r8 >= r5) goto L70
            r0.L$0 = r6
            r0.L$1 = r7
            r0.I$0 = r8
            r0.I$1 = r5
            r0.label = r3
            java.lang.Object r9 = r6.u(r3, r0)
            if (r9 != r1) goto L5c
            return r1
        L5c:
            int r9 = r6.C()
            int r2 = r5 - r8
            int r9 = java.lang.Math.min(r9, r2)
            r7.i r2 = r6.writable
            r7.q.b(r2, r7, r8, r9)
            int r8 = r8 + r9
            r6.s(r9)
            goto L49
        L70:
            w7.l0 r5 = w7.l0.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.f.N(io.ktor.utils.io.f, byte[], int, int, kotlin.coroutines.d):java.lang.Object");
    }

    private final void p(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("Can't read negative amount of bytes: " + i10).toString());
        }
        int i11 = -i10;
        channelSize$FU.getAndAdd(this, i11);
        _totalBytesRead$FU.addAndGet(this, i10);
        _availableForRead$FU.getAndAdd(this, i11);
        if (this.channelSize < 0) {
            throw new IllegalStateException(("Readable bytes count is negative: " + f() + ", " + i10 + " in " + this).toString());
        }
        if (f() >= 0) {
            return;
        }
        throw new IllegalStateException(("Readable bytes count is negative: " + f() + ", " + i10 + " in " + this).toString());
    }

    private final void q(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("Can't write negative amount of bytes: " + i10).toString());
        }
        channelSize$FU.getAndAdd(this, i10);
        _totalBytesWritten$FU.addAndGet(this, i10);
        if (this.channelSize >= 0) {
            return;
        }
        throw new IllegalStateException(("Readable bytes count is negative: " + this.channelSize + ", " + i10 + " in " + this).toString());
    }

    public int C() {
        return Math.max(0, 4088 - this.channelSize);
    }

    protected final void F() {
        synchronized (this.flushMutex) {
            s7.g.e(this.readable, this.flushBuffer);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object G(@NotNull r7.a aVar, @NotNull kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
        C0413f c0413f;
        f fVar;
        if (dVar instanceof C0413f) {
            c0413f = (C0413f) dVar;
            int i10 = c0413f.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0413f.label = i10 - Integer.MIN_VALUE;
            } else {
                c0413f = new C0413f(dVar);
            }
        } else {
            c0413f = new C0413f(dVar);
        }
        Object obj = c0413f.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = c0413f.label;
        if (i11 == 0) {
            w7.w.b(obj);
            Throwable thJ = j();
            if (thJ != null) {
                throw thJ;
            }
            if (D() && f() == 0) {
                return kotlin.coroutines.jvm.internal.b.d(-1);
            }
            if (aVar.f() - aVar.j() == 0) {
                return kotlin.coroutines.jvm.internal.b.d(0);
            }
            if (f() == 0) {
                c0413f.L$0 = this;
                c0413f.L$1 = aVar;
                c0413f.label = 1;
                if (w(1, c0413f) == objE) {
                    return objE;
                }
            }
            fVar = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (r7.a) c0413f.L$1;
            fVar = (f) c0413f.L$0;
            w7.w.b(obj);
        }
        if (!fVar.readable.h()) {
            fVar.F();
        }
        int iMin = (int) Math.min(aVar.f() - aVar.j(), fVar.readable.G0());
        r7.n.a(fVar.readable, aVar, iMin);
        fVar.r(iMin);
        return kotlin.coroutines.jvm.internal.b.d(iMin);
    }

    public final long L(@NotNull f dst, long j6) {
        kotlin.jvm.internal.t.j(dst, "dst");
        long jG0 = this.readable.G0();
        if (jG0 > j6) {
            return 0L;
        }
        dst.writable.E0(this.readable);
        int i10 = (int) jG0;
        dst.s(i10);
        r(i10);
        return jG0;
    }

    @Override // io.ktor.utils.io.j
    public boolean c(@Nullable Throwable th) {
        if (!androidx.concurrent.futures.a.a(_closed$FU, this, null, th == null ? o.a() : new n(th))) {
            return false;
        }
        if (th != null) {
            this.readable.release();
            this.writable.release();
            this.flushBuffer.release();
        } else {
            flush();
            this.writable.release();
        }
        this.slot.b(th);
        return true;
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public final Throwable j() {
        n nVar = (n) this._closed;
        if (nVar != null) {
            return nVar.a();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object t(int i10, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        a aVar;
        f fVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i11 = aVar.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.label = i11 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = aVar.label;
        if (i12 == 0) {
            w7.w.b(obj);
            fVar = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i10 = aVar.I$0;
            fVar = (f) aVar.L$0;
            w7.w.b(obj);
        }
        while (fVar.f() < i10 && !fVar.o()) {
            io.ktor.utils.io.internal.a aVar2 = fVar.slot;
            b bVar = fVar.new b(i10);
            aVar.L$0 = fVar;
            aVar.I$0 = i10;
            aVar.label = 1;
            if (aVar2.d(bVar, aVar) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object u(int i10, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        c cVar;
        f fVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i11 = cVar.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.label = i11 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object obj = cVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = cVar.label;
        if (i12 == 0) {
            w7.w.b(obj);
            fVar = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i10 = cVar.I$0;
            fVar = (f) cVar.L$0;
            w7.w.b(obj);
        }
        while (fVar.C() < i10 && !fVar.D()) {
            if (!fVar.A()) {
                io.ktor.utils.io.internal.a aVar = fVar.slot;
                d dVar2 = fVar.new d(i10);
                cVar.L$0 = fVar;
                cVar.I$0 = i10;
                cVar.label = 1;
                if (aVar.d(dVar2, cVar) == objE) {
                    return objE;
                }
            }
        }
        return l0.INSTANCE;
    }

    @Nullable
    public final Object v(@NotNull kotlin.coroutines.d<? super Boolean> dVar) {
        return this.readable.g0() ^ true ? kotlin.coroutines.jvm.internal.b.a(true) : w(1, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    protected final Object w(int i10, @NotNull kotlin.coroutines.d<? super Boolean> dVar) throws Throwable {
        e eVar;
        f fVar;
        if (dVar instanceof e) {
            eVar = (e) dVar;
            int i11 = eVar.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                eVar.label = i11 - Integer.MIN_VALUE;
            } else {
                eVar = new e(dVar);
            }
        } else {
            eVar = new e(dVar);
        }
        Object obj = eVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = eVar.label;
        if (i12 == 0) {
            w7.w.b(obj);
            if (i10 < 0) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            eVar.L$0 = this;
            eVar.I$0 = i10;
            eVar.label = 1;
            if (t(i10, eVar) == objE) {
                return objE;
            }
            fVar = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i10 = eVar.I$0;
            fVar = (f) eVar.L$0;
            w7.w.b(obj);
        }
        fVar.F();
        Throwable thJ = fVar.j();
        if (thJ == null) {
            return kotlin.coroutines.jvm.internal.b.a(!fVar.o() && fVar.f() >= i10);
        }
        throw thJ;
    }

    static /* synthetic */ Object J(f fVar, long j6, kotlin.coroutines.d<? super r7.j> dVar) throws Throwable {
        fVar.y();
        r7.i iVar = new r7.i(null, 1, null);
        long jMin = Math.min(j6, fVar.readable.G0());
        iVar.F0(fVar.readable, jMin);
        fVar.r((int) jMin);
        if (j6 - ((long) iVar.M0()) != 0 && !fVar.o()) {
            return fVar.K(iVar, j6, dVar);
        }
        fVar.z(iVar);
        return iVar.L0();
    }

    private final void x() {
        if (D()) {
            Throwable thJ = j();
            if (thJ == null) {
                throw new p("Channel " + this + " is already closed");
            }
        }
    }

    private final void y() throws Throwable {
        Throwable thJ = j();
        if (thJ == null) {
        } else {
            throw thJ;
        }
    }

    private final void z(r7.i iVar) throws Throwable {
        Throwable thJ = j();
        if (thJ == null) {
            return;
        }
        iVar.release();
        throw thJ;
    }

    @Override // io.ktor.utils.io.g
    public boolean e(@Nullable Throwable th) {
        if (j() == null && !D()) {
            if (th == null) {
                th = new CancellationException("Channel cancelled");
            }
            return c(th);
        }
        return false;
    }

    @Override // io.ktor.utils.io.j
    public void flush() {
        A();
    }

    @Override // io.ktor.utils.io.g
    public boolean o() {
        if (!E() && (!D() || this.channelSize != 0)) {
            return false;
        }
        return true;
    }

    protected final void r(int i10) {
        p(i10);
        this.slot.c();
    }

    protected final void s(int i10) {
        q(i10);
        if (D()) {
            this.writable.release();
            x();
        }
        if (h() || C() == 0) {
            flush();
        }
    }

    public /* synthetic */ f(s7.a aVar, boolean z6, t7.g gVar, int i10, kotlin.jvm.internal.k kVar) {
        this(aVar, z6, (i10 & 4) != 0 ? s7.a.Companion.c() : gVar);
    }
}
