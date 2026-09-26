package kotlinx.coroutines.flow;

import java.util.Arrays;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.g1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class c0<T> extends kotlinx.coroutines.flow.internal.b<e0> implements w<T>, kotlinx.coroutines.flow.c<T>, kotlinx.coroutines.flow.internal.p<T> {

    @Nullable
    private Object[] buffer;
    private final int bufferCapacity;
    private int bufferSize;
    private long minCollectorIndex;

    @NotNull
    private final kotlinx.coroutines.channels.a onBufferOverflow;
    private int queueSize;
    private final int replay;
    private long replayIndex;

    private static final class a implements g1 {

        @NotNull
        public final kotlin.coroutines.d<w7.l0> cont;

        @NotNull
        public final c0<?> flow;
        public long index;

        @Nullable
        public final Object value;

        @Override // kotlinx.coroutines.g1
        public void t() {
            this.flow.y(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull c0<?> c0Var, long j6, @Nullable Object obj, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            this.flow = c0Var;
            this.index = j6;
            this.value = obj;
            this.cont = dVar;
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[kotlinx.coroutines.channels.a.values().length];
            try {
                iArr[kotlinx.coroutines.channels.a.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[kotlinx.coroutines.channels.a.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[kotlinx.coroutines.channels.a.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {372, 379, 382}, m = "collect$suspendImpl")
    static final class c<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ c0<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(c0<T> c0Var, kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
            this.this$0 = c0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return c0.A(this.this$0, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [kotlin.coroutines.d<w7.l0>[]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public final kotlin.coroutines.d<w7.l0>[] I(kotlin.coroutines.d<w7.l0>[] dVarArr) {
        kotlinx.coroutines.flow.internal.d[] dVarArr2;
        e0 e0Var;
        kotlin.coroutines.d<? super w7.l0> dVar;
        int length = dVarArr.length;
        if (((kotlinx.coroutines.flow.internal.b) this).nCollectors != 0 && (dVarArr2 = ((kotlinx.coroutines.flow.internal.b) this).slots) != null) {
            int length2 = dVarArr2.length;
            int i10 = 0;
            while (i10 < length2) {
                kotlinx.coroutines.flow.internal.d dVar2 = dVarArr2[i10];
                if (dVar2 == null || (dVar = (e0Var = (e0) dVar2).cont) == null || T(e0Var) < 0) {
                    dVarArr = dVarArr;
                } else {
                    if (length >= dVarArr.length) {
                        dVarArr = dVarArr;
                        dVarArr = dVarArr;
                        Object[] objArrCopyOf = Arrays.copyOf((Object[]) dVarArr, Math.max(2, dVarArr.length * 2));
                        kotlin.jvm.internal.t.i(objArrCopyOf, "copyOf(this, newSize)");
                        dVarArr = objArrCopyOf;
                    }
                    dVarArr = dVarArr;
                    dVarArr = dVarArr;
                    ((kotlin.coroutines.d[]) dVarArr)[length] = dVar;
                    e0Var.cont = null;
                    length++;
                }
                i10++;
                dVarArr = dVarArr;
            }
            dVarArr = dVarArr;
        }
        return (kotlin.coroutines.d[]) dVarArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int P() {
        return this.bufferSize + this.queueSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(a aVar) {
        synchronized (this) {
            if (aVar.index < K()) {
                return;
            }
            Object[] objArr = this.buffer;
            kotlin.jvm.internal.t.g(objArr);
            if (d0.f(objArr, aVar.index) != aVar) {
                return;
            }
            d0.g(objArr, aVar.index, d0.NO_VALUE);
            z();
            w7.l0 l0Var = w7.l0.INSTANCE;
        }
    }

    public final long X() {
        long j6 = this.replayIndex;
        if (j6 < this.minCollectorIndex) {
            this.minCollectorIndex = j6;
        }
        return j6;
    }

    @Override // kotlinx.coroutines.flow.w
    public void b() {
        synchronized (this) {
            V(J(), this.minCollectorIndex, J(), N());
            w7.l0 l0Var = w7.l0.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.b0, kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<?> dVar) {
        return A(this, hVar, dVar);
    }

    @Override // kotlinx.coroutines.flow.w, kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return F(this, t5, dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ <T> Object A(c0<T> c0Var, h<? super T> hVar, kotlin.coroutines.d<?> dVar) throws Throwable {
        c cVar;
        c0<T> c0Var2;
        Throwable th;
        e0 e0Var;
        h<? super T> hVar2;
        b2 b2Var;
        h hVar3;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.label = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(c0Var, dVar);
            }
        } else {
            cVar = new c(c0Var, dVar);
        }
        Object obj = cVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = cVar.label;
        if (i11 != 0) {
            if (i11 == 1) {
                e0Var = (e0) cVar.L$2;
                h<? super T> hVar4 = (h) cVar.L$1;
                c0<T> c0Var3 = (c0) cVar.L$0;
                try {
                    w7.w.b(obj);
                    hVar2 = hVar4;
                    c0Var = c0Var3;
                    try {
                        b2Var = (b2) cVar.getContext().get(b2.Key);
                        hVar3 = hVar2;
                    } catch (Throwable th2) {
                        c0Var2 = c0Var;
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    c0Var2 = c0Var3;
                }
            } else {
                if (i11 != 2 && i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                b2 b2Var2 = (b2) cVar.L$3;
                e0Var = (e0) cVar.L$2;
                h hVar5 = (h) cVar.L$1;
                c0Var2 = (c0) cVar.L$0;
                try {
                    w7.w.b(obj);
                    hVar3 = hVar5;
                    b2Var = b2Var2;
                    c0Var = c0Var2;
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            c0Var2.k(e0Var);
            throw th;
        }
        w7.w.b(obj);
        e0 e0VarH = c0Var.h();
        try {
            if (hVar instanceof p0) {
                cVar.L$0 = c0Var;
                cVar.L$1 = hVar;
                cVar.L$2 = e0VarH;
                cVar.label = 1;
                if (((p0) hVar).e(cVar) == objE) {
                    return objE;
                }
            }
            hVar2 = hVar;
            e0Var = e0VarH;
            b2Var = (b2) cVar.getContext().get(b2.Key);
            hVar3 = hVar2;
        } catch (Throwable th5) {
            c0Var2 = c0Var;
            th = th5;
            e0Var = e0VarH;
        }
        while (true) {
            Object objU = c0Var.U(e0Var);
            if (objU == d0.NO_VALUE) {
                cVar.L$0 = c0Var;
                cVar.L$1 = hVar3;
                cVar.L$2 = e0Var;
                cVar.L$3 = b2Var;
                cVar.label = 2;
                if (c0Var.x(e0Var, cVar) == objE) {
                    return objE;
                }
            } else {
                if (b2Var != null) {
                    f2.k(b2Var);
                }
                cVar.L$0 = c0Var;
                cVar.L$1 = hVar3;
                cVar.L$2 = e0Var;
                cVar.L$3 = b2Var;
                cVar.label = 3;
                if (hVar3.emit(objU, cVar) == objE) {
                    return objE;
                }
            }
        }
    }

    private final void E() {
        Object[] objArr = this.buffer;
        kotlin.jvm.internal.t.g(objArr);
        d0.g(objArr, K(), null);
        this.bufferSize--;
        long jK = K() + 1;
        if (this.replayIndex < jK) {
            this.replayIndex = jK;
        }
        if (this.minCollectorIndex < jK) {
            B(jK);
        }
    }

    private final Object G(T t5, kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        kotlin.coroutines.d<w7.l0>[] dVarArrI;
        a aVar;
        kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        kotlin.coroutines.d<w7.l0>[] dVarArrI2 = kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
        synchronized (this) {
            try {
                if (R(t5)) {
                    w7.v.a aVar2 = w7.v.Companion;
                    pVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
                    dVarArrI = I(dVarArrI2);
                    aVar = null;
                } else {
                    a aVar3 = new a(this, ((long) P()) + K(), t5, pVar);
                    H(aVar3);
                    this.queueSize++;
                    if (this.bufferCapacity == 0) {
                        dVarArrI2 = I(dVarArrI2);
                    }
                    dVarArrI = dVarArrI2;
                    aVar = aVar3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (aVar != null) {
            kotlinx.coroutines.r.a(pVar, aVar);
        }
        for (kotlin.coroutines.d<w7.l0> dVar2 : dVarArrI) {
            if (dVar2 != null) {
                w7.v.a aVar4 = w7.v.Companion;
                dVar2.resumeWith(w7.v.b(w7.l0.INSTANCE));
            }
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : w7.l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long K() {
        return Math.min(this.minCollectorIndex, this.replayIndex);
    }

    private final Object M(long j6) {
        Object[] objArr = this.buffer;
        kotlin.jvm.internal.t.g(objArr);
        Object objF = d0.f(objArr, j6);
        return objF instanceof a ? ((a) objF).value : objF;
    }

    private final Object[] Q(Object[] objArr, int i10, int i11) {
        if (i11 <= 0) {
            throw new IllegalStateException("Buffer size overflow".toString());
        }
        Object[] objArr2 = new Object[i11];
        this.buffer = objArr2;
        if (objArr == null) {
            return objArr2;
        }
        long jK = K();
        for (int i12 = 0; i12 < i10; i12++) {
            long j6 = ((long) i12) + jK;
            d0.g(objArr2, j6, d0.f(objArr, j6));
        }
        return objArr2;
    }

    private final boolean S(T t5) {
        if (this.replay == 0) {
            return true;
        }
        H(t5);
        int i10 = this.bufferSize + 1;
        this.bufferSize = i10;
        if (i10 > this.replay) {
            E();
        }
        this.minCollectorIndex = K() + ((long) this.bufferSize);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long T(e0 e0Var) {
        long j6 = e0Var.index;
        if (j6 < J()) {
            return j6;
        }
        if (this.bufferCapacity <= 0 && j6 <= K() && this.queueSize != 0) {
            return j6;
        }
        return -1L;
    }

    private final Object U(e0 e0Var) {
        Object obj;
        kotlin.coroutines.d<w7.l0>[] dVarArrW = kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
        synchronized (this) {
            try {
                long jT = T(e0Var);
                if (jT < 0) {
                    obj = d0.NO_VALUE;
                } else {
                    long j6 = e0Var.index;
                    Object objM = M(jT);
                    e0Var.index = jT + 1;
                    dVarArrW = W(j6);
                    obj = objM;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (kotlin.coroutines.d<w7.l0> dVar : dVarArrW) {
            if (dVar != null) {
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
            }
        }
        return obj;
    }

    private final Object x(e0 e0Var, kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        synchronized (this) {
            try {
                if (T(e0Var) < 0) {
                    e0Var.cont = pVar;
                } else {
                    w7.v.a aVar = w7.v.Companion;
                    pVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
                }
                w7.l0 l0Var = w7.l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : w7.l0.INSTANCE;
    }

    private final void z() {
        if (this.bufferCapacity != 0 || this.queueSize > 1) {
            Object[] objArr = this.buffer;
            kotlin.jvm.internal.t.g(objArr);
            while (this.queueSize > 0 && d0.f(objArr, (K() + ((long) P())) - 1) == d0.NO_VALUE) {
                this.queueSize--;
                d0.g(objArr, K() + ((long) P()), null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.b
    @NotNull
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public e0 i() {
        return new e0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.b
    @NotNull
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public e0[] j(int i10) {
        return new e0[i10];
    }

    protected final T L() {
        Object[] objArr = this.buffer;
        kotlin.jvm.internal.t.g(objArr);
        return (T) d0.f(objArr, (this.replayIndex + ((long) O())) - 1);
    }

    @NotNull
    public final kotlin.coroutines.d<w7.l0>[] W(long j6) {
        long j10;
        long j11;
        long j12;
        kotlinx.coroutines.flow.internal.d[] dVarArr;
        if (j6 > this.minCollectorIndex) {
            return kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
        }
        long jK = K();
        long j13 = ((long) this.bufferSize) + jK;
        if (this.bufferCapacity == 0 && this.queueSize > 0) {
            j13++;
        }
        if (((kotlinx.coroutines.flow.internal.b) this).nCollectors != 0 && (dVarArr = ((kotlinx.coroutines.flow.internal.b) this).slots) != null) {
            for (kotlinx.coroutines.flow.internal.d dVar : dVarArr) {
                if (dVar != null) {
                    long j14 = ((e0) dVar).index;
                    if (j14 >= 0 && j14 < j13) {
                        j13 = j14;
                    }
                }
            }
        }
        if (j13 <= this.minCollectorIndex) {
            return kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
        }
        long J = J();
        int iMin = l() > 0 ? Math.min(this.queueSize, this.bufferCapacity - ((int) (J - j13))) : this.queueSize;
        kotlin.coroutines.d<w7.l0>[] dVarArr2 = kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
        long j15 = ((long) this.queueSize) + J;
        if (iMin > 0) {
            dVarArr2 = new kotlin.coroutines.d[iMin];
            Object[] objArr = this.buffer;
            kotlin.jvm.internal.t.g(objArr);
            long j16 = J;
            int i10 = 0;
            while (true) {
                if (J >= j15) {
                    j10 = j13;
                    j11 = j15;
                    break;
                }
                Object objF = d0.f(objArr, J);
                j10 = j13;
                kotlinx.coroutines.internal.i0 i0Var = d0.NO_VALUE;
                if (objF != i0Var) {
                    kotlin.jvm.internal.t.h(objF, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                    a aVar = (a) objF;
                    int i11 = i10 + 1;
                    j11 = j15;
                    dVarArr2[i10] = aVar.cont;
                    d0.g(objArr, J, i0Var);
                    d0.g(objArr, j16, aVar.value);
                    j12 = 1;
                    j16++;
                    if (i11 >= iMin) {
                        break;
                    }
                    i10 = i11;
                } else {
                    j11 = j15;
                    j12 = 1;
                }
                J += j12;
                j13 = j10;
                j15 = j11;
            }
            J = j16;
        } else {
            j10 = j13;
            j11 = j15;
        }
        int i12 = (int) (J - jK);
        long j17 = l() == 0 ? J : j10;
        long jMax = Math.max(this.replayIndex, J - ((long) Math.min(this.replay, i12)));
        if (this.bufferCapacity == 0 && jMax < j11) {
            Object[] objArr2 = this.buffer;
            kotlin.jvm.internal.t.g(objArr2);
            if (kotlin.jvm.internal.t.e(d0.f(objArr2, jMax), d0.NO_VALUE)) {
                J++;
                jMax++;
            }
        }
        V(jMax, j17, J, j11);
        z();
        return (dVarArr2.length == 0) ^ true ? I(dVarArr2) : dVarArr2;
    }

    @Override // kotlinx.coroutines.flow.w
    public boolean c(T t5) {
        int i10;
        boolean z6;
        kotlin.coroutines.d<w7.l0>[] dVarArrI = kotlinx.coroutines.flow.internal.c.EMPTY_RESUMES;
        synchronized (this) {
            if (R(t5)) {
                dVarArrI = I(dVarArrI);
                z6 = true;
            } else {
                z6 = false;
            }
        }
        for (kotlin.coroutines.d<w7.l0> dVar : dVarArrI) {
            if (dVar != null) {
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
            }
        }
        return z6;
    }

    public c0(int i10, int i11, @NotNull kotlinx.coroutines.channels.a aVar) {
        this.replay = i10;
        this.bufferCapacity = i11;
        this.onBufferOverflow = aVar;
    }

    private final void B(long j6) {
        kotlinx.coroutines.flow.internal.d[] dVarArr;
        if (((kotlinx.coroutines.flow.internal.b) this).nCollectors != 0 && (dVarArr = ((kotlinx.coroutines.flow.internal.b) this).slots) != null) {
            for (kotlinx.coroutines.flow.internal.d dVar : dVarArr) {
                if (dVar != null) {
                    e0 e0Var = (e0) dVar;
                    long j10 = e0Var.index;
                    if (j10 >= 0 && j10 < j6) {
                        e0Var.index = j6;
                    }
                }
            }
        }
        this.minCollectorIndex = j6;
    }

    static /* synthetic */ <T> Object F(c0<T> c0Var, T t5, kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        if (c0Var.c(t5)) {
            return w7.l0.INSTANCE;
        }
        Object objG = c0Var.G(t5, dVar);
        if (objG == kotlin.coroutines.intrinsics.d.e()) {
            return objG;
        }
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(Object obj) {
        int iP = P();
        Object[] objArrQ = this.buffer;
        if (objArrQ == null) {
            objArrQ = Q(null, 0, 2);
        } else if (iP >= objArrQ.length) {
            objArrQ = Q(objArrQ, iP, objArrQ.length * 2);
        }
        d0.g(objArrQ, K() + ((long) iP), obj);
    }

    private final long J() {
        return K() + ((long) this.bufferSize);
    }

    private final long N() {
        return K() + ((long) this.bufferSize) + ((long) this.queueSize);
    }

    private final int O() {
        return (int) ((K() + ((long) this.bufferSize)) - this.replayIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean R(T t5) {
        if (l() == 0) {
            return S(t5);
        }
        if (this.bufferSize >= this.bufferCapacity && this.minCollectorIndex <= this.replayIndex) {
            int i10 = b.$EnumSwitchMapping$0[this.onBufferOverflow.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return true;
                }
            } else {
                return false;
            }
        }
        H(t5);
        int i11 = this.bufferSize + 1;
        this.bufferSize = i11;
        if (i11 > this.bufferCapacity) {
            E();
        }
        if (O() > this.replay) {
            V(this.replayIndex + 1, this.minCollectorIndex, J(), N());
        }
        return true;
    }

    private final void V(long j6, long j10, long j11, long j12) {
        long jMin = Math.min(j10, j6);
        for (long jK = K(); jK < jMin; jK++) {
            Object[] objArr = this.buffer;
            kotlin.jvm.internal.t.g(objArr);
            d0.g(objArr, jK, null);
        }
        this.replayIndex = j6;
        this.minCollectorIndex = j10;
        this.bufferSize = (int) (j11 - jMin);
        this.queueSize = (int) (j12 - j11);
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @NotNull
    public g<T> e(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return d0.e(this, gVar, i10, aVar);
    }
}
