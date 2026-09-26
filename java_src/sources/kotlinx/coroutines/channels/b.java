package kotlinx.coroutines.channels;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.a0;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.internal.g0;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.t0;
import kotlinx.coroutines.j3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public class b<E> implements kotlinx.coroutines.channels.d<E> {

    @Nullable
    private volatile Object _closeCause;
    private volatile long bufferEnd;

    @Nullable
    private volatile Object bufferEndSegment;
    private final int capacity;

    @Nullable
    private volatile Object closeHandler;
    private volatile long completedExpandBuffersAndPauseFlag;

    @Nullable
    public final e8.l<E, l0> onUndeliveredElement;

    @Nullable
    private final e8.q<kotlinx.coroutines.selects.b<?>, Object, Object, e8.l<Throwable, l0>> onUndeliveredElementReceiveCancellationConstructor;

    @Nullable
    private volatile Object receiveSegment;
    private volatile long receivers;

    @Nullable
    private volatile Object sendSegment;
    private volatile long sendersAndCloseStatus;

    @NotNull
    private static final AtomicLongFieldUpdater sendersAndCloseStatus$FU = AtomicLongFieldUpdater.newUpdater(b.class, "sendersAndCloseStatus");

    @NotNull
    private static final AtomicLongFieldUpdater receivers$FU = AtomicLongFieldUpdater.newUpdater(b.class, "receivers");

    @NotNull
    private static final AtomicLongFieldUpdater bufferEnd$FU = AtomicLongFieldUpdater.newUpdater(b.class, "bufferEnd");

    @NotNull
    private static final AtomicLongFieldUpdater completedExpandBuffersAndPauseFlag$FU = AtomicLongFieldUpdater.newUpdater(b.class, "completedExpandBuffersAndPauseFlag");

    @NotNull
    private static final AtomicReferenceFieldUpdater sendSegment$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "sendSegment");

    @NotNull
    private static final AtomicReferenceFieldUpdater receiveSegment$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "receiveSegment");

    @NotNull
    private static final AtomicReferenceFieldUpdater bufferEndSegment$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "bufferEndSegment");

    @NotNull
    private static final AtomicReferenceFieldUpdater _closeCause$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_closeCause");

    @NotNull
    private static final AtomicReferenceFieldUpdater closeHandler$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "closeHandler");

    private final class a implements f<E>, j3 {

        @Nullable
        private kotlinx.coroutines.p<? super Boolean> continuation;

        @Nullable
        private Object receiveResult = kotlinx.coroutines.channels.c.NO_RECEIVE_RESULT;

        public a() {
        }

        private final Object f(i<E> iVar, int i10, long j6, kotlin.coroutines.d<? super Boolean> dVar) throws Throwable {
            Boolean boolA;
            b<E> bVar = b.this;
            kotlinx.coroutines.p pVarB = kotlinx.coroutines.r.b(kotlin.coroutines.intrinsics.c.c(dVar));
            try {
                this.continuation = pVarB;
                Object objG0 = bVar.G0(iVar, i10, j6, this);
                if (objG0 != kotlinx.coroutines.channels.c.SUSPEND) {
                    e8.l<Throwable, l0> lVarA = null;
                    if (objG0 == kotlinx.coroutines.channels.c.FAILED) {
                        if (j6 < bVar.R()) {
                            iVar.b();
                        }
                        i iVar2 = (i) b.receiveSegment$FU.get(bVar);
                        while (true) {
                            if (bVar.Y()) {
                                h();
                                break;
                            }
                            long andIncrement = b.receivers$FU.getAndIncrement(bVar);
                            int i11 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
                            long j10 = andIncrement / ((long) i11);
                            int i12 = (int) (andIncrement % ((long) i11));
                            if (iVar2.id != j10) {
                                i iVarK = bVar.K(j10, iVar2);
                                if (iVarK != null) {
                                    iVar2 = iVarK;
                                }
                            }
                            Object objG1 = bVar.G0(iVar2, i12, andIncrement, this);
                            if (objG1 == kotlinx.coroutines.channels.c.SUSPEND) {
                                bVar.p0(this, iVar2, i12);
                                break;
                            }
                            if (objG1 == kotlinx.coroutines.channels.c.FAILED) {
                                if (andIncrement < bVar.R()) {
                                    iVar2.b();
                                }
                            } else {
                                if (objG1 == kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                iVar2.b();
                                this.receiveResult = objG1;
                                this.continuation = null;
                                boolA = kotlin.coroutines.jvm.internal.b.a(true);
                                e8.l<E, l0> lVar = bVar.onUndeliveredElement;
                                if (lVar != null) {
                                    lVarA = a0.a(lVar, objG1, pVarB.getContext());
                                }
                            }
                        }
                    } else {
                        iVar.b();
                        this.receiveResult = objG0;
                        this.continuation = null;
                        boolA = kotlin.coroutines.jvm.internal.b.a(true);
                        e8.l<E, l0> lVar2 = bVar.onUndeliveredElement;
                        if (lVar2 != null) {
                            lVarA = a0.a(lVar2, objG0, pVarB.getContext());
                        }
                    }
                    pVarB.B(boolA, lVarA);
                    break;
                }
                bVar.p0(this, iVar, i10);
                Object objU = pVarB.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    kotlin.coroutines.jvm.internal.h.c(dVar);
                }
                return objU;
            } catch (Throwable th) {
                pVarB.G();
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void h() {
            kotlinx.coroutines.p<? super Boolean> pVar = this.continuation;
            kotlin.jvm.internal.t.g(pVar);
            this.continuation = null;
            this.receiveResult = kotlinx.coroutines.channels.c.z();
            Throwable thN = b.this.N();
            if (thN == null) {
                w7.v.a aVar = w7.v.Companion;
                pVar.resumeWith(w7.v.b(Boolean.FALSE));
            } else {
                w7.v.a aVar2 = w7.v.Companion;
                pVar.resumeWith(w7.v.b(w.a(thN)));
            }
        }

        @Override // kotlinx.coroutines.j3
        public void a(@NotNull f0<?> f0Var, int i10) {
            kotlinx.coroutines.p<? super Boolean> pVar = this.continuation;
            if (pVar != null) {
                pVar.a(f0Var, i10);
            }
        }

        @Override // kotlinx.coroutines.channels.f
        @Nullable
        public Object b(@NotNull kotlin.coroutines.d<? super Boolean> dVar) {
            i<E> iVar;
            b<E> bVar = b.this;
            i<E> iVar2 = (i) b.receiveSegment$FU.get(bVar);
            while (!bVar.Y()) {
                long andIncrement = b.receivers$FU.getAndIncrement(bVar);
                int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
                long j6 = andIncrement / ((long) i10);
                int i11 = (int) (andIncrement % ((long) i10));
                if (iVar2.id != j6) {
                    i<E> iVarK = bVar.K(j6, iVar2);
                    if (iVarK == null) {
                        continue;
                    } else {
                        iVar = iVarK;
                    }
                } else {
                    iVar = iVar2;
                }
                Object objG0 = bVar.G0(iVar, i11, andIncrement, null);
                if (objG0 == kotlinx.coroutines.channels.c.SUSPEND) {
                    throw new IllegalStateException("unreachable".toString());
                }
                if (objG0 != kotlinx.coroutines.channels.c.FAILED) {
                    if (objG0 == kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                        return f(iVar, i11, andIncrement, dVar);
                    }
                    iVar.b();
                    this.receiveResult = objG0;
                    return kotlin.coroutines.jvm.internal.b.a(true);
                }
                if (andIncrement < bVar.R()) {
                    iVar.b();
                }
                iVar2 = iVar;
            }
            return kotlin.coroutines.jvm.internal.b.a(g());
        }

        public final boolean i(E e) {
            kotlinx.coroutines.p<? super Boolean> pVar = this.continuation;
            kotlin.jvm.internal.t.g(pVar);
            this.continuation = null;
            this.receiveResult = e;
            Boolean bool = Boolean.TRUE;
            e8.l<E, l0> lVar = b.this.onUndeliveredElement;
            return kotlinx.coroutines.channels.c.B(pVar, bool, lVar != null ? a0.a(lVar, e, pVar.getContext()) : null);
        }

        public final void j() {
            kotlinx.coroutines.p<? super Boolean> pVar = this.continuation;
            kotlin.jvm.internal.t.g(pVar);
            this.continuation = null;
            this.receiveResult = kotlinx.coroutines.channels.c.z();
            Throwable thN = b.this.N();
            if (thN == null) {
                w7.v.a aVar = w7.v.Companion;
                pVar.resumeWith(w7.v.b(Boolean.FALSE));
            } else {
                w7.v.a aVar2 = w7.v.Companion;
                pVar.resumeWith(w7.v.b(w.a(thN)));
            }
        }

        @Override // kotlinx.coroutines.channels.f
        public E next() throws Throwable {
            E e = (E) this.receiveResult;
            if (e == kotlinx.coroutines.channels.c.NO_RECEIVE_RESULT) {
                throw new IllegalStateException("`hasNext()` has not been invoked".toString());
            }
            this.receiveResult = kotlinx.coroutines.channels.c.NO_RECEIVE_RESULT;
            if (e != kotlinx.coroutines.channels.c.z()) {
                return e;
            }
            throw h0.a(b.this.O());
        }

        private final boolean g() throws Throwable {
            this.receiveResult = kotlinx.coroutines.channels.c.z();
            Throwable thN = b.this.N();
            if (thN == null) {
                return false;
            }
            throw h0.a(thN);
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.q<kotlinx.coroutines.selects.b<?>, Object, Object, e8.l<? super Throwable, ? extends l0>> {
        final /* synthetic */ b<E> this$0;

        static final class a extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
            final /* synthetic */ Object $element;
            final /* synthetic */ kotlinx.coroutines.selects.b<?> $select;
            final /* synthetic */ b<E> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, b<E> bVar, kotlinx.coroutines.selects.b<?> bVar2) {
                super(1);
                this.$element = obj;
                this.this$0 = bVar;
                this.$select = bVar2;
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                invoke2(th);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable th) {
                if (this.$element != kotlinx.coroutines.channels.c.z()) {
                    a0.b(this.this$0.onUndeliveredElement, this.$element, this.$select.getContext());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(b<E> bVar) {
            super(3);
            this.this$0 = bVar;
        }

        @Override // e8.q
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e8.l<Throwable, l0> invoke(@NotNull kotlinx.coroutines.selects.b<?> bVar, @Nullable Object obj, @Nullable Object obj2) {
            return new a(obj2, this.this$0, bVar);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {739}, m = "receiveCatching-JP2dKIU$suspendImpl")
    static final class d<E> extends kotlin.coroutines.jvm.internal.d {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ b<E> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(b<E> bVar, kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
            this.this$0 = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objS0 = b.s0(this.this$0, this);
            return objS0 == kotlin.coroutines.intrinsics.d.e() ? objS0 : h.b(objS0);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {3056}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk")
    static final class e extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ b<E> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(b<E> bVar, kotlin.coroutines.d<? super e> dVar) {
            super(dVar);
            this.this$0 = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            Object objT0 = this.this$0.t0(null, 0, 0L, this);
            return objT0 == kotlin.coroutines.intrinsics.d.e() ? objT0 : h.b(objT0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(int i10, @Nullable e8.l<? super E, l0> lVar) {
        this.capacity = i10;
        this.onUndeliveredElement = lVar;
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
        }
        this.bufferEnd = kotlinx.coroutines.channels.c.A(i10);
        this.completedExpandBuffersAndPauseFlag = M();
        i iVar = new i(0L, null, this, 3);
        this.sendSegment = iVar;
        this.receiveSegment = iVar;
        if (c0()) {
            iVar = kotlinx.coroutines.channels.c.NULL_SEGMENT;
            kotlin.jvm.internal.t.h(iVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment = iVar;
        this.onUndeliveredElementReceiveCancellationConstructor = lVar != 0 ? new c(this) : null;
        this._closeCause = kotlinx.coroutines.channels.c.NO_CLOSE_CAUSE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void B(i<E> iVar, long j6) {
        Object objB = kotlinx.coroutines.internal.o.b(null, 1, null);
        loop0: while (iVar != null) {
            for (int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE - 1; -1 < i10; i10--) {
                if ((iVar.id * ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE)) + ((long) i10) < j6) {
                    break loop0;
                }
                while (true) {
                    Object objW = iVar.w(i10);
                    if (objW != null && objW != kotlinx.coroutines.channels.c.IN_BUFFER) {
                        if (!(objW instanceof v)) {
                            if (!(objW instanceof j3)) {
                                break;
                            }
                            if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                                objB = kotlinx.coroutines.internal.o.e(objB, objW);
                                iVar.x(i10, true);
                                break;
                            }
                        } else {
                            if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                                objB = kotlinx.coroutines.internal.o.e(objB, ((v) objW).waiter);
                                iVar.x(i10, true);
                                break;
                            }
                        }
                    } else {
                        if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                            iVar.p();
                            break;
                        }
                    }
                }
            }
            iVar = (i) iVar.g();
        }
        if (objB != null) {
            if (!(objB instanceof ArrayList)) {
                w0((j3) objB);
                return;
            }
            kotlin.jvm.internal.t.h(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                w0((j3) arrayList.get(size));
            }
        }
    }

    private final i<E> J(long j6, i<E> iVar, long j10) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bufferEndSegment$FU;
        e8.p pVar = (e8.p) kotlinx.coroutines.channels.c.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.d.c(iVar, j6, pVar);
            if (!g0.e(objC)) {
                f0 f0VarC = g0.c(objC);
                while (true) {
                    f0 f0Var = (f0) atomicReferenceFieldUpdater.get(this);
                    if (f0Var.id >= f0VarC.id) {
                        break loop0;
                    }
                    if (!f0VarC.q()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f0Var, f0VarC)) {
                        if (!f0Var.m()) {
                            break loop0;
                        }
                        f0Var.k();
                        break loop0;
                    }
                    if (f0VarC.m()) {
                        f0VarC.k();
                    }
                }
            } else {
                break;
            }
        }
        if (g0.e(objC)) {
            G();
            h0(j6, iVar);
            U(this, 0L, 1, null);
            return null;
        }
        i<E> iVar2 = (i) g0.c(objC);
        long j11 = iVar2.id;
        if (j11 <= j6) {
            return iVar2;
        }
        int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
        if (bufferEnd$FU.compareAndSet(this, j10 + 1, ((long) i10) * j11)) {
            T((iVar2.id * ((long) i10)) - j10);
            return null;
        }
        U(this, 0L, 1, null);
        return null;
    }

    private final boolean Z(long j6) {
        return X(j6, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a0(long j6) {
        return X(j6, false);
    }

    static /* synthetic */ <E> Object r0(b<E> bVar, kotlin.coroutines.d<? super E> dVar) throws Throwable {
        i<E> iVar;
        i<E> iVar2 = (i) receiveSegment$FU.get(bVar);
        while (!bVar.Y()) {
            long andIncrement = receivers$FU.getAndIncrement(bVar);
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j6 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (iVar2.id != j6) {
                i<E> iVarK = bVar.K(j6, iVar2);
                if (iVarK == null) {
                    continue;
                } else {
                    iVar = iVarK;
                }
            } else {
                iVar = iVar2;
            }
            Object objG0 = bVar.G0(iVar, i11, andIncrement, null);
            if (objG0 == kotlinx.coroutines.channels.c.SUSPEND) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (objG0 != kotlinx.coroutines.channels.c.FAILED) {
                if (objG0 == kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                    return bVar.u0(iVar, i11, andIncrement, dVar);
                }
                iVar.b();
                return objG0;
            }
            if (andIncrement < bVar.R()) {
                iVar.b();
            }
            iVar2 = iVar;
        }
        throw h0.a(bVar.O());
    }

    private final void w0(j3 j3Var) {
        y0(j3Var, true);
    }

    private final void x0(j3 j3Var) {
        y0(j3Var, false);
    }

    static /* synthetic */ <E> Object z0(b<E> bVar, E e2, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        i<E> iVar;
        i<E> iVar2 = (i) sendSegment$FU.get(bVar);
        while (true) {
            long andIncrement = sendersAndCloseStatus$FU.getAndIncrement(bVar);
            long j6 = andIncrement & 1152921504606846975L;
            boolean zA0 = bVar.a0(andIncrement);
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j10 = j6 / ((long) i10);
            int i11 = (int) (j6 % ((long) i10));
            if (iVar2.id != j10) {
                i<E> iVarL = bVar.L(j10, iVar2);
                if (iVarL != null) {
                    iVar = iVarL;
                } else if (zA0) {
                    Object objL0 = bVar.l0(e2, dVar);
                    if (objL0 != kotlin.coroutines.intrinsics.d.e()) {
                        break;
                    }
                    return objL0;
                }
            } else {
                iVar = iVar2;
            }
            int iI0 = bVar.I0(iVar, i11, e2, j6, null, zA0);
            if (iI0 == 0) {
                iVar.b();
                break;
            }
            if (iI0 != 1) {
                if (iI0 == 2) {
                    if (!zA0) {
                        break;
                    }
                    iVar.p();
                    Object objL1 = bVar.l0(e2, dVar);
                    if (objL1 != kotlin.coroutines.intrinsics.d.e()) {
                        break;
                    }
                    return objL1;
                }
                if (iI0 == 3) {
                    Object objA0 = bVar.A0(iVar, i11, e2, j6, dVar);
                    if (objA0 != kotlin.coroutines.intrinsics.d.e()) {
                        break;
                    }
                    return objA0;
                }
                if (iI0 == 4) {
                    if (j6 < bVar.P()) {
                        iVar.b();
                    }
                    Object objL2 = bVar.l0(e2, dVar);
                    if (objL2 != kotlin.coroutines.intrinsics.d.e()) {
                        break;
                    }
                    return objL2;
                }
                if (iI0 == 5) {
                    iVar.b();
                }
                iVar2 = iVar;
            } else {
                break;
            }
        }
        return l0.INSTANCE;
    }

    protected boolean b0() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.u
    public boolean c(@Nullable Throwable th) {
        return D(th, false);
    }

    protected void i0() {
    }

    protected void n0() {
    }

    protected void o0() {
    }

    @Override // kotlinx.coroutines.channels.t
    @Nullable
    public Object s(@NotNull kotlin.coroutines.d<? super h<? extends E>> dVar) {
        return s0(this, dVar);
    }

    @Override // kotlinx.coroutines.channels.t
    @Nullable
    public Object v(@NotNull kotlin.coroutines.d<? super E> dVar) {
        return r0(this, dVar);
    }

    @Override // kotlinx.coroutines.channels.u
    @Nullable
    public Object w(E e2, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return z0(this, e2, dVar);
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.channels.b$b, reason: collision with other inner class name */
    private static final class C0431b implements j3 {
        private final /* synthetic */ kotlinx.coroutines.p<Boolean> $$delegate_0;

        @NotNull
        private final kotlinx.coroutines.o<Boolean> cont;

        @Override // kotlinx.coroutines.j3
        public void a(@NotNull f0<?> f0Var, int i10) {
            this.$$delegate_0.a(f0Var, i10);
        }

        @NotNull
        public final kotlinx.coroutines.o<Boolean> b() {
            return this.cont;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public C0431b(@NotNull kotlinx.coroutines.o<? super Boolean> oVar) {
            this.cont = oVar;
            kotlin.jvm.internal.t.h(oVar, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.$$delegate_0 = (kotlinx.coroutines.p) oVar;
        }
    }

    /* JADX WARN: Code duplicated, block: B:62:0x011c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0125 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x0126  */
    private final Object A0(i<E> iVar, int i10, E e2, long j6, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        Object objB;
        Object objU;
        i iVar2;
        kotlinx.coroutines.p pVarB = kotlinx.coroutines.r.b(kotlin.coroutines.intrinsics.c.c(dVar));
        try {
            int iI0 = I0(iVar, i10, e2, j6, pVarB, false);
            if (iI0 == 0) {
                iVar.b();
                w7.v.a aVar = w7.v.Companion;
                objB = w7.v.b(l0.INSTANCE);
            } else {
                if (iI0 != 1) {
                    if (iI0 != 2) {
                        if (iI0 != 4) {
                            if (iI0 != 5) {
                                throw new IllegalStateException("unexpected".toString());
                            }
                            iVar.b();
                            i iVar3 = (i) sendSegment$FU.get(this);
                            while (true) {
                                long andIncrement = sendersAndCloseStatus$FU.getAndIncrement(this);
                                long j10 = andIncrement & 1152921504606846975L;
                                boolean zA0 = a0(andIncrement);
                                int i11 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
                                long j11 = j10 / ((long) i11);
                                int i12 = (int) (j10 % ((long) i11));
                                if (iVar3.id != j11) {
                                    i iVarL = L(j11, iVar3);
                                    if (iVarL != null) {
                                        iVar2 = iVarL;
                                    } else if (zA0) {
                                    }
                                } else {
                                    iVar2 = iVar3;
                                }
                                i iVar4 = iVar2;
                                int iI1 = I0(iVar2, i12, e2, j10, pVarB, zA0);
                                if (iI1 == 0) {
                                    iVar4.b();
                                    w7.v.a aVar2 = w7.v.Companion;
                                    objB = w7.v.b(l0.INSTANCE);
                                } else if (iI1 == 1) {
                                    w7.v.a aVar3 = w7.v.Companion;
                                    objB = w7.v.b(l0.INSTANCE);
                                } else if (iI1 == 2) {
                                    if (!zA0) {
                                        kotlinx.coroutines.p pVar = pVarB instanceof j3 ? pVarB : null;
                                        if (pVar == null) {
                                            break;
                                        }
                                        q0(pVar, iVar4, i12);
                                        break;
                                    }
                                    iVar4.p();
                                } else {
                                    if (iI1 == 3) {
                                        throw new IllegalStateException("unexpected".toString());
                                    }
                                    if (iI1 != 4) {
                                        if (iI1 == 5) {
                                            iVar4.b();
                                        }
                                        iVar3 = iVar4;
                                    } else if (j10 < P()) {
                                        iVar4.b();
                                    }
                                }
                            }
                        } else if (j6 < P()) {
                            iVar.b();
                        }
                        m0(e2, pVarB);
                        break;
                    } else {
                        q0(pVarB, iVar, i10);
                    }
                    objU = pVarB.u();
                    if (objU == kotlin.coroutines.intrinsics.d.e()) {
                        kotlin.coroutines.jvm.internal.h.c(dVar);
                    }
                    if (objU == kotlin.coroutines.intrinsics.d.e()) {
                        return objU;
                    }
                    return l0.INSTANCE;
                }
                w7.v.a aVar4 = w7.v.Companion;
                objB = w7.v.b(l0.INSTANCE);
            }
            pVarB.resumeWith(objB);
            objU = pVarB.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                return objU;
            }
            return l0.INSTANCE;
        } catch (Throwable th) {
            pVarB.G();
            throw th;
        }
    }

    private final i<E> C() {
        Object obj = bufferEndSegment$FU.get(this);
        i iVar = (i) sendSegment$FU.get(this);
        if (iVar.id > ((i) obj).id) {
            obj = iVar;
        }
        i iVar2 = (i) receiveSegment$FU.get(this);
        if (iVar2.id > ((i) obj).id) {
            obj = iVar2;
        }
        return (i) kotlinx.coroutines.internal.d.b((kotlinx.coroutines.internal.e) obj);
    }

    private final boolean C0(Object obj, E e2) {
        if (obj instanceof kotlinx.coroutines.selects.b) {
            return ((kotlinx.coroutines.selects.b) obj).c(this, e2);
        }
        if (obj instanceof s) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            s sVar = (s) obj;
            kotlinx.coroutines.p<h<? extends E>> pVar = sVar.cont;
            h hVarB = h.b(h.Companion.c(e2));
            e8.l<E, l0> lVar = this.onUndeliveredElement;
            return kotlinx.coroutines.channels.c.B(pVar, hVarB, lVar != null ? a0.a(lVar, e2, sVar.cont.getContext()) : null);
        }
        if (obj instanceof a) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).i(e2);
        }
        if (obj instanceof kotlinx.coroutines.o) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            kotlinx.coroutines.o oVar = (kotlinx.coroutines.o) obj;
            e8.l<E, l0> lVar2 = this.onUndeliveredElement;
            return kotlinx.coroutines.channels.c.B(oVar, e2, lVar2 != null ? a0.a(lVar2, e2, oVar.getContext()) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    private final boolean D0(Object obj, i<E> iVar, int i10) {
        if (obj instanceof kotlinx.coroutines.o) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return kotlinx.coroutines.channels.c.C((kotlinx.coroutines.o) obj, l0.INSTANCE, null, 2, null);
        }
        if (obj instanceof kotlinx.coroutines.selects.b) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            kotlinx.coroutines.selects.d dVarF = ((kotlinx.coroutines.selects.a) obj).f(this, l0.INSTANCE);
            if (dVarF == kotlinx.coroutines.selects.d.REREGISTER) {
                iVar.s(i10);
            }
            return dVarF == kotlinx.coroutines.selects.d.SUCCESSFUL;
        }
        if (obj instanceof C0431b) {
            return kotlinx.coroutines.channels.c.C(((C0431b) obj).b(), Boolean.TRUE, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final i<E> K(long j6, i<E> iVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = receiveSegment$FU;
        e8.p pVar = (e8.p) kotlinx.coroutines.channels.c.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.d.c(iVar, j6, pVar);
            if (!g0.e(objC)) {
                f0 f0VarC = g0.c(objC);
                while (true) {
                    f0 f0Var = (f0) atomicReferenceFieldUpdater.get(this);
                    if (f0Var.id >= f0VarC.id) {
                        break loop0;
                    }
                    if (!f0VarC.q()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f0Var, f0VarC)) {
                        if (!f0Var.m()) {
                            break loop0;
                        }
                        f0Var.k();
                        break loop0;
                    }
                    if (f0VarC.m()) {
                        f0VarC.k();
                    }
                }
            } else {
                break;
            }
        }
        if (g0.e(objC)) {
            G();
            if (iVar.id * ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE) >= R()) {
                return null;
            }
            iVar.b();
            return null;
        }
        i<E> iVar2 = (i) g0.c(objC);
        if (!c0() && j6 <= M() / ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = bufferEndSegment$FU;
            while (true) {
                f0 f0Var2 = (f0) atomicReferenceFieldUpdater2.get(this);
                if (f0Var2.id >= iVar2.id || !iVar2.q()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, f0Var2, iVar2)) {
                    if (!f0Var2.m()) {
                        break;
                    }
                    f0Var2.k();
                    break;
                }
                if (iVar2.m()) {
                    iVar2.k();
                }
            }
        }
        long j10 = iVar2.id;
        if (j10 <= j6) {
            return iVar2;
        }
        int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
        K0(j10 * ((long) i10));
        if (iVar2.id * ((long) i10) >= R()) {
            return null;
        }
        iVar2.b();
        return null;
    }

    private final void K0(long j6) {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$FU;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (j10 >= j6) {
                return;
            }
        } while (!receivers$FU.compareAndSet(this, j10, j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final i<E> L(long j6, i<E> iVar) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sendSegment$FU;
        e8.p pVar = (e8.p) kotlinx.coroutines.channels.c.y();
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.d.c(iVar, j6, pVar);
            if (!g0.e(objC)) {
                f0 f0VarC = g0.c(objC);
                while (true) {
                    f0 f0Var = (f0) atomicReferenceFieldUpdater.get(this);
                    if (f0Var.id >= f0VarC.id) {
                        break loop0;
                    }
                    if (!f0VarC.q()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f0Var, f0VarC)) {
                        if (!f0Var.m()) {
                            break loop0;
                        }
                        f0Var.k();
                        break loop0;
                    }
                    if (f0VarC.m()) {
                        f0VarC.k();
                    }
                }
            } else {
                break;
            }
        }
        if (g0.e(objC)) {
            G();
            if (iVar.id * ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE) >= P()) {
                return null;
            }
            iVar.b();
            return null;
        }
        i<E> iVar2 = (i) g0.c(objC);
        long j10 = iVar2.id;
        if (j10 <= j6) {
            return iVar2;
        }
        int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
        L0(j10 * ((long) i10));
        if (iVar2.id * ((long) i10) >= P()) {
            return null;
        }
        iVar2.b();
        return null;
    }

    private final void L0(long j6) {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$FU;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            j11 = 1152921504606846975L & j10;
            if (j11 >= j6) {
                return;
            }
        } while (!sendersAndCloseStatus$FU.compareAndSet(this, j10, kotlinx.coroutines.channels.c.w(j11, (int) (j10 >> 60))));
    }

    private final long M() {
        return bufferEnd$FU.get(this);
    }

    private final void T(long j6) {
        if ((completedExpandBuffersAndPauseFlag$FU.addAndGet(this, j6) & com.google.common.primitives.g.MAX_POWER_OF_TWO) != 0) {
            while ((completedExpandBuffersAndPauseFlag$FU.get(this) & com.google.common.primitives.g.MAX_POWER_OF_TWO) != 0) {
            }
        }
    }

    static /* synthetic */ void U(b bVar, long j6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i10 & 1) != 0) {
            j6 = 1;
        }
        bVar.T(j6);
    }

    private final void V() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = closeHandler$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? kotlinx.coroutines.channels.c.CLOSE_HANDLER_CLOSED : kotlinx.coroutines.channels.c.CLOSE_HANDLER_INVOKED));
        if (obj == null) {
            return;
        }
        ((e8.l) obj).invoke(N());
    }

    private final boolean X(long j6, boolean z6) {
        int i10 = (int) (j6 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 == 2) {
            F(j6 & 1152921504606846975L);
            if (z6 && S()) {
                return false;
            }
        } else {
            if (i10 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
            E(j6 & 1152921504606846975L);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long d0(i<E> iVar) {
        do {
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            while (true) {
                i10--;
                if (-1 < i10) {
                    long j6 = (iVar.id * ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE)) + ((long) i10);
                    if (j6 >= P()) {
                        while (true) {
                            Object objW = iVar.w(i10);
                            if (objW != null && objW != kotlinx.coroutines.channels.c.IN_BUFFER) {
                                if (objW != kotlinx.coroutines.channels.c.BUFFERED) {
                                    break;
                                }
                                return j6;
                            }
                            if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                                iVar.p();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                }
            }
            iVar = (i) iVar.g();
        } while (iVar != null);
        return -1L;
    }

    private final void e0() {
        long j6;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            if (((int) (j6 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j6, kotlinx.coroutines.channels.c.w(1152921504606846975L & j6, 1)));
    }

    private final void f0() {
        long j6;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j6, kotlinx.coroutines.channels.c.w(1152921504606846975L & j6, 3)));
    }

    private final void g0() {
        long j6;
        long jW;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (j6 >> 60);
            if (i10 == 0) {
                jW = kotlinx.coroutines.channels.c.w(j6 & 1152921504606846975L, 2);
            } else if (i10 != 1) {
                return;
            } else {
                jW = kotlinx.coroutines.channels.c.w(j6 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j6, jW));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h0(long j6, i<E> iVar) {
        i<E> iVar2;
        i<E> iVar3;
        while (iVar.id < j6 && (iVar3 = (i) iVar.e()) != null) {
            iVar = iVar3;
        }
        while (true) {
            if (!iVar.h() || (iVar2 = (i) iVar.e()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = bufferEndSegment$FU;
                while (true) {
                    f0 f0Var = (f0) atomicReferenceFieldUpdater.get(this);
                    if (f0Var.id >= iVar.id) {
                        return;
                    }
                    if (!iVar.q()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f0Var, iVar)) {
                        if (f0Var.m()) {
                            f0Var.k();
                            return;
                        }
                        return;
                    } else if (iVar.m()) {
                        iVar.k();
                    }
                }
            } else {
                iVar = iVar2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0(kotlinx.coroutines.o<? super h<? extends E>> oVar) {
        w7.v.a aVar = w7.v.Companion;
        oVar.resumeWith(w7.v.b(h.b(h.Companion.a(N()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(kotlinx.coroutines.o<? super E> oVar) {
        w7.v.a aVar = w7.v.Companion;
        oVar.resumeWith(w7.v.b(w.a(O())));
    }

    private final Object l0(E e2, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        t0 t0VarD;
        kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        e8.l<E, l0> lVar = this.onUndeliveredElement;
        if (lVar == null || (t0VarD = a0.d(lVar, e2, null, 2, null)) == null) {
            Throwable thQ = Q();
            w7.v.a aVar = w7.v.Companion;
            pVar.resumeWith(w7.v.b(w.a(thQ)));
        } else {
            w7.f.a(t0VarD, Q());
            w7.v.a aVar2 = w7.v.Companion;
            pVar.resumeWith(w7.v.b(w.a(t0VarD)));
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m0(E e2, kotlinx.coroutines.o<? super l0> oVar) {
        e8.l<E, l0> lVar = this.onUndeliveredElement;
        if (lVar != null) {
            a0.b(lVar, e2, oVar.getContext());
        }
        Throwable thQ = Q();
        w7.v.a aVar = w7.v.Companion;
        oVar.resumeWith(w7.v.b(w.a(thQ)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0(j3 j3Var, i<E> iVar, int i10) {
        j3Var.a(iVar, i10 + kotlinx.coroutines.channels.c.SEGMENT_SIZE);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ <E> Object s0(b<E> bVar, kotlin.coroutines.d<? super h<? extends E>> dVar) throws Throwable {
        d dVar2;
        i<E> iVar;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(bVar, dVar);
            }
        } else {
            dVar2 = new d(bVar, dVar);
        }
        d dVar3 = dVar2;
        Object obj = dVar3.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar3.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj);
            return ((h) obj).k();
        }
        w.b(obj);
        i<E> iVar2 = (i) receiveSegment$FU.get(bVar);
        while (!bVar.Y()) {
            long andIncrement = receivers$FU.getAndIncrement(bVar);
            int i12 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j6 = andIncrement / ((long) i12);
            int i13 = (int) (andIncrement % ((long) i12));
            if (iVar2.id != j6) {
                i<E> iVarK = bVar.K(j6, iVar2);
                if (iVarK == null) {
                    continue;
                } else {
                    iVar = iVarK;
                }
            } else {
                iVar = iVar2;
            }
            Object objG0 = bVar.G0(iVar, i13, andIncrement, null);
            if (objG0 == kotlinx.coroutines.channels.c.SUSPEND) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (objG0 != kotlinx.coroutines.channels.c.FAILED) {
                if (objG0 != kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                    iVar.b();
                    return h.Companion.c(objG0);
                }
                dVar3.label = 1;
                Object objT0 = bVar.t0(iVar, i13, andIncrement, dVar3);
                return objT0 == objE ? objE : objT0;
            }
            if (andIncrement < bVar.R()) {
                iVar.b();
            }
            iVar2 = iVar;
        }
        return h.Companion.a(bVar.N());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object t0(i<E> iVar, int i10, long j6, kotlin.coroutines.d<? super h<? extends E>> dVar) throws Throwable {
        e eVar;
        h hVarB;
        if (dVar instanceof e) {
            eVar = (e) dVar;
            int i11 = eVar.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                eVar.label = i11 - Integer.MIN_VALUE;
            } else {
                eVar = new e(this, dVar);
            }
        } else {
            eVar = new e(this, dVar);
        }
        Object objU = eVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = eVar.label;
        if (i12 == 0) {
            w.b(objU);
            eVar.L$0 = this;
            eVar.L$1 = iVar;
            eVar.I$0 = i10;
            eVar.J$0 = j6;
            eVar.label = 1;
            kotlinx.coroutines.p pVarB = kotlinx.coroutines.r.b(kotlin.coroutines.intrinsics.c.c(eVar));
            try {
                kotlin.jvm.internal.t.h(pVarB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$35>>");
                s sVar = new s(pVarB);
                Object objG0 = G0(iVar, i10, j6, sVar);
                if (objG0 != kotlinx.coroutines.channels.c.SUSPEND) {
                    e8.l<Throwable, l0> lVarA = null;
                    if (objG0 == kotlinx.coroutines.channels.c.FAILED) {
                        if (j6 < R()) {
                            iVar.b();
                        }
                        i iVar2 = (i) receiveSegment$FU.get(this);
                        while (true) {
                            if (Y()) {
                                j0(pVarB);
                                break;
                            }
                            long andIncrement = receivers$FU.getAndIncrement(this);
                            int i13 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
                            long j10 = andIncrement / ((long) i13);
                            int i14 = (int) (andIncrement % ((long) i13));
                            if (iVar2.id != j10) {
                                i iVarK = K(j10, iVar2);
                                if (iVarK != null) {
                                    iVar2 = iVarK;
                                }
                            }
                            Object objG1 = G0(iVar2, i14, andIncrement, sVar);
                            if (objG1 == kotlinx.coroutines.channels.c.SUSPEND) {
                                p0(sVar, iVar2, i14);
                                break;
                            }
                            if (objG1 == kotlinx.coroutines.channels.c.FAILED) {
                                if (andIncrement < R()) {
                                    iVar2.b();
                                }
                            } else {
                                if (objG1 == kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                iVar2.b();
                                hVarB = h.b(h.Companion.c(objG1));
                                e8.l<E, l0> lVar = this.onUndeliveredElement;
                                if (lVar != null) {
                                    lVarA = a0.a(lVar, objG1, pVarB.getContext());
                                }
                            }
                        }
                    } else {
                        iVar.b();
                        hVarB = h.b(h.Companion.c(objG0));
                        e8.l<E, l0> lVar2 = this.onUndeliveredElement;
                        if (lVar2 != null) {
                            lVarA = a0.a(lVar2, objG0, pVarB.getContext());
                        }
                    }
                    pVarB.B(hVarB, lVarA);
                    break;
                }
                p0(sVar, iVar, i10);
                objU = pVarB.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    kotlin.coroutines.jvm.internal.h.c(eVar);
                }
                if (objU == objE) {
                    return objE;
                }
            } catch (Throwable th) {
                pVarB.G();
                throw th;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(objU);
        }
        return ((h) objU).k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void v0(i<E> iVar) {
        e8.l<E, l0> lVar = this.onUndeliveredElement;
        t0 t0VarC = null;
        Object objB = kotlinx.coroutines.internal.o.b(null, 1, null);
        loop0: do {
            for (int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE - 1; -1 < i10; i10--) {
                long j6 = (iVar.id * ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE)) + ((long) i10);
                while (true) {
                    Object objW = iVar.w(i10);
                    if (objW == kotlinx.coroutines.channels.c.DONE_RCV) {
                        break loop0;
                    }
                    if (objW != kotlinx.coroutines.channels.c.BUFFERED) {
                        if (objW != kotlinx.coroutines.channels.c.IN_BUFFER && objW != null) {
                            if (!(objW instanceof j3) && !(objW instanceof v)) {
                                if (objW != kotlinx.coroutines.channels.c.RESUMING_BY_EB && objW != kotlinx.coroutines.channels.c.RESUMING_BY_RCV) {
                                    if (objW != kotlinx.coroutines.channels.c.RESUMING_BY_EB) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } else {
                                if (j6 < P()) {
                                    break loop0;
                                }
                                j3 j3Var = objW instanceof v ? ((v) objW).waiter : (j3) objW;
                                if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                                    if (lVar != null) {
                                        t0VarC = a0.c(lVar, iVar.v(i10), t0VarC);
                                    }
                                    objB = kotlinx.coroutines.internal.o.e(objB, j3Var);
                                    iVar.s(i10);
                                    iVar.p();
                                    break;
                                }
                            }
                        } else {
                            if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                                iVar.p();
                                break;
                            }
                        }
                    } else {
                        if (j6 < P()) {
                            break loop0;
                        }
                        if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.z())) {
                            if (lVar != null) {
                                t0VarC = a0.c(lVar, iVar.v(i10), t0VarC);
                            }
                            iVar.s(i10);
                            iVar.p();
                            break;
                        }
                    }
                }
            }
            iVar = (i) iVar.g();
        } while (iVar != null);
        if (objB != null) {
            if (objB instanceof ArrayList) {
                kotlin.jvm.internal.t.h(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                ArrayList arrayList = (ArrayList) objB;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    x0((j3) arrayList.get(size));
                }
            } else {
                x0((j3) objB);
            }
        }
        if (t0VarC != null) {
            throw t0VarC;
        }
    }

    private final void y0(j3 j3Var, boolean z6) {
        if (j3Var instanceof C0431b) {
            kotlinx.coroutines.o<Boolean> oVarB = ((C0431b) j3Var).b();
            w7.v.a aVar = w7.v.Companion;
            oVarB.resumeWith(w7.v.b(Boolean.FALSE));
            return;
        }
        if (j3Var instanceof kotlinx.coroutines.o) {
            kotlin.coroutines.d dVar = (kotlin.coroutines.d) j3Var;
            w7.v.a aVar2 = w7.v.Companion;
            dVar.resumeWith(w7.v.b(w.a(z6 ? O() : Q())));
        } else if (j3Var instanceof s) {
            kotlinx.coroutines.p<h<? extends E>> pVar = ((s) j3Var).cont;
            w7.v.a aVar3 = w7.v.Companion;
            pVar.resumeWith(w7.v.b(h.b(h.Companion.a(N()))));
        } else if (j3Var instanceof a) {
            ((a) j3Var).j();
        } else {
            if (j3Var instanceof kotlinx.coroutines.selects.b) {
                ((kotlinx.coroutines.selects.b) j3Var).c(this, kotlinx.coroutines.channels.c.z());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + j3Var).toString());
        }
    }

    public boolean A(@Nullable Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return D(th, true);
    }

    protected boolean D(@Nullable Throwable th, boolean z6) {
        if (z6) {
            e0();
        }
        boolean zA = androidx.concurrent.futures.a.a(_closeCause$FU, this, kotlinx.coroutines.channels.c.NO_CLOSE_CAUSE, th);
        if (z6) {
            f0();
        } else {
            g0();
        }
        G();
        i0();
        if (zA) {
            V();
        }
        return zA;
    }

    protected final void H(long j6) {
        t0 t0VarD;
        i<E> iVar = (i) receiveSegment$FU.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$FU;
            long j10 = atomicLongFieldUpdater.get(this);
            if (j6 < Math.max(((long) this.capacity) + j10, M())) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j10, j10 + 1)) {
                int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
                long j11 = j10 / ((long) i10);
                int i11 = (int) (j10 % ((long) i10));
                if (iVar.id != j11) {
                    i<E> iVarK = K(j11, iVar);
                    if (iVarK == null) {
                        continue;
                    } else {
                        iVar = iVarK;
                    }
                }
                Object objG0 = G0(iVar, i11, j10, null);
                if (objG0 != kotlinx.coroutines.channels.c.FAILED) {
                    iVar.b();
                    e8.l<E, l0> lVar = this.onUndeliveredElement;
                    if (lVar != null && (t0VarD = a0.d(lVar, objG0, null, 2, null)) != null) {
                        throw t0VarD;
                    }
                } else if (j10 < R()) {
                    iVar.b();
                }
            }
        }
    }

    @Nullable
    protected final Throwable N() {
        return (Throwable) _closeCause$FU.get(this);
    }

    public final long P() {
        return receivers$FU.get(this);
    }

    public final long R() {
        return sendersAndCloseStatus$FU.get(this) & 1152921504606846975L;
    }

    public final boolean S() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = receiveSegment$FU;
            i<E> iVarK = (i) atomicReferenceFieldUpdater.get(this);
            long jP = P();
            if (R() <= jP) {
                return false;
            }
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j6 = jP / ((long) i10);
            if (iVarK.id == j6 || (iVarK = K(j6, iVarK)) != null) {
                iVarK.b();
                if (W(iVarK, (int) (jP % ((long) i10)), jP)) {
                    return true;
                }
                receivers$FU.compareAndSet(this, jP, jP + 1);
            } else if (((i) atomicReferenceFieldUpdater.get(this)).id < j6) {
                return false;
            }
        }
    }

    public boolean Y() {
        return Z(sendersAndCloseStatus$FU.get(this));
    }

    @Override // kotlinx.coroutines.channels.t
    @NotNull
    public f<E> iterator() {
        return new a();
    }

    @Override // kotlinx.coroutines.channels.u
    @NotNull
    public Object p(E e2) {
        i iVar;
        if (B0(sendersAndCloseStatus$FU.get(this))) {
            return h.Companion.b();
        }
        Object obj = kotlinx.coroutines.channels.c.INTERRUPTED_SEND;
        i iVar2 = (i) sendSegment$FU.get(this);
        while (true) {
            long andIncrement = sendersAndCloseStatus$FU.getAndIncrement(this);
            long j6 = andIncrement & 1152921504606846975L;
            boolean zA0 = a0(andIncrement);
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j10 = j6 / ((long) i10);
            int i11 = (int) (j6 % ((long) i10));
            if (iVar2.id != j10) {
                i iVarL = L(j10, iVar2);
                if (iVarL != null) {
                    iVar = iVarL;
                } else if (zA0) {
                    break;
                }
            } else {
                iVar = iVar2;
            }
            int iI0 = I0(iVar, i11, e2, j6, obj, zA0);
            if (iI0 == 0) {
                iVar.b();
            } else if (iI0 != 1) {
                if (iI0 == 2) {
                    if (zA0) {
                        iVar.p();
                        break;
                    }
                    j3 j3Var = obj instanceof j3 ? (j3) obj : null;
                    if (j3Var != null) {
                        q0(j3Var, iVar, i11);
                    }
                    iVar.p();
                    return h.Companion.b();
                }
                if (iI0 == 3) {
                    throw new IllegalStateException("unexpected".toString());
                }
                if (iI0 == 4) {
                    if (j6 >= P()) {
                        break;
                    }
                    iVar.b();
                    break;
                }
                if (iI0 == 5) {
                    iVar.b();
                }
                iVar2 = iVar;
            }
            return h.Companion.c(l0.INSTANCE);
        }
        return h.Companion.a(Q());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.t
    @NotNull
    public Object q() {
        i iVar;
        long j6 = receivers$FU.get(this);
        long j10 = sendersAndCloseStatus$FU.get(this);
        if (Z(j10)) {
            return h.Companion.a(N());
        }
        if (j6 >= (j10 & 1152921504606846975L)) {
            return h.Companion.b();
        }
        Object obj = kotlinx.coroutines.channels.c.INTERRUPTED_RCV;
        i iVar2 = (i) receiveSegment$FU.get(this);
        while (!Y()) {
            long andIncrement = receivers$FU.getAndIncrement(this);
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j11 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (iVar2.id != j11) {
                i iVarK = K(j11, iVar2);
                if (iVarK == null) {
                    continue;
                } else {
                    iVar = iVarK;
                }
            } else {
                iVar = iVar2;
            }
            Object objG0 = G0(iVar, i11, andIncrement, obj);
            if (objG0 == kotlinx.coroutines.channels.c.SUSPEND) {
                j3 j3Var = obj instanceof j3 ? (j3) obj : null;
                if (j3Var != null) {
                    p0(j3Var, iVar, i11);
                }
                M0(andIncrement);
                iVar.p();
                return h.Companion.b();
            }
            if (objG0 != kotlinx.coroutines.channels.c.FAILED) {
                if (objG0 == kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                    throw new IllegalStateException("unexpected".toString());
                }
                iVar.b();
                return h.Companion.c(objG0);
            }
            if (andIncrement < R()) {
                iVar.b();
            }
            iVar2 = iVar;
        }
        return h.Companion.a(N());
    }

    @Override // kotlinx.coroutines.channels.u
    public boolean t() {
        return a0(sendersAndCloseStatus$FU.get(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public String toString() {
        String string;
        StringBuilder sb = new StringBuilder();
        int i10 = (int) (sendersAndCloseStatus$FU.get(this) >> 60);
        if (i10 == 2) {
            sb.append("closed,");
        } else if (i10 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.capacity + kotlinx.serialization.json.internal.b.COMMA);
        sb.append("data=[");
        int i11 = 0;
        List listP = kotlin.collections.v.p(receiveSegment$FU.get(this), sendSegment$FU.get(this), bufferEndSegment$FU.get(this));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listP) {
            if (((i) obj) != kotlinx.coroutines.channels.c.NULL_SEGMENT) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            long j6 = ((i) next).id;
            do {
                Object next2 = it.next();
                long j10 = ((i) next2).id;
                if (j6 > j10) {
                    next = next2;
                    j6 = j10;
                }
            } while (it.hasNext());
        }
        i iVar = (i) next;
        long jP = P();
        long jR = R();
        loop2: while (true) {
            int i12 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            for (int i13 = i11; i13 < i12; i13++) {
                long j11 = (iVar.id * ((long) kotlinx.coroutines.channels.c.SEGMENT_SIZE)) + ((long) i13);
                if (j11 >= jR && j11 >= jP) {
                    break loop2;
                }
                Object objW = iVar.w(i13);
                Object objV = iVar.v(i13);
                if (objW instanceof kotlinx.coroutines.o) {
                    string = (j11 >= jP || j11 < jR) ? (j11 >= jR || j11 < jP) ? "cont" : "send" : "receive";
                } else if (objW instanceof kotlinx.coroutines.selects.b) {
                    string = (j11 >= jP || j11 < jR) ? (j11 >= jR || j11 < jP) ? "select" : "onSend" : "onReceive";
                } else if (objW instanceof s) {
                    string = "receiveCatching";
                } else if (objW instanceof C0431b) {
                    string = "sendBroadcast";
                } else if (objW instanceof v) {
                    string = "EB(" + objW + ')';
                } else if (kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.RESUMING_BY_RCV) || kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.RESUMING_BY_EB)) {
                    string = "resuming_sender";
                } else {
                    if (objW != null && !kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.IN_BUFFER) && !kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.DONE_RCV) && !kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.POISONED) && !kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.INTERRUPTED_RCV) && !kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.INTERRUPTED_SEND) && !kotlin.jvm.internal.t.e(objW, kotlinx.coroutines.channels.c.z())) {
                        string = objW.toString();
                    }
                }
                if (objV != null) {
                    sb.append('(' + string + kotlinx.serialization.json.internal.b.COMMA + objV + "),");
                } else {
                    sb.append(string + kotlinx.serialization.json.internal.b.COMMA);
                }
            }
            iVar = (i) iVar.e();
            if (iVar == null) {
                break;
            }
            i11 = 0;
        }
        if (kotlin.text.w.h1(sb) == ',') {
            kotlin.jvm.internal.t.i(sb.deleteCharAt(sb.length() - 1), "this.deleteCharAt(index)");
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // kotlinx.coroutines.channels.u
    public void u(@NotNull e8.l<? super Throwable, l0> lVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = closeHandler$FU;
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, lVar)) {
            return;
        }
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != kotlinx.coroutines.channels.c.CLOSE_HANDLER_CLOSED) {
                if (obj == kotlinx.coroutines.channels.c.CLOSE_HANDLER_INVOKED) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(closeHandler$FU, this, kotlinx.coroutines.channels.c.CLOSE_HANDLER_CLOSED, kotlinx.coroutines.channels.c.CLOSE_HANDLER_INVOKED));
        lVar.invoke(N());
    }

    private final boolean B0(long j6) {
        if (a0(j6)) {
            return false;
        }
        return !z(j6 & 1152921504606846975L);
    }

    private final void E(long j6) {
        v0(F(j6));
    }

    private final boolean E0(i<E> iVar, int i10, long j6) {
        Object objW = iVar.w(i10);
        if ((objW instanceof j3) && j6 >= receivers$FU.get(this) && iVar.r(i10, objW, kotlinx.coroutines.channels.c.RESUMING_BY_EB)) {
            if (D0(objW, iVar, i10)) {
                iVar.A(i10, kotlinx.coroutines.channels.c.BUFFERED);
                return true;
            }
            iVar.A(i10, kotlinx.coroutines.channels.c.INTERRUPTED_SEND);
            iVar.x(i10, false);
            return false;
        }
        return F0(iVar, i10, j6);
    }

    private final i<E> F(long j6) {
        i<E> iVarC = C();
        if (b0()) {
            long jD0 = d0(iVarC);
            if (jD0 != -1) {
                H(jD0);
            }
        }
        B(iVarC, j6);
        return iVarC;
    }

    private final boolean F0(i<E> iVar, int i10, long j6) {
        while (true) {
            Object objW = iVar.w(i10);
            if (objW instanceof j3) {
                if (j6 < receivers$FU.get(this)) {
                    if (iVar.r(i10, objW, new v((j3) objW))) {
                        return true;
                    }
                } else if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.RESUMING_BY_EB)) {
                    if (D0(objW, iVar, i10)) {
                        iVar.A(i10, kotlinx.coroutines.channels.c.BUFFERED);
                        return true;
                    }
                    iVar.A(i10, kotlinx.coroutines.channels.c.INTERRUPTED_SEND);
                    iVar.x(i10, false);
                    return false;
                }
            } else {
                if (objW == kotlinx.coroutines.channels.c.INTERRUPTED_SEND) {
                    return false;
                }
                if (objW == null) {
                    if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.IN_BUFFER)) {
                        return true;
                    }
                } else {
                    if (objW == kotlinx.coroutines.channels.c.BUFFERED || objW == kotlinx.coroutines.channels.c.POISONED || objW == kotlinx.coroutines.channels.c.DONE_RCV || objW == kotlinx.coroutines.channels.c.INTERRUPTED_RCV || objW == kotlinx.coroutines.channels.c.z()) {
                        return true;
                    }
                    if (objW != kotlinx.coroutines.channels.c.RESUMING_BY_RCV) {
                        throw new IllegalStateException(("Unexpected cell state: " + objW).toString());
                    }
                }
            }
        }
    }

    private final void G() {
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object G0(i<E> iVar, int i10, long j6, Object obj) {
        Object objW = iVar.w(i10);
        if (objW == null) {
            if (j6 >= (sendersAndCloseStatus$FU.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER;
                }
                if (iVar.r(i10, objW, obj)) {
                    I();
                    return kotlinx.coroutines.channels.c.SUSPEND;
                }
            }
        } else if (objW == kotlinx.coroutines.channels.c.BUFFERED && iVar.r(i10, objW, kotlinx.coroutines.channels.c.DONE_RCV)) {
            I();
            return iVar.y(i10);
        }
        return H0(iVar, i10, j6, obj);
    }

    private final Object H0(i<E> iVar, int i10, long j6, Object obj) {
        while (true) {
            Object objW = iVar.w(i10);
            if (objW != null && objW != kotlinx.coroutines.channels.c.IN_BUFFER) {
                if (objW == kotlinx.coroutines.channels.c.BUFFERED) {
                    if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.DONE_RCV)) {
                        I();
                        return iVar.y(i10);
                    }
                } else {
                    if (objW != kotlinx.coroutines.channels.c.INTERRUPTED_SEND && objW != kotlinx.coroutines.channels.c.POISONED) {
                        if (objW == kotlinx.coroutines.channels.c.z()) {
                            I();
                            return kotlinx.coroutines.channels.c.FAILED;
                        }
                        if (objW != kotlinx.coroutines.channels.c.RESUMING_BY_EB && iVar.r(i10, objW, kotlinx.coroutines.channels.c.RESUMING_BY_RCV)) {
                            boolean z6 = objW instanceof v;
                            if (z6) {
                                objW = ((v) objW).waiter;
                            }
                            if (D0(objW, iVar, i10)) {
                                iVar.A(i10, kotlinx.coroutines.channels.c.DONE_RCV);
                                I();
                                return iVar.y(i10);
                            }
                            iVar.A(i10, kotlinx.coroutines.channels.c.INTERRUPTED_SEND);
                            iVar.x(i10, false);
                            if (z6) {
                                I();
                            }
                            return kotlinx.coroutines.channels.c.FAILED;
                        }
                    }
                    return kotlinx.coroutines.channels.c.FAILED;
                }
            } else if (j6 < (sendersAndCloseStatus$FU.get(this) & 1152921504606846975L)) {
                if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.POISONED)) {
                    I();
                    return kotlinx.coroutines.channels.c.FAILED;
                }
            } else {
                if (obj == null) {
                    return kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER;
                }
                if (iVar.r(i10, objW, obj)) {
                    I();
                    return kotlinx.coroutines.channels.c.SUSPEND;
                }
            }
        }
    }

    private final void I() {
        if (c0()) {
            return;
        }
        i<E> iVar = (i) bufferEndSegment$FU.get(this);
        while (true) {
            long andIncrement = bufferEnd$FU.getAndIncrement(this);
            int i10 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
            long j6 = andIncrement / ((long) i10);
            if (R() <= andIncrement) {
                if (iVar.id < j6 && iVar.e() != 0) {
                    h0(j6, iVar);
                }
                U(this, 0L, 1, null);
                return;
            }
            if (iVar.id != j6) {
                i<E> iVarJ = J(j6, iVar, andIncrement);
                if (iVarJ == null) {
                    continue;
                } else {
                    iVar = iVarJ;
                }
            }
            if (E0(iVar, (int) (andIncrement % ((long) i10)), andIncrement)) {
                U(this, 0L, 1, null);
                return;
            }
            U(this, 0L, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int I0(i<E> iVar, int i10, E e2, long j6, Object obj, boolean z6) {
        iVar.B(i10, e2);
        if (z6) {
            return J0(iVar, i10, e2, j6, obj, z6);
        }
        Object objW = iVar.w(i10);
        if (objW == null) {
            if (z(j6)) {
                if (iVar.r(i10, null, kotlinx.coroutines.channels.c.BUFFERED)) {
                    return 1;
                }
            } else {
                if (obj == null) {
                    return 3;
                }
                if (iVar.r(i10, null, obj)) {
                    return 2;
                }
            }
        } else if (objW instanceof j3) {
            iVar.s(i10);
            if (C0(objW, e2)) {
                iVar.A(i10, kotlinx.coroutines.channels.c.DONE_RCV);
                n0();
                return 0;
            }
            if (iVar.t(i10, kotlinx.coroutines.channels.c.INTERRUPTED_RCV) != kotlinx.coroutines.channels.c.INTERRUPTED_RCV) {
                iVar.x(i10, true);
            }
            return 5;
        }
        return J0(iVar, i10, e2, j6, obj, z6);
    }

    private final int J0(i<E> iVar, int i10, E e2, long j6, Object obj, boolean z6) {
        while (true) {
            Object objW = iVar.w(i10);
            if (objW == null) {
                if (z(j6) && !z6) {
                    if (iVar.r(i10, null, kotlinx.coroutines.channels.c.BUFFERED)) {
                        return 1;
                    }
                } else if (z6) {
                    if (iVar.r(i10, null, kotlinx.coroutines.channels.c.INTERRUPTED_SEND)) {
                        iVar.x(i10, false);
                        return 4;
                    }
                } else {
                    if (obj == null) {
                        return 3;
                    }
                    if (iVar.r(i10, null, obj)) {
                        return 2;
                    }
                }
            } else if (objW == kotlinx.coroutines.channels.c.IN_BUFFER) {
                if (iVar.r(i10, objW, kotlinx.coroutines.channels.c.BUFFERED)) {
                    return 1;
                }
            } else {
                if (objW == kotlinx.coroutines.channels.c.INTERRUPTED_RCV) {
                    iVar.s(i10);
                    return 5;
                }
                if (objW == kotlinx.coroutines.channels.c.POISONED) {
                    iVar.s(i10);
                    return 5;
                }
                if (objW == kotlinx.coroutines.channels.c.z()) {
                    iVar.s(i10);
                    G();
                    return 4;
                }
                iVar.s(i10);
                if (objW instanceof v) {
                    objW = ((v) objW).waiter;
                }
                if (C0(objW, e2)) {
                    iVar.A(i10, kotlinx.coroutines.channels.c.DONE_RCV);
                    n0();
                    return 0;
                }
                if (iVar.t(i10, kotlinx.coroutines.channels.c.INTERRUPTED_RCV) != kotlinx.coroutines.channels.c.INTERRUPTED_RCV) {
                    iVar.x(i10, true);
                }
                return 5;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable O() {
        Throwable thN = N();
        if (thN == null) {
            return new m(j.DEFAULT_CLOSE_MESSAGE);
        }
        return thN;
    }

    private final boolean W(i<E> iVar, int i10, long j6) {
        Object objW;
        do {
            objW = iVar.w(i10);
            if (objW != null && objW != kotlinx.coroutines.channels.c.IN_BUFFER) {
                if (objW == kotlinx.coroutines.channels.c.BUFFERED) {
                    return true;
                }
                if (objW == kotlinx.coroutines.channels.c.INTERRUPTED_SEND || objW == kotlinx.coroutines.channels.c.z() || objW == kotlinx.coroutines.channels.c.DONE_RCV || objW == kotlinx.coroutines.channels.c.POISONED) {
                    return false;
                }
                if (objW == kotlinx.coroutines.channels.c.RESUMING_BY_EB) {
                    return true;
                }
                if (objW == kotlinx.coroutines.channels.c.RESUMING_BY_RCV || j6 != P()) {
                    return false;
                }
                return true;
            }
        } while (!iVar.r(i10, objW, kotlinx.coroutines.channels.c.POISONED));
        I();
        return false;
    }

    private final boolean c0() {
        long jM = M();
        if (jM != 0 && jM != Long.MAX_VALUE) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0(j3 j3Var, i<E> iVar, int i10) {
        o0();
        j3Var.a(iVar, i10);
    }

    private final Object u0(i<E> iVar, int i10, long j6, kotlin.coroutines.d<? super E> dVar) throws Throwable {
        kotlinx.coroutines.p pVarB = kotlinx.coroutines.r.b(kotlin.coroutines.intrinsics.c.c(dVar));
        try {
            Object objG0 = G0(iVar, i10, j6, pVarB);
            if (objG0 == kotlinx.coroutines.channels.c.SUSPEND) {
                p0(pVarB, iVar, i10);
            } else {
                e8.l<Throwable, l0> lVarA = null;
                lVarA = null;
                kotlinx.coroutines.p pVar = null;
                if (objG0 == kotlinx.coroutines.channels.c.FAILED) {
                    if (j6 < R()) {
                        iVar.b();
                    }
                    i iVar2 = (i) receiveSegment$FU.get(this);
                    while (true) {
                        if (Y()) {
                            k0(pVarB);
                            break;
                        }
                        long andIncrement = receivers$FU.getAndIncrement(this);
                        int i11 = kotlinx.coroutines.channels.c.SEGMENT_SIZE;
                        long j10 = andIncrement / ((long) i11);
                        int i12 = (int) (andIncrement % ((long) i11));
                        if (iVar2.id != j10) {
                            i iVarK = K(j10, iVar2);
                            if (iVarK != null) {
                                iVar2 = iVarK;
                            }
                        }
                        objG0 = G0(iVar2, i12, andIncrement, pVarB);
                        if (objG0 == kotlinx.coroutines.channels.c.SUSPEND) {
                            if (pVarB instanceof j3) {
                                pVar = pVarB;
                            }
                            if (pVar == null) {
                                break;
                            }
                            p0(pVar, iVar2, i12);
                            break;
                        }
                        if (objG0 == kotlinx.coroutines.channels.c.FAILED) {
                            if (andIncrement < R()) {
                                iVar2.b();
                            }
                        } else if (objG0 != kotlinx.coroutines.channels.c.SUSPEND_NO_WAITER) {
                            iVar2.b();
                            e8.l<E, l0> lVar = this.onUndeliveredElement;
                            if (lVar != null) {
                                lVarA = a0.a(lVar, objG0, pVarB.getContext());
                            }
                        } else {
                            throw new IllegalStateException("unexpected".toString());
                        }
                    }
                } else {
                    iVar.b();
                    e8.l<E, l0> lVar2 = this.onUndeliveredElement;
                    if (lVar2 != null) {
                        lVarA = a0.a(lVar2, objG0, pVarB.getContext());
                    }
                }
                pVarB.B(objG0, lVarA);
                break;
            }
            Object objU = pVarB.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU;
        } catch (Throwable th) {
            pVarB.G();
            throw th;
        }
    }

    private final boolean z(long j6) {
        if (j6 >= M() && j6 >= P() + ((long) this.capacity)) {
            return false;
        }
        return true;
    }

    public final void M0(long j6) {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        boolean z6;
        long j11;
        if (c0()) {
            return;
        }
        while (M() <= j6) {
        }
        int i10 = kotlinx.coroutines.channels.c.EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS;
        for (int i11 = 0; i11 < i10; i11++) {
            long jM = M();
            if (jM == (k8.d.MAX_MILLIS & completedExpandBuffersAndPauseFlag$FU.get(this)) && jM == M()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = completedExpandBuffersAndPauseFlag$FU;
        do {
            j10 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j10, kotlinx.coroutines.channels.c.v(j10 & k8.d.MAX_MILLIS, true)));
        while (true) {
            long jM2 = M();
            atomicLongFieldUpdater = completedExpandBuffersAndPauseFlag$FU;
            long j12 = atomicLongFieldUpdater.get(this);
            long j13 = j12 & k8.d.MAX_MILLIS;
            if ((com.google.common.primitives.g.MAX_POWER_OF_TWO & j12) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (jM2 == j13 && jM2 == M()) {
                break;
            } else if (!z6) {
                atomicLongFieldUpdater.compareAndSet(this, j12, kotlinx.coroutines.channels.c.v(j13, true));
            }
        }
        do {
            j11 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, kotlinx.coroutines.channels.c.v(j11 & k8.d.MAX_MILLIS, false)));
    }

    @NotNull
    protected final Throwable Q() {
        Throwable thN = N();
        if (thN == null) {
            return new n(j.DEFAULT_CLOSE_MESSAGE);
        }
        return thN;
    }

    @Override // kotlinx.coroutines.channels.t
    public final void b(@Nullable CancellationException cancellationException) {
        A(cancellationException);
    }

    public /* synthetic */ b(int i10, e8.l lVar, int i11, kotlin.jvm.internal.k kVar) {
        this(i10, (i11 & 2) != 0 ? null : lVar);
    }
}
