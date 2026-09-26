package io.ktor.utils.io;

import com.narvii.util.mixpanel.Tracking;
import io.agora.rtc.internal.RtcEngineEvent;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public class a implements io.ktor.utils.io.c, io.ktor.utils.io.g, io.ktor.utils.io.j {
    private static final int ReservedLongIndex = -8;

    @NotNull
    private volatile /* synthetic */ Object _closed;

    @NotNull
    private volatile /* synthetic */ Object _readOp;

    @NotNull
    private volatile /* synthetic */ Object _state;

    @NotNull
    volatile /* synthetic */ Object _writeOp;

    @Nullable
    private volatile b2 attachedJob;
    private final boolean autoFlush;

    @Nullable
    private volatile io.ktor.utils.io.internal.d joining;

    @NotNull
    private final t7.g<io.ktor.utils.io.internal.g.c> pool;
    private int readPosition;

    @NotNull
    private final io.ktor.utils.io.internal.f readSession;

    @NotNull
    private final io.ktor.utils.io.internal.b<Boolean> readSuspendContinuationCache;
    private final int reservedSize;
    private volatile long totalBytesRead;
    private volatile long totalBytesWritten;
    private int writePosition;

    @NotNull
    private final io.ktor.utils.io.internal.l writeSession;

    @NotNull
    private final io.ktor.utils.io.internal.b<l0> writeSuspendContinuationCache;

    @NotNull
    private final e8.l<kotlin.coroutines.d<? super l0>, Object> writeSuspension;
    private volatile int writeSuspensionSize;

    @NotNull
    public static final C0412a Companion = new C0412a(null);
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_state");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closed$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_closed");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _readOp$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_readOp");
    static final /* synthetic */ AtomicReferenceFieldUpdater _writeOp$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_writeOp");

    /* JADX INFO: renamed from: io.ktor.utils.io.a$a, reason: collision with other inner class name */
    public static final class C0412a {
        public /* synthetic */ C0412a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private C0412a() {
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
        b() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            a.this.attachedJob = null;
            if (th == null) {
                return;
            }
            a.this.e(s.a(th));
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1200, 1271, 1279}, m = "copyDirect$ktor_io")
    static final class c extends kotlin.coroutines.jvm.internal.d {
        long J$0;
        long J$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        boolean Z$0;
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
            return a.this.J(null, 0L, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {729, 733}, m = "readAvailableSuspend")
    static final class d extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.d0(null, 0, 0, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {745, 749}, m = "readAvailableSuspend")
    static final class e extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
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
            return a.this.c0(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1710, 1718}, m = "readBlockSuspend")
    static final class f extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        f(kotlin.coroutines.d<? super f> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.e0(0, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {2093}, m = "readRemainingSuspend")
    static final class g extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
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
            return a.this.g0(0L, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {2236}, m = "readSuspendImpl")
    static final class h extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
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
            return a.this.i0(0, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {2189}, m = "readSuspendLoop")
    static final class i extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
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
            return a.this.j0(0, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {RtcEngineEvent.EvtType.EVT_JOIN_PUBLISHER, RtcEngineEvent.EvtType.EVT_STOP_PUBLISHER}, m = "writeFullySuspend")
    static final class j extends kotlin.coroutines.jvm.internal.d {
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
            return a.this.M0(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1123, 1125}, m = "writeFullySuspend")
    static final class k extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        k(kotlin.coroutines.d<? super k> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.N0(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1422}, m = "writeFullySuspend")
    static final class l extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        l(kotlin.coroutines.d<? super l> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.O0(null, 0, 0, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", l = {1439, 1441}, m = "writeSuspend")
    static final class m extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        m(kotlin.coroutines.d<? super m> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.P0(null, 0, 0, this);
        }
    }

    static final class n extends kotlin.jvm.internal.v implements e8.l<kotlin.coroutines.d<? super l0>, Object> {
        n() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull kotlin.coroutines.d<? super l0> ucont) throws Throwable {
            Throwable thC;
            kotlin.jvm.internal.t.j(ucont, "ucont");
            int i10 = a.this.writeSuspensionSize;
            while (true) {
                io.ktor.utils.io.internal.c cVarN = a.this.N();
                if (cVarN != null && (thC = cVarN.c()) != null) {
                    io.ktor.utils.io.b.b(thC);
                    throw new w7.i();
                }
                if (!a.this.Q0(i10)) {
                    w7.v.a aVar = w7.v.Companion;
                    ucont.resumeWith(w7.v.b(l0.INSTANCE));
                    break;
                }
                a aVar2 = a.this;
                kotlin.coroutines.d dVarC = kotlin.coroutines.intrinsics.c.c(ucont);
                a aVar3 = a.this;
                while (true) {
                    if (aVar2.S() != null) {
                        throw new IllegalStateException("Operation is already in progress".toString());
                    }
                    if (!aVar3.Q0(i10)) {
                        break;
                    }
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a._writeOp$FU;
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, aVar2, null, dVarC)) {
                        if (!aVar3.Q0(i10) && androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, aVar2, dVarC, null)) {
                            break;
                        }
                        break;
                    }
                }
            }
            a.this.M(i10);
            if (a.this.y0()) {
                a.this.r0();
            }
            return kotlin.coroutines.intrinsics.d.e();
        }
    }

    public a(boolean z6, @NotNull t7.g<io.ktor.utils.io.internal.g.c> pool, int i10) {
        kotlin.jvm.internal.t.j(pool, "pool");
        this.autoFlush = z6;
        this.pool = pool;
        this.reservedSize = i10;
        this._state = io.ktor.utils.io.internal.g.a.INSTANCE;
        this._closed = null;
        this._readOp = null;
        this._writeOp = null;
        this.readSession = new io.ktor.utils.io.internal.f(this);
        this.writeSession = new io.ktor.utils.io.internal.l(this);
        this.readSuspendContinuationCache = new io.ktor.utils.io.internal.b<>();
        this.writeSuspendContinuationCache = new io.ktor.utils.io.internal.b<>();
        this.writeSuspension = new n();
    }

    private final boolean A0(io.ktor.utils.io.internal.d dVar) {
        if (!B0(true)) {
            return false;
        }
        L(dVar);
        kotlin.coroutines.d dVar2 = (kotlin.coroutines.d) _readOp$FU.getAndSet(this, null);
        if (dVar2 != null) {
            w7.v.a aVar = w7.v.Companion;
            dVar2.resumeWith(w7.v.b(w7.w.a(new IllegalStateException("Joining is in progress"))));
        }
        s0();
        return true;
    }

    private final boolean B0(boolean z6) {
        Object obj;
        io.ktor.utils.io.internal.g.f fVar;
        io.ktor.utils.io.internal.g.c cVarG = null;
        do {
            obj = this._state;
            io.ktor.utils.io.internal.g gVar = (io.ktor.utils.io.internal.g) obj;
            io.ktor.utils.io.internal.c cVarN = N();
            if (cVarG != null) {
                if ((cVarN != null ? cVarN.b() : null) == null) {
                    cVarG.capacity.j();
                }
                s0();
                cVarG = null;
            }
            fVar = io.ktor.utils.io.internal.g.f.INSTANCE;
            if (gVar == fVar) {
                return true;
            }
            if (gVar != io.ktor.utils.io.internal.g.a.INSTANCE) {
                if (cVarN != null && (gVar instanceof io.ktor.utils.io.internal.g.b) && (gVar.capacity.k() || cVarN.b() != null)) {
                    if (cVarN.b() != null) {
                        gVar.capacity.f();
                    }
                    cVarG = ((io.ktor.utils.io.internal.g.b) gVar).g();
                } else {
                    if (!z6 || !(gVar instanceof io.ktor.utils.io.internal.g.b) || !gVar.capacity.k()) {
                        return false;
                    }
                    cVarG = ((io.ktor.utils.io.internal.g.b) gVar).g();
                }
            }
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj, fVar));
        if (cVarG != null && P() == fVar) {
            k0(cVarG);
        }
        return true;
    }

    static /* synthetic */ Object a0(a aVar, s7.a aVar2, kotlin.coroutines.d<? super Integer> dVar) {
        int iZ = Z(aVar, aVar2, 0, 0, 6, null);
        if (iZ == 0 && aVar.N() != null) {
            iZ = aVar.P().capacity.e() ? Z(aVar, aVar2, 0, 0, 6, null) : -1;
        } else if (iZ <= 0 && aVar2.f() > aVar2.j()) {
            return aVar.c0(aVar2, dVar);
        }
        return kotlin.coroutines.jvm.internal.b.d(iZ);
    }

    private final void o0() {
        Object obj;
        io.ktor.utils.io.internal.g gVarE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        io.ktor.utils.io.internal.g gVar = null;
        do {
            obj = this._state;
            io.ktor.utils.io.internal.g gVar2 = (io.ktor.utils.io.internal.g) obj;
            io.ktor.utils.io.internal.g.b bVar = (io.ktor.utils.io.internal.g.b) gVar;
            if (bVar != null) {
                bVar.capacity.j();
                s0();
                gVar = null;
            }
            gVarE = gVar2.e();
            if ((gVarE instanceof io.ktor.utils.io.internal.g.b) && P() == gVar2 && gVarE.capacity.k()) {
                gVarE = io.ktor.utils.io.internal.g.a.INSTANCE;
                gVar = gVarE;
            }
            atomicReferenceFieldUpdater = _state$FU;
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, gVarE));
        io.ktor.utils.io.internal.g.a aVar = io.ktor.utils.io.internal.g.a.INSTANCE;
        if (gVarE == aVar) {
            io.ktor.utils.io.internal.g.b bVar2 = (io.ktor.utils.io.internal.g.b) gVar;
            if (bVar2 != null) {
                k0(bVar2.g());
            }
            s0();
            return;
        }
        if ((gVarE instanceof io.ktor.utils.io.internal.g.b) && gVarE.capacity.g() && gVarE.capacity.k() && androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, gVarE, aVar)) {
            gVarE.capacity.j();
            k0(((io.ktor.utils.io.internal.g.b) gVarE).g());
            s0();
        }
    }

    private final void t0(kotlin.coroutines.d<? super Boolean> dVar) {
        this._readOp = dVar;
    }

    @Nullable
    public Object H0(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super Integer> dVar) {
        return I0(this, bArr, i10, i11, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:156:0x0340 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:158:0x0346 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:160:0x034f A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:162:0x0372 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:163:0x0373  */
    /* JADX WARN: Code duplicated, block: B:166:0x0386  */
    /* JADX WARN: Code duplicated, block: B:167:0x0388 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:170:0x038f  */
    /* JADX WARN: Code duplicated, block: B:171:0x0391 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:174:0x0398  */
    /* JADX WARN: Code duplicated, block: B:176:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:179:0x03ab A[Catch: all -> 0x005a, TRY_LEAVE, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:181:0x03ce A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:196:0x0408 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0122 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0126 A[Catch: all -> 0x005a, TryCatch #11 {all -> 0x005a, blocks: (B:14:0x0047, B:49:0x011c, B:51:0x0122, B:53:0x0126, B:56:0x012d, B:149:0x0325, B:152:0x032d, B:154:0x0339, B:156:0x0340, B:158:0x0346, B:160:0x034f, B:164:0x037e, B:167:0x0388, B:177:0x03a7, B:179:0x03ab, B:171:0x0391, B:59:0x0135, B:186:0x03e1, B:188:0x03e7, B:192:0x03f2, B:193:0x03ff, B:194:0x0405, B:190:0x03ed, B:196:0x0408, B:197:0x040b, B:21:0x0079), top: B:225:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:55:0x012c  */
    /* JADX WARN: Code duplicated, block: B:58:0x0133  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:154:0x0339 -> B:155:0x033c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x03a9 -> B:155:0x033c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:180:0x03cc -> B:155:0x033c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object J(@org.jetbrains.annotations.NotNull io.ktor.utils.io.a r26, long r27, @org.jetbrains.annotations.Nullable io.ktor.utils.io.internal.d r29, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Long> r30) {
        /*
            Method dump skipped, instruction units count: 1049
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.J(io.ktor.utils.io.a, long, io.ktor.utils.io.internal.d, kotlin.coroutines.d):java.lang.Object");
    }

    public long Q() {
        return this.totalBytesRead;
    }

    public long R() {
        return this.totalBytesWritten;
    }

    @Override // io.ktor.utils.io.j
    @Nullable
    public Object d(@NotNull ByteBuffer byteBuffer, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return J0(this, byteBuffer, dVar);
    }

    @Override // io.ktor.utils.io.j
    public void flush() {
        M(1);
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object g(@NotNull s7.a aVar, @NotNull kotlin.coroutines.d<? super Integer> dVar) {
        return a0(this, aVar, dVar);
    }

    @Override // io.ktor.utils.io.j
    public boolean h() {
        return this.autoFlush;
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object i(long j6, @NotNull kotlin.coroutines.d<? super r7.j> dVar) {
        return f0(this, j6, dVar);
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object k(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super Integer> dVar) {
        return b0(this, bArr, i10, i11, dVar);
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Object l(int i10, @NotNull e8.l<? super ByteBuffer, l0> lVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return W(this, i10, lVar, dVar);
    }

    @Override // io.ktor.utils.io.j
    @Nullable
    public Object m(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return L0(this, bArr, i10, i11, dVar);
    }

    @Override // io.ktor.utils.io.j
    @Nullable
    public Object n(@NotNull r7.a aVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return K0(this, aVar, dVar);
    }

    public final void p0() {
        Object obj;
        io.ktor.utils.io.internal.g gVarF;
        io.ktor.utils.io.internal.g.b bVar;
        io.ktor.utils.io.internal.g gVar = null;
        do {
            obj = this._state;
            gVarF = ((io.ktor.utils.io.internal.g) obj).f();
            if ((gVarF instanceof io.ktor.utils.io.internal.g.b) && gVarF.capacity.g()) {
                gVarF = io.ktor.utils.io.internal.g.a.INSTANCE;
                gVar = gVarF;
            }
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj, gVarF));
        if (gVarF != io.ktor.utils.io.internal.g.a.INSTANCE || (bVar = (io.ktor.utils.io.internal.g.b) gVar) == null) {
            return;
        }
        k0(bVar.g());
    }

    public void u0(long j6) {
        this.totalBytesRead = j6;
    }

    public void v0(long j6) {
        this.totalBytesWritten = j6;
    }

    private final int E0(ByteBuffer byteBuffer) throws Throwable {
        a aVarN0;
        int iN;
        io.ktor.utils.io.internal.d dVar = this.joining;
        if (dVar == null || (aVarN0 = n0(this, dVar)) == null) {
            aVarN0 = this;
        }
        ByteBuffer byteBufferX0 = aVarN0.x0();
        int i10 = 0;
        if (byteBufferX0 == null) {
            return 0;
        }
        io.ktor.utils.io.internal.i iVar = aVarN0.P().capacity;
        long jR = aVarN0.R();
        try {
            io.ktor.utils.io.internal.c cVarN = aVarN0.N();
            if (cVarN != null) {
                io.ktor.utils.io.b.b(cVarN.c());
                throw new w7.i();
            }
            int iLimit = byteBuffer.limit();
            while (true) {
                int iPosition = iLimit - byteBuffer.position();
                if (iPosition == 0 || (iN = iVar.n(Math.min(iPosition, byteBufferX0.remaining()))) == 0) {
                    break;
                }
                if (iN <= 0) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                byteBuffer.limit(byteBuffer.position() + iN);
                byteBufferX0.put(byteBuffer);
                i10 += iN;
                aVarN0.V(byteBufferX0, aVarN0.I(byteBufferX0, aVarN0.writePosition + i10), iVar._availableForWrite$internal);
            }
            byteBuffer.limit(iLimit);
            aVarN0.H(byteBufferX0, iVar, i10);
            if (iVar.h() || aVarN0.h()) {
                aVarN0.flush();
            }
            if (aVarN0 != this) {
                v0(R() + (aVarN0.R() - jR));
            }
            aVarN0.p0();
            aVarN0.C0();
            return i10;
        } catch (Throwable th) {
            if (iVar.h() || aVarN0.h()) {
                aVarN0.flush();
            }
            if (aVarN0 != this) {
                v0(R() + (aVarN0.R() - jR));
            }
            aVarN0.p0();
            aVarN0.C0();
            throw th;
        }
    }

    private final int F0(r7.a aVar) throws Throwable {
        a aVarN0;
        io.ktor.utils.io.internal.d dVar = this.joining;
        if (dVar == null || (aVarN0 = n0(this, dVar)) == null) {
            aVarN0 = this;
        }
        ByteBuffer byteBufferX0 = aVarN0.x0();
        int i10 = 0;
        if (byteBufferX0 == null) {
            return 0;
        }
        io.ktor.utils.io.internal.i iVar = aVarN0.P().capacity;
        long jR = aVarN0.R();
        try {
            io.ktor.utils.io.internal.c cVarN = aVarN0.N();
            if (cVarN != null) {
                io.ktor.utils.io.b.b(cVarN.c());
                throw new w7.i();
            }
            while (true) {
                int iN = iVar.n(Math.min(aVar.j() - aVar.h(), byteBufferX0.remaining()));
                if (iN == 0) {
                    break;
                }
                r7.g.a(aVar, byteBufferX0, iN);
                i10 += iN;
                aVarN0.V(byteBufferX0, aVarN0.I(byteBufferX0, aVarN0.writePosition + i10), iVar._availableForWrite$internal);
            }
            aVarN0.H(byteBufferX0, iVar, i10);
            if (iVar.h() || aVarN0.h()) {
                aVarN0.flush();
            }
            if (aVarN0 != this) {
                v0(R() + (aVarN0.R() - jR));
            }
            aVarN0.p0();
            aVarN0.C0();
            return i10;
        } catch (Throwable th) {
            if (iVar.h() || aVarN0.h()) {
                aVarN0.flush();
            }
            if (aVarN0 != this) {
                v0(R() + (aVarN0.R() - jR));
            }
            aVarN0.p0();
            aVarN0.C0();
            throw th;
        }
    }

    private final void G(ByteBuffer byteBuffer, io.ktor.utils.io.internal.i iVar, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.readPosition = I(byteBuffer, this.readPosition + i10);
        iVar.a(i10);
        u0(Q() + ((long) i10));
        s0();
    }

    private final int G0(byte[] bArr, int i10, int i11) throws Throwable {
        a aVarN0;
        io.ktor.utils.io.internal.d dVar = this.joining;
        if (dVar == null || (aVarN0 = n0(this, dVar)) == null) {
            aVarN0 = this;
        }
        ByteBuffer byteBufferX0 = aVarN0.x0();
        int i12 = 0;
        if (byteBufferX0 == null) {
            return 0;
        }
        io.ktor.utils.io.internal.i iVar = aVarN0.P().capacity;
        long jR = aVarN0.R();
        try {
            io.ktor.utils.io.internal.c cVarN = aVarN0.N();
            if (cVarN != null) {
                io.ktor.utils.io.b.b(cVarN.c());
                throw new w7.i();
            }
            while (true) {
                int iN = iVar.n(Math.min(i11 - i12, byteBufferX0.remaining()));
                if (iN == 0) {
                    aVarN0.H(byteBufferX0, iVar, i12);
                    if (iVar.h() || aVarN0.h()) {
                        aVarN0.flush();
                    }
                    if (aVarN0 != this) {
                        v0(R() + (aVarN0.R() - jR));
                    }
                    aVarN0.p0();
                    aVarN0.C0();
                    return i12;
                }
                if (iN <= 0) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                byteBufferX0.put(bArr, i10 + i12, iN);
                i12 += iN;
                aVarN0.V(byteBufferX0, aVarN0.I(byteBufferX0, aVarN0.writePosition + i12), iVar._availableForWrite$internal);
            }
        } catch (Throwable th) {
            if (iVar.h() || aVarN0.h()) {
                aVarN0.flush();
            }
            if (aVarN0 != this) {
                v0(R() + (aVarN0.R() - jR));
            }
            aVarN0.p0();
            aVarN0.C0();
            throw th;
        }
    }

    private final void H(ByteBuffer byteBuffer, io.ktor.utils.io.internal.i iVar, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.writePosition = I(byteBuffer, this.writePosition + i10);
        iVar.c(i10);
        v0(R() + ((long) i10));
    }

    static /* synthetic */ Object I0(a aVar, byte[] bArr, int i10, int i11, kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
        a aVarN0;
        io.ktor.utils.io.internal.d dVar2 = aVar.joining;
        if (dVar2 != null && (aVarN0 = aVar.n0(aVar, dVar2)) != null) {
            return aVarN0.H0(bArr, i10, i11, dVar);
        }
        int iG0 = aVar.G0(bArr, i10, i11);
        return iG0 > 0 ? kotlin.coroutines.jvm.internal.b.d(iG0) : aVar.P0(bArr, i10, i11, dVar);
    }

    static /* synthetic */ Object J0(a aVar, ByteBuffer byteBuffer, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        a aVarN0;
        io.ktor.utils.io.internal.d dVar2 = aVar.joining;
        if (dVar2 != null && (aVarN0 = aVar.n0(aVar, dVar2)) != null) {
            Object objD = aVarN0.d(byteBuffer, dVar);
            return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
        }
        aVar.E0(byteBuffer);
        if (!byteBuffer.hasRemaining()) {
            return l0.INSTANCE;
        }
        Object objM0 = aVar.M0(byteBuffer, dVar);
        return objM0 == kotlin.coroutines.intrinsics.d.e() ? objM0 : l0.INSTANCE;
    }

    static /* synthetic */ Object L0(a aVar, byte[] bArr, int i10, int i11, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        a aVarN0;
        io.ktor.utils.io.internal.d dVar2 = aVar.joining;
        if (dVar2 != null && (aVarN0 = aVar.n0(aVar, dVar2)) != null) {
            Object objM = aVarN0.m(bArr, i10, i11, dVar);
            return objM == kotlin.coroutines.intrinsics.d.e() ? objM : l0.INSTANCE;
        }
        while (i11 > 0) {
            int iG0 = aVar.G0(bArr, i10, i11);
            if (iG0 == 0) {
                break;
            }
            i10 += iG0;
            i11 -= iG0;
        }
        if (i11 == 0) {
            return l0.INSTANCE;
        }
        Object objO0 = aVar.O0(bArr, i10, i11, dVar);
        return objO0 == kotlin.coroutines.intrinsics.d.e() ? objO0 : l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(int i10) {
        io.ktor.utils.io.internal.g gVarP;
        io.ktor.utils.io.internal.g.f fVar;
        a aVarC;
        io.ktor.utils.io.internal.d dVar = this.joining;
        if (dVar != null && (aVarC = dVar.c()) != null) {
            aVarC.flush();
        }
        do {
            gVarP = P();
            fVar = io.ktor.utils.io.internal.g.f.INSTANCE;
            if (gVarP == fVar) {
                return;
            } else {
                gVarP.capacity.e();
            }
        } while (gVarP != P());
        int i11 = gVarP.capacity._availableForWrite$internal;
        if (gVarP.capacity._availableForRead$internal >= 1) {
            r0();
        }
        io.ktor.utils.io.internal.d dVar2 = this.joining;
        if (i11 >= i10) {
            if (dVar2 == null || P() == fVar) {
                s0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0054 -> B:22:0x0057). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object M0(java.nio.ByteBuffer r6, kotlin.coroutines.d<? super w7.l0> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.a.j
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.a$j r0 = (io.ktor.utils.io.a.j) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.a$j r0 = new io.ktor.utils.io.a$j
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            w7.w.b(r7)
            goto L6f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            java.lang.Object r6 = r0.L$1
            java.nio.ByteBuffer r6 = (java.nio.ByteBuffer) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.a r2 = (io.ktor.utils.io.a) r2
            w7.w.b(r7)
            goto L57
        L40:
            w7.w.b(r7)
            r2 = r5
        L44:
            boolean r7 = r6.hasRemaining()
            if (r7 == 0) goto L76
            r0.L$0 = r2
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r2.D0(r4, r0)
            if (r7 != r1) goto L57
            return r1
        L57:
            io.ktor.utils.io.internal.d r7 = r2.joining
            if (r7 == 0) goto L72
            io.ktor.utils.io.a r7 = r2.n0(r2, r7)
            if (r7 == 0) goto L72
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r6 = r7.d(r6, r0)
            if (r6 != r1) goto L6f
            return r1
        L6f:
            w7.l0 r6 = w7.l0.INSTANCE
            return r6
        L72:
            r2.E0(r6)
            goto L44
        L76:
            w7.l0 r6 = w7.l0.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.M0(java.nio.ByteBuffer, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final io.ktor.utils.io.internal.c N() {
        return (io.ktor.utils.io.internal.c) this._closed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    /* JADX WARN: Code duplicated, block: B:21:0x005a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0058 -> B:22:0x005b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object N0(r7.a r7, kotlin.coroutines.d<? super w7.l0> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.a.k
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.a$k r0 = (io.ktor.utils.io.a.k) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.a$k r0 = new io.ktor.utils.io.a$k
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            w7.w.b(r8)
            goto L73
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            java.lang.Object r7 = r0.L$1
            r7.a r7 = (r7.a) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.a r2 = (io.ktor.utils.io.a) r2
            w7.w.b(r8)
            goto L5b
        L40:
            w7.w.b(r8)
            r2 = r6
        L44:
            int r8 = r7.j()
            int r5 = r7.h()
            if (r8 <= r5) goto L7a
            r0.L$0 = r2
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r2.D0(r4, r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            io.ktor.utils.io.internal.d r8 = r2.joining
            if (r8 == 0) goto L76
            io.ktor.utils.io.a r8 = r2.n0(r2, r8)
            if (r8 == 0) goto L76
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r7 = r8.n(r7, r0)
            if (r7 != r1) goto L73
            return r1
        L73:
            w7.l0 r7 = w7.l0.INSTANCE
            return r7
        L76:
            r2.F0(r7)
            goto L44
        L7a:
            w7.l0 r7 = w7.l0.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.N0(r7.a, kotlin.coroutines.d):java.lang.Object");
    }

    private final kotlin.coroutines.d<Boolean> O() {
        return (kotlin.coroutines.d) this._readOp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:18:0x0053 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0054 -> B:20:0x0057). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object O0(byte[] r6, int r7, int r8, kotlin.coroutines.d<? super w7.l0> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.io.a.l
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.a$l r0 = (io.ktor.utils.io.a.l) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.a$l r0 = new io.ktor.utils.io.a$l
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            int r6 = r0.I$1
            int r7 = r0.I$0
            java.lang.Object r8 = r0.L$1
            byte[] r8 = (byte[]) r8
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.a r2 = (io.ktor.utils.io.a) r2
            w7.w.b(r9)
            goto L57
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            w7.w.b(r9)
            r2 = r5
        L41:
            if (r8 <= 0) goto L63
            r0.L$0 = r2
            r0.L$1 = r6
            r0.I$0 = r7
            r0.I$1 = r8
            r0.label = r3
            java.lang.Object r9 = r2.H0(r6, r7, r8, r0)
            if (r9 != r1) goto L54
            return r1
        L54:
            r4 = r8
            r8 = r6
            r6 = r4
        L57:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            int r7 = r7 + r9
            int r6 = r6 - r9
            r4 = r8
            r8 = r6
            r6 = r4
            goto L41
        L63:
            w7.l0 r6 = w7.l0.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.O0(byte[], int, int, kotlin.coroutines.d):java.lang.Object");
    }

    private final io.ktor.utils.io.internal.g P() {
        return (io.ktor.utils.io.internal.g) this._state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x005b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:20:0x005c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:28:0x0075
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object P0(byte[] r7, int r8, int r9, kotlin.coroutines.d<? super java.lang.Integer> r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.a.m
            if (r0 == 0) goto L13
            r0 = r10
            io.ktor.utils.io.a$m r0 = (io.ktor.utils.io.a.m) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.a$m r0 = new io.ktor.utils.io.a$m
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            w7.w.b(r10)
            goto L74
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            int r7 = r0.I$1
            int r8 = r0.I$0
            java.lang.Object r9 = r0.L$1
            byte[] r9 = (byte[]) r9
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.a r2 = (io.ktor.utils.io.a) r2
            w7.w.b(r10)
            r5 = r9
            r9 = r7
            r7 = r5
            goto L5c
        L47:
            w7.w.b(r10)
            r2 = r6
        L4b:
            r0.L$0 = r2
            r0.L$1 = r7
            r0.I$0 = r8
            r0.I$1 = r9
            r0.label = r4
            java.lang.Object r10 = r2.D0(r4, r0)
            if (r10 != r1) goto L5c
            return r1
        L5c:
            io.ktor.utils.io.internal.d r10 = r2.joining
            if (r10 == 0) goto L75
            io.ktor.utils.io.a r10 = r2.n0(r2, r10)
            if (r10 == 0) goto L75
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r10 = r10.P0(r7, r8, r9, r0)
            if (r10 != r1) goto L74
            return r1
        L74:
            return r10
        L75:
            int r10 = r2.G0(r7, r8, r9)
            if (r10 <= 0) goto L4b
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.b.d(r10)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.P0(byte[], int, int, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Q0(int i10) {
        io.ktor.utils.io.internal.d dVar = this.joining;
        io.ktor.utils.io.internal.g gVarP = P();
        if (N() != null) {
            return false;
        }
        if (dVar == null) {
            if (gVarP.capacity._availableForWrite$internal >= i10 || gVarP == io.ktor.utils.io.internal.g.a.INSTANCE) {
                return false;
            }
        } else if (gVarP == io.ktor.utils.io.internal.g.f.INSTANCE || (gVarP instanceof io.ktor.utils.io.internal.g.C0416g) || (gVarP instanceof io.ktor.utils.io.internal.g.e)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.coroutines.d<l0> S() {
        return (kotlin.coroutines.d) this._writeOp;
    }

    private final io.ktor.utils.io.internal.g.c U() {
        io.ktor.utils.io.internal.g.c cVarS0 = this.pool.s0();
        cVarS0.capacity.j();
        return cVarS0;
    }

    private final void V(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        byteBuffer.limit(j8.o.j(i11 + i10, byteBuffer.capacity() - this.reservedSize));
        byteBuffer.position(i10);
    }

    static /* synthetic */ Object W(a aVar, int i10, e8.l<? super ByteBuffer, l0> lVar, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        boolean z6;
        if (i10 < 0) {
            throw new IllegalArgumentException("min should be positive or zero".toString());
        }
        ByteBuffer byteBufferW0 = aVar.w0();
        if (byteBufferW0 != null) {
            io.ktor.utils.io.internal.i iVar = aVar.P().capacity;
            try {
                if (iVar._availableForRead$internal == 0) {
                    aVar.o0();
                    aVar.C0();
                } else {
                    int i11 = iVar._availableForRead$internal;
                    if (i11 <= 0 || i11 < i10) {
                        z6 = false;
                    } else {
                        int iPosition = byteBufferW0.position();
                        int iLimit = byteBufferW0.limit();
                        lVar.invoke(byteBufferW0);
                        if (iLimit != byteBufferW0.limit()) {
                            throw new IllegalStateException("Buffer limit modified.".toString());
                        }
                        int iPosition2 = byteBufferW0.position() - iPosition;
                        if (iPosition2 < 0) {
                            throw new IllegalStateException("Position has been moved backward: pushback is not supported.".toString());
                        }
                        if (!iVar.m(iPosition2)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        aVar.G(byteBufferW0, iVar, iPosition2);
                        z6 = true;
                    }
                    aVar.o0();
                    aVar.C0();
                    if (z6) {
                        return l0.INSTANCE;
                    }
                }
            } catch (Throwable th) {
                aVar.o0();
                aVar.C0();
                throw th;
            }
        }
        if (!aVar.o() || i10 <= 0) {
            Object objE0 = aVar.e0(i10, lVar, dVar);
            return objE0 == kotlin.coroutines.intrinsics.d.e() ? objE0 : l0.INSTANCE;
        }
        throw new EOFException("Got EOF but at least " + i10 + " bytes were expected");
    }

    static /* synthetic */ int Z(a aVar, r7.a aVar2, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAsMuchAsPossible");
        }
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = aVar2.f() - aVar2.j();
        }
        return aVar.X(aVar2, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c0(s7.a aVar, kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
        e eVar;
        a aVar2;
        if (dVar instanceof e) {
            eVar = (e) dVar;
            int i10 = eVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                eVar.label = i10 - Integer.MIN_VALUE;
            } else {
                eVar = new e(dVar);
            }
        } else {
            eVar = new e(dVar);
        }
        Object objH0 = eVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = eVar.label;
        if (i11 != 0) {
            if (i11 == 1) {
                aVar = (s7.a) eVar.L$1;
                aVar2 = (a) eVar.L$0;
                w7.w.b(objH0);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(objH0);
            }
        }
        w7.w.b(objH0);
        eVar.L$0 = this;
        eVar.L$1 = aVar;
        eVar.label = 1;
        objH0 = h0(1, eVar);
        if (objH0 == objE) {
            return objE;
        }
        aVar2 = this;
        if (!((Boolean) objH0).booleanValue()) {
            return kotlin.coroutines.jvm.internal.b.d(-1);
        }
        eVar.L$0 = null;
        eVar.L$1 = null;
        eVar.label = 2;
        objH0 = aVar2.g(aVar, eVar);
        return objH0 == objE ? objE : objH0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d0(byte[] bArr, int i10, int i11, kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
        d dVar2;
        a aVar;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i12 = dVar2.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i12 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object objH0 = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i13 = dVar2.label;
        if (i13 != 0) {
            if (i13 == 1) {
                i11 = dVar2.I$1;
                i10 = dVar2.I$0;
                bArr = (byte[]) dVar2.L$1;
                aVar = (a) dVar2.L$0;
                w7.w.b(objH0);
            } else {
                if (i13 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(objH0);
            }
        }
        w7.w.b(objH0);
        dVar2.L$0 = this;
        dVar2.L$1 = bArr;
        dVar2.I$0 = i10;
        dVar2.I$1 = i11;
        dVar2.label = 1;
        objH0 = h0(1, dVar2);
        if (objH0 == objE) {
            return objE;
        }
        aVar = this;
        if (!((Boolean) objH0).booleanValue()) {
            return kotlin.coroutines.jvm.internal.b.d(-1);
        }
        dVar2.L$0 = null;
        dVar2.L$1 = null;
        dVar2.label = 2;
        objH0 = aVar.k(bArr, i10, i11, dVar2);
        return objH0 == objE ? objE : objH0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e0(int i10, e8.l<? super ByteBuffer, l0> lVar, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        f fVar;
        a aVar;
        if (dVar instanceof f) {
            fVar = (f) dVar;
            int i11 = fVar.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fVar.label = i11 - Integer.MIN_VALUE;
            } else {
                fVar = new f(dVar);
            }
        } else {
            fVar = new f(dVar);
        }
        Object objH0 = fVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = fVar.label;
        if (i12 != 0) {
            if (i12 == 1) {
                i10 = fVar.I$0;
                lVar = (e8.l) fVar.L$1;
                aVar = (a) fVar.L$0;
                w7.w.b(objH0);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(objH0);
            }
            return l0.INSTANCE;
        }
        w7.w.b(objH0);
        int iE = j8.o.e(i10, 1);
        fVar.L$0 = this;
        fVar.L$1 = lVar;
        fVar.I$0 = i10;
        fVar.label = 1;
        objH0 = h0(iE, fVar);
        if (objH0 == objE) {
            return objE;
        }
        aVar = this;
        if (((Boolean) objH0).booleanValue()) {
            fVar.L$0 = null;
            fVar.L$1 = null;
            fVar.label = 2;
            if (aVar.l(i10, lVar, fVar) == objE) {
                return objE;
            }
            return l0.INSTANCE;
        }
        if (i10 <= 0) {
            return l0.INSTANCE;
        }
        throw new EOFException("Got EOF but at least " + i10 + " bytes were expected");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0071 A[Catch: all -> 0x003e, TryCatch #2 {all -> 0x003e, blocks: (B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:55:0x0039, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x008b A[Catch: all -> 0x003e, TryCatch #2 {all -> 0x003e, blocks: (B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:55:0x0039, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00af  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b6 A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #2 {all -> 0x003e, blocks: (B:12:0x0039, B:32:0x00a7, B:38:0x00b6, B:21:0x0061, B:23:0x0071, B:24:0x0075, B:26:0x008b, B:28:0x0091), top: B:55:0x0039, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:32:0x00a7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b3 -> B:37:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object g0(long r13, kotlin.coroutines.d<? super r7.j> r15) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.g0(long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i0(int i10, kotlin.coroutines.d<? super Boolean> dVar) throws Throwable {
        h hVar;
        a aVar;
        if (dVar instanceof h) {
            hVar = (h) dVar;
            int i11 = hVar.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hVar.label = i11 - Integer.MIN_VALUE;
            } else {
                hVar = new h(dVar);
            }
        } else {
            hVar = new h(dVar);
        }
        Object objF = hVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = hVar.label;
        if (i12 != 0) {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (a) hVar.L$0;
            try {
                w7.w.b(objF);
            } catch (Throwable th) {
                th = th;
                aVar.t0(null);
                throw th;
            }
        }
        w7.w.b(objF);
        io.ktor.utils.io.internal.g gVarP = P();
        if (gVarP.capacity._availableForRead$internal >= i10 || !(this.joining == null || S() == null || (gVarP != io.ktor.utils.io.internal.g.a.INSTANCE && !(gVarP instanceof io.ktor.utils.io.internal.g.b)))) {
            return kotlin.coroutines.jvm.internal.b.a(true);
        }
        try {
            hVar.L$0 = this;
            hVar.I$0 = i10;
            hVar.label = 1;
            io.ktor.utils.io.internal.b<Boolean> bVar = this.readSuspendContinuationCache;
            z0(i10, bVar);
            objF = bVar.f(kotlin.coroutines.intrinsics.c.c(hVar));
            if (objF == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(hVar);
            }
            return objF == objE ? objE : objF;
        } catch (Throwable th2) {
            th = th2;
            aVar = this;
            aVar.t0(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x004b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    /* JADX WARN: Code duplicated, block: B:23:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x0063  */
    /* JADX WARN: Code duplicated, block: B:30:0x006e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0073  */
    /* JADX WARN: Code duplicated, block: B:34:0x007b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0092 -> B:39:0x0095). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object j0(int r6, kotlin.coroutines.d<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.a.i
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.utils.io.a$i r0 = (io.ktor.utils.io.a.i) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.a$i r0 = new io.ktor.utils.io.a$i
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            int r6 = r0.I$0
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.a r2 = (io.ktor.utils.io.a) r2
            w7.w.b(r7)
            goto L95
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            w7.w.b(r7)
            r2 = r5
        L3c:
            io.ktor.utils.io.internal.g r7 = r2.P()
            io.ktor.utils.io.internal.i r7 = r7.capacity
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L4b
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.b.a(r4)
            return r6
        L4b:
            io.ktor.utils.io.internal.c r7 = r2.N()
            if (r7 == 0) goto L88
            java.lang.Throwable r0 = r7.b()
            if (r0 != 0) goto L7b
            io.ktor.utils.io.internal.g r7 = r2.P()
            io.ktor.utils.io.internal.i r7 = r7.capacity
            boolean r0 = r7.e()
            if (r0 == 0) goto L68
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L68
            r3 = r4
        L68:
            kotlin.coroutines.d r6 = r2.O()
            if (r6 != 0) goto L73
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.b.a(r3)
            return r6
        L73:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Read operation is already in progress"
            r6.<init>(r7)
            throw r6
        L7b:
            java.lang.Throwable r6 = r7.b()
            io.ktor.utils.io.b.a(r6)
            w7.i r6 = new w7.i
            r6.<init>()
            throw r6
        L88:
            r0.L$0 = r2
            r0.I$0 = r6
            r0.label = r4
            java.lang.Object r7 = r2.i0(r6, r0)
            if (r7 != r1) goto L95
            return r1
        L95:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L3c
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.b.a(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.a.j0(int, kotlin.coroutines.d):java.lang.Object");
    }

    private final void k0(io.ktor.utils.io.internal.g.c cVar) {
        this.pool.S(cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final r7.j l0(long j6) {
        r7.i iVar = new r7.i(null, 1, 0 == true ? 1 : 0);
        try {
            s7.a aVarD = s7.g.d(iVar, 1, null);
            while (true) {
                try {
                    if (aVarD.f() - aVarD.j() > j6) {
                        aVarD.s((int) j6);
                    }
                    j6 -= (long) Z(this, aVarD, 0, 0, 6, null);
                    if (j6 <= 0 || o()) {
                        break;
                    }
                    aVarD = s7.g.d(iVar, 1, aVarD);
                } catch (Throwable th) {
                    iVar.h();
                    throw th;
                }
            }
            iVar.h();
            return iVar.L0();
        } catch (Throwable th2) {
            iVar.release();
            throw th2;
        }
    }

    private final void q0(Throwable th) {
        kotlin.coroutines.d dVar = (kotlin.coroutines.d) _readOp$FU.getAndSet(this, null);
        if (dVar != null) {
            if (th != null) {
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(w7.w.a(th)));
            } else {
                dVar.resumeWith(w7.v.b(Boolean.valueOf(P().capacity._availableForRead$internal > 0)));
            }
        }
        kotlin.coroutines.d dVar2 = (kotlin.coroutines.d) _writeOp$FU.getAndSet(this, null);
        if (dVar2 != null) {
            w7.v.a aVar2 = w7.v.Companion;
            if (th == null) {
                th = new p(io.ktor.utils.io.b.DEFAULT_CLOSE_MESSAGE);
            }
            dVar2.resumeWith(w7.v.b(w7.w.a(th)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0() {
        kotlin.coroutines.d dVar = (kotlin.coroutines.d) _readOp$FU.getAndSet(this, null);
        if (dVar != null) {
            io.ktor.utils.io.internal.c cVarN = N();
            Throwable thB = cVarN != null ? cVarN.b() : null;
            if (thB != null) {
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(w7.w.a(thB)));
            } else {
                w7.v.a aVar2 = w7.v.Companion;
                dVar.resumeWith(w7.v.b(Boolean.TRUE));
            }
        }
    }

    private final ByteBuffer w0() throws Throwable {
        Object obj;
        Throwable thB;
        io.ktor.utils.io.internal.g gVarC;
        Throwable thB2;
        do {
            obj = this._state;
            io.ktor.utils.io.internal.g gVar = (io.ktor.utils.io.internal.g) obj;
            if (kotlin.jvm.internal.t.e(gVar, io.ktor.utils.io.internal.g.f.INSTANCE) || kotlin.jvm.internal.t.e(gVar, io.ktor.utils.io.internal.g.a.INSTANCE)) {
                io.ktor.utils.io.internal.c cVarN = N();
                if (cVarN == null || (thB = cVarN.b()) == null) {
                    return null;
                }
                io.ktor.utils.io.b.b(thB);
                throw new w7.i();
            }
            io.ktor.utils.io.internal.c cVarN2 = N();
            if (cVarN2 != null && (thB2 = cVarN2.b()) != null) {
                io.ktor.utils.io.b.b(thB2);
                throw new w7.i();
            }
            if (gVar.capacity._availableForRead$internal == 0) {
                return null;
            }
            gVarC = gVar.c();
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj, gVarC));
        ByteBuffer byteBufferA = gVarC.a();
        V(byteBufferA, this.readPosition, gVarC.capacity._availableForRead$internal);
        return byteBufferA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean y0() {
        return this.joining != null && (P() == io.ktor.utils.io.internal.g.a.INSTANCE || (P() instanceof io.ktor.utils.io.internal.g.b));
    }

    @Override // io.ktor.utils.io.c
    public void a(@NotNull b2 job) {
        kotlin.jvm.internal.t.j(job, "job");
        b2 b2Var = this.attachedJob;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.attachedJob = job;
        b2.a.d(job, true, false, new b(), 2, null);
    }

    @Override // io.ktor.utils.io.g
    public boolean e(@Nullable Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel has been cancelled");
        }
        return c(th);
    }

    @NotNull
    public final a m0() {
        a aVarN0;
        io.ktor.utils.io.internal.d dVar = this.joining;
        return (dVar == null || (aVarN0 = n0(this, dVar)) == null) ? this : aVarN0;
    }

    @NotNull
    public String toString() {
        return "ByteBufferChannel(" + hashCode() + ", " + P() + ')';
    }

    private final int I(ByteBuffer byteBuffer, int i10) {
        if (i10 >= byteBuffer.capacity() - this.reservedSize) {
            return i10 - (byteBuffer.capacity() - this.reservedSize);
        }
        return i10;
    }

    static /* synthetic */ Object K0(a aVar, r7.a aVar2, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        aVar.F0(aVar2);
        if (aVar2.j() > aVar2.h()) {
            Object objN0 = aVar.N0(aVar2, dVar);
            if (objN0 == kotlin.coroutines.intrinsics.d.e()) {
                return objN0;
            }
            return l0.INSTANCE;
        }
        return l0.INSTANCE;
    }

    private final void L(io.ktor.utils.io.internal.d dVar) {
        boolean z6;
        io.ktor.utils.io.internal.c cVarN = N();
        if (cVarN == null) {
            return;
        }
        this.joining = null;
        if (!dVar.b()) {
            dVar.c().flush();
            dVar.a();
            return;
        }
        io.ktor.utils.io.internal.g gVarP = dVar.c().P();
        if (!(gVarP instanceof io.ktor.utils.io.internal.g.C0416g) && !(gVarP instanceof io.ktor.utils.io.internal.g.e)) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (cVarN.b() == null && z6) {
            dVar.c().flush();
        } else {
            dVar.c().c(cVarN.b());
        }
        dVar.a();
    }

    private final int X(r7.a aVar, int i10, int i11) throws Throwable {
        int iL;
        do {
            ByteBuffer byteBufferW0 = w0();
            boolean z6 = false;
            if (byteBufferW0 == null) {
                iL = 0;
            } else {
                io.ktor.utils.io.internal.i iVar = P().capacity;
                try {
                    if (iVar._availableForRead$internal == 0) {
                        o0();
                        C0();
                        iL = 0;
                    } else {
                        int iF = aVar.f() - aVar.j();
                        iL = iVar.l(Math.min(byteBufferW0.remaining(), Math.min(iF, i11)));
                        if (iL > 0) {
                            if (iF < byteBufferW0.remaining()) {
                                byteBufferW0.limit(byteBufferW0.position() + iF);
                            }
                            r7.e.a(aVar, byteBufferW0);
                            G(byteBufferW0, iVar, iL);
                            z6 = true;
                        }
                        o0();
                        C0();
                    }
                } catch (Throwable th) {
                    o0();
                    C0();
                    throw th;
                }
            }
            i10 += iL;
            i11 -= iL;
            if (!z6 || aVar.f() <= aVar.j()) {
                break;
            }
        } while (P().capacity._availableForRead$internal > 0);
        return i10;
    }

    private final int Y(byte[] bArr, int i10, int i11) throws Throwable {
        ByteBuffer byteBufferW0 = w0();
        int i12 = 0;
        if (byteBufferW0 != null) {
            io.ktor.utils.io.internal.i iVar = P().capacity;
            try {
                if (iVar._availableForRead$internal != 0) {
                    int iCapacity = byteBufferW0.capacity() - this.reservedSize;
                    while (true) {
                        int i13 = i11 - i12;
                        if (i13 == 0) {
                            break;
                        }
                        int i14 = this.readPosition;
                        int iL = iVar.l(Math.min(iCapacity - i14, i13));
                        if (iL == 0) {
                            break;
                        }
                        byteBufferW0.limit(i14 + iL);
                        byteBufferW0.position(i14);
                        byteBufferW0.get(bArr, i10 + i12, iL);
                        G(byteBufferW0, iVar, iL);
                        i12 += iL;
                    }
                }
                o0();
                C0();
            } catch (Throwable th) {
                o0();
                C0();
                throw th;
            }
        }
        return i12;
    }

    static /* synthetic */ Object b0(a aVar, byte[] bArr, int i10, int i11, kotlin.coroutines.d<? super Integer> dVar) throws Throwable {
        int iY = aVar.Y(bArr, i10, i11);
        if (iY == 0 && aVar.N() != null) {
            iY = aVar.P().capacity.e() ? aVar.Y(bArr, i10, i11) : -1;
        } else if (iY <= 0 && i11 != 0) {
            return aVar.d0(bArr, i10, i11, dVar);
        }
        return kotlin.coroutines.jvm.internal.b.d(iY);
    }

    static /* synthetic */ Object f0(a aVar, long j6, kotlin.coroutines.d<? super r7.j> dVar) throws Throwable {
        if (aVar.T()) {
            Throwable thJ = aVar.j();
            if (thJ != null) {
                io.ktor.utils.io.b.b(thJ);
                throw new w7.i();
            }
            return aVar.l0(j6);
        }
        return aVar.g0(j6, dVar);
    }

    private final Object h0(int i10, kotlin.coroutines.d<? super Boolean> dVar) throws Throwable {
        boolean z6 = true;
        if (P().capacity._availableForRead$internal >= i10) {
            return kotlin.coroutines.jvm.internal.b.a(true);
        }
        io.ktor.utils.io.internal.c cVarN = N();
        if (cVarN != null) {
            Throwable thB = cVarN.b();
            if (thB != null) {
                io.ktor.utils.io.b.b(thB);
                throw new w7.i();
            }
            io.ktor.utils.io.internal.i iVar = P().capacity;
            if (!iVar.e() || iVar._availableForRead$internal < i10) {
                z6 = false;
            }
            if (O() == null) {
                return kotlin.coroutines.jvm.internal.b.a(z6);
            }
            throw new IllegalStateException("Read operation is already in progress");
        }
        if (i10 == 1) {
            return i0(1, dVar);
        }
        return j0(i10, dVar);
    }

    private final a n0(a aVar, io.ktor.utils.io.internal.d dVar) {
        while (aVar.P() == io.ktor.utils.io.internal.g.f.INSTANCE) {
            aVar = dVar.c();
            dVar = aVar.joining;
            if (dVar == null) {
                return aVar;
            }
        }
        return null;
    }

    private final void s0() {
        kotlin.coroutines.d<l0> dVarS;
        io.ktor.utils.io.internal.c cVarN;
        Object objA;
        do {
            dVarS = S();
            if (dVarS == null) {
                return;
            }
            cVarN = N();
            if (cVarN == null && this.joining != null) {
                io.ktor.utils.io.internal.g gVarP = P();
                if (!(gVarP instanceof io.ktor.utils.io.internal.g.C0416g) && !(gVarP instanceof io.ktor.utils.io.internal.g.e) && gVarP != io.ktor.utils.io.internal.g.f.INSTANCE) {
                    return;
                }
            }
        } while (!androidx.concurrent.futures.a.a(_writeOp$FU, this, dVarS, null));
        if (cVarN == null) {
            w7.v.a aVar = w7.v.Companion;
            objA = l0.INSTANCE;
        } else {
            w7.v.a aVar2 = w7.v.Companion;
            objA = w7.w.a(cVarN.c());
        }
        dVarS.resumeWith(w7.v.b(objA));
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0000 A[EDGE_INSN: B:80:0x0000->B:75:0x0000 BREAK  A[LOOP:1: B:28:0x006e->B:81:?], SYNTHETIC] */
    private final Object z0(int i10, kotlin.coroutines.d<? super Boolean> dVar) {
        boolean z6;
        while (true) {
            io.ktor.utils.io.internal.g gVarP = P();
            if (gVarP.capacity._availableForRead$internal >= i10 || !(this.joining == null || S() == null || (gVarP != io.ktor.utils.io.internal.g.a.INSTANCE && !(gVarP instanceof io.ktor.utils.io.internal.g.b)))) {
                break;
            }
            io.ktor.utils.io.internal.c cVarN = N();
            if (cVarN != null) {
                if (cVarN.b() != null) {
                    w7.v.a aVar = w7.v.Companion;
                    dVar.resumeWith(w7.v.b(w7.w.a(cVarN.b())));
                    return kotlin.coroutines.intrinsics.d.e();
                }
                boolean zE = P().capacity.e();
                boolean z10 = false;
                if (P().capacity._availableForRead$internal >= i10) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                w7.v.a aVar2 = w7.v.Companion;
                if (zE && z6) {
                    z10 = true;
                }
                dVar.resumeWith(w7.v.b(Boolean.valueOf(z10)));
                return kotlin.coroutines.intrinsics.d.e();
            }
            while (true) {
                if (O() == null) {
                    if (N() != null) {
                        break;
                    }
                    io.ktor.utils.io.internal.g gVarP2 = P();
                    if (gVarP2.capacity._availableForRead$internal >= i10 || !(this.joining == null || S() == null || (gVarP2 != io.ktor.utils.io.internal.g.a.INSTANCE && !(gVarP2 instanceof io.ktor.utils.io.internal.g.b)))) {
                        break;
                    }
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _readOp$FU;
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, dVar)) {
                        if (N() == null) {
                            io.ktor.utils.io.internal.g gVarP3 = P();
                            if (gVarP3.capacity._availableForRead$internal >= i10 || (this.joining != null && S() != null && (gVarP3 == io.ktor.utils.io.internal.g.a.INSTANCE || (gVarP3 instanceof io.ktor.utils.io.internal.g.b)))) {
                                if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, dVar, null)) {
                                    break;
                                }
                            }
                        } else if (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, dVar, null)) {
                            break;
                            break;
                        }
                    }
                } else {
                    throw new IllegalStateException("Operation is already in progress".toString());
                }
            }
            return kotlin.coroutines.intrinsics.d.e();
        }
        w7.v.a aVar3 = w7.v.Companion;
        dVar.resumeWith(w7.v.b(Boolean.TRUE));
        return kotlin.coroutines.intrinsics.d.e();
    }

    public final boolean C0() {
        if (N() == null || !B0(false)) {
            return false;
        }
        io.ktor.utils.io.internal.d dVar = this.joining;
        if (dVar != null) {
            L(dVar);
        }
        r0();
        s0();
        return true;
    }

    @Nullable
    public final Object D0(int i10, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        Throwable thC;
        if (!Q0(i10)) {
            io.ktor.utils.io.internal.c cVarN = N();
            if (cVarN != null && (thC = cVarN.c()) != null) {
                io.ktor.utils.io.b.b(thC);
                throw new w7.i();
            }
            return l0.INSTANCE;
        }
        this.writeSuspensionSize = i10;
        if (this.attachedJob != null) {
            Object objInvoke = this.writeSuspension.invoke(dVar);
            if (objInvoke == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            if (objInvoke == kotlin.coroutines.intrinsics.d.e()) {
                return objInvoke;
            }
            return l0.INSTANCE;
        }
        io.ktor.utils.io.internal.b<l0> bVar = this.writeSuspendContinuationCache;
        this.writeSuspension.invoke(bVar);
        Object objF = bVar.f(kotlin.coroutines.intrinsics.c.c(dVar));
        if (objF == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        if (objF == kotlin.coroutines.intrinsics.d.e()) {
            return objF;
        }
        return l0.INSTANCE;
    }

    @NotNull
    public final io.ktor.utils.io.internal.g K() {
        return P();
    }

    public boolean T() {
        if (N() != null) {
            return true;
        }
        return false;
    }

    @Override // io.ktor.utils.io.j
    public boolean c(@Nullable Throwable th) {
        io.ktor.utils.io.internal.c cVar;
        io.ktor.utils.io.internal.d dVar;
        if (N() != null) {
            return false;
        }
        if (th == null) {
            cVar = io.ktor.utils.io.internal.c.Companion.a();
        } else {
            cVar = new io.ktor.utils.io.internal.c(th);
        }
        P().capacity.e();
        if (!androidx.concurrent.futures.a.a(_closed$FU, this, null, cVar)) {
            return false;
        }
        P().capacity.e();
        if (P().capacity.g() || th != null) {
            C0();
        }
        q0(th);
        if (P() == io.ktor.utils.io.internal.g.f.INSTANCE && (dVar = this.joining) != null) {
            L(dVar);
        }
        if (th != null) {
            b2 b2Var = this.attachedJob;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            this.readSuspendContinuationCache.d(th);
            this.writeSuspendContinuationCache.d(th);
            return true;
        }
        this.writeSuspendContinuationCache.d(new p(io.ktor.utils.io.b.DEFAULT_CLOSE_MESSAGE));
        this.readSuspendContinuationCache.c(Boolean.valueOf(P().capacity.e()));
        return true;
    }

    @Override // io.ktor.utils.io.g
    public int f() {
        return P().capacity._availableForRead$internal;
    }

    @Override // io.ktor.utils.io.g
    @Nullable
    public Throwable j() {
        io.ktor.utils.io.internal.c cVarN = N();
        if (cVarN != null) {
            return cVarN.b();
        }
        return null;
    }

    @Override // io.ktor.utils.io.g
    public boolean o() {
        if (P() == io.ktor.utils.io.internal.g.f.INSTANCE && N() != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ByteBuffer x0() throws Throwable {
        Object obj;
        io.ktor.utils.io.internal.g gVar;
        io.ktor.utils.io.internal.g.a aVar;
        io.ktor.utils.io.internal.g gVarD;
        kotlin.coroutines.d<l0> dVarS = S();
        if (dVarS == null) {
            io.ktor.utils.io.internal.g gVar2 = null;
            io.ktor.utils.io.internal.g.c cVarU = null;
            do {
                obj = this._state;
                gVar = (io.ktor.utils.io.internal.g) obj;
                if (this.joining != null) {
                    if (cVarU != null) {
                        k0(cVarU);
                    }
                    return null;
                }
                if (N() != null) {
                    if (cVarU != null) {
                        k0(cVarU);
                    }
                    io.ktor.utils.io.internal.c cVarN = N();
                    kotlin.jvm.internal.t.g(cVarN);
                    io.ktor.utils.io.b.b(cVarN.c());
                    throw new w7.i();
                }
                aVar = io.ktor.utils.io.internal.g.a.INSTANCE;
                if (gVar == aVar) {
                    if (cVarU == null) {
                        cVarU = U();
                    }
                    gVarD = cVarU.d();
                } else {
                    if (gVar == io.ktor.utils.io.internal.g.f.INSTANCE) {
                        if (cVarU != null) {
                            k0(cVarU);
                        }
                        if (this.joining != null) {
                            return null;
                        }
                        io.ktor.utils.io.internal.c cVarN2 = N();
                        kotlin.jvm.internal.t.g(cVarN2);
                        io.ktor.utils.io.b.b(cVarN2.c());
                        throw new w7.i();
                    }
                    gVarD = gVar.d();
                }
            } while (!androidx.concurrent.futures.a.a(_state$FU, this, obj, gVarD));
            if (N() == null) {
                ByteBuffer byteBufferB = gVarD.b();
                if (cVarU != null) {
                    if (gVar == null) {
                        kotlin.jvm.internal.t.B(Tracking.CONSTANTS.OLD);
                    } else {
                        gVar2 = gVar;
                    }
                    if (gVar2 != aVar) {
                        k0(cVarU);
                    }
                }
                V(byteBufferB, this.writePosition, gVarD.capacity._availableForWrite$internal);
                return byteBufferB;
            }
            p0();
            C0();
            io.ktor.utils.io.internal.c cVarN3 = N();
            kotlin.jvm.internal.t.g(cVarN3);
            io.ktor.utils.io.b.b(cVarN3.c());
            throw new w7.i();
        }
        throw new IllegalStateException("Write operation is already in progress: " + dVarS);
    }

    public /* synthetic */ a(boolean z6, t7.g gVar, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(z6, (i11 & 2) != 0 ? io.ktor.utils.io.internal.e.c() : gVar, (i11 & 4) != 0 ? 8 : i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(@NotNull ByteBuffer content) {
        this(false, io.ktor.utils.io.internal.e.b(), 0);
        kotlin.jvm.internal.t.j(content, "content");
        ByteBuffer byteBufferSlice = content.slice();
        kotlin.jvm.internal.t.i(byteBufferSlice, "content.slice()");
        io.ktor.utils.io.internal.g.c cVar = new io.ktor.utils.io.internal.g.c(byteBufferSlice, 0);
        cVar.capacity.i();
        this._state = cVar.d();
        p0();
        io.ktor.utils.io.k.a(this);
        C0();
    }
}
