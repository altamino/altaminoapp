package kotlinx.coroutines;

import com.narvii.util.statistics.constants.EventConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class j2 implements b2, w, s2 {

    @Nullable
    private volatile Object _parentHandle;

    @Nullable
    private volatile Object _state;

    @NotNull
    private static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(j2.class, Object.class, "_state");

    @NotNull
    private static final AtomicReferenceFieldUpdater _parentHandle$FU = AtomicReferenceFieldUpdater.newUpdater(j2.class, Object.class, "_parentHandle");

    private static final class a<T> extends p<T> {

        @NotNull
        private final j2 job;

        public a(@NotNull kotlin.coroutines.d<? super T> dVar, @NotNull j2 j2Var) {
            super(dVar, 1);
            this.job = j2Var;
        }

        @Override // kotlinx.coroutines.p
        @NotNull
        protected String E() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.p
        @NotNull
        public Throwable s(@NotNull b2 b2Var) {
            Throwable thE;
            Object objN0 = this.job.n0();
            if (!(objN0 instanceof c) || (thE = ((c) objN0).e()) == null) {
                return objN0 instanceof c0 ? ((c0) objN0).cause : b2Var.b0();
            }
            return thE;
        }
    }

    private static final class b extends i2 {

        @NotNull
        private final v child;

        @NotNull
        private final j2 parent;

        @Nullable
        private final Object proposedUpdate;

        @NotNull
        private final c state;

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
            r(th);
            return w7.l0.INSTANCE;
        }

        @Override // kotlinx.coroutines.e0
        public void r(@Nullable Throwable th) {
            this.parent.Y(this.state, this.child, this.proposedUpdate);
        }

        public b(@NotNull j2 j2Var, @NotNull c cVar, @NotNull v vVar, @Nullable Object obj) {
            this.parent = j2Var;
            this.state = cVar;
            this.child = vVar;
            this.proposedUpdate = obj;
        }
    }

    private static final class c implements v1 {

        @Nullable
        private volatile Object _exceptionsHolder;
        private volatile int _isCompleting;

        @Nullable
        private volatile Object _rootCause;

        @NotNull
        private final o2 list;

        @NotNull
        private static final AtomicIntegerFieldUpdater _isCompleting$FU = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting");

        @NotNull
        private static final AtomicReferenceFieldUpdater _rootCause$FU = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause");

        @NotNull
        private static final AtomicReferenceFieldUpdater _exceptionsHolder$FU = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder");

        @Override // kotlinx.coroutines.v1
        @NotNull
        public o2 a() {
            return this.list;
        }

        private final ArrayList<Throwable> c() {
            return new ArrayList<>(4);
        }

        private final Object d() {
            return _exceptionsHolder$FU.get(this);
        }

        private final void k(Object obj) {
            _exceptionsHolder$FU.set(this, obj);
        }

        @Nullable
        public final Throwable e() {
            return (Throwable) _rootCause$FU.get(this);
        }

        public final boolean g() {
            return _isCompleting$FU.get(this) != 0;
        }

        public final void j(boolean z6) {
            _isCompleting$FU.set(this, z6 ? 1 : 0);
        }

        public final void l(@Nullable Throwable th) {
            _rootCause$FU.set(this, th);
        }

        @NotNull
        public String toString() {
            return "Finishing[cancelling=" + f() + ", completing=" + g() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + a() + kotlinx.serialization.json.internal.b.END_LIST;
        }

        public c(@NotNull o2 o2Var, boolean z6, @Nullable Throwable th) {
            this.list = o2Var;
            this._isCompleting = z6 ? 1 : 0;
            this._rootCause = th;
        }

        public final void b(@NotNull Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                l(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                k(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList<Throwable> arrayListC = c();
                arrayListC.add(objD);
                arrayListC.add(th);
                k(arrayListC);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        public final boolean f() {
            if (e() != null) {
                return true;
            }
            return false;
        }

        public final boolean h() {
            if (d() == k2.SEALED) {
                return true;
            }
            return false;
        }

        @NotNull
        public final List<Throwable> i(@Nullable Throwable th) {
            ArrayList<Throwable> arrayListC;
            Object objD = d();
            if (objD == null) {
                arrayListC = c();
            } else if (objD instanceof Throwable) {
                ArrayList<Throwable> arrayListC2 = c();
                arrayListC2.add(objD);
                arrayListC = arrayListC2;
            } else if (objD instanceof ArrayList) {
                arrayListC = (ArrayList) objD;
            } else {
                throw new IllegalStateException(("State is " + objD).toString());
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListC.add(0, thE);
            }
            if (th != null && !kotlin.jvm.internal.t.e(th, thE)) {
                arrayListC.add(th);
            }
            k(k2.SEALED);
            return arrayListC;
        }

        @Override // kotlinx.coroutines.v1
        public boolean isActive() {
            if (e() == null) {
                return true;
            }
            return false;
        }
    }

    public static final class d extends kotlinx.coroutines.internal.t.a {
        final /* synthetic */ Object $expect$inlined;
        final /* synthetic */ j2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlinx.coroutines.internal.t tVar, j2 j2Var, Object obj) {
            super(tVar);
            this.this$0 = j2Var;
            this.$expect$inlined = obj;
        }

        @Override // kotlinx.coroutines.internal.b
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Object d(@NotNull kotlinx.coroutines.internal.t tVar) {
            if (this.this$0.n0() == this.$expect$inlined) {
                return null;
            }
            return kotlinx.coroutines.internal.s.a();
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {956, 958}, m = "invokeSuspend")
    static final class e extends kotlin.coroutines.jvm.internal.k implements e8.p<kotlin.sequences.i<? super b2>, kotlin.coroutines.d<? super w7.l0>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        e(kotlin.coroutines.d<? super e> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            e eVar = j2.this.new e(dVar);
            eVar.L$0 = obj;
            return eVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull kotlin.sequences.i<? super b2> iVar, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            return ((e) create(iVar, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x006b  */
        /* JADX WARN: Code duplicated, block: B:24:0x006f  */
        /* JADX WARN: Code duplicated, block: B:26:0x0082 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006d -> B:27:0x0083). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0080 -> B:27:0x0083). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r7.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L27
                if (r1 != r2) goto L1f
                java.lang.Object r1 = r7.L$2
                kotlinx.coroutines.internal.t r1 = (kotlinx.coroutines.internal.t) r1
                java.lang.Object r3 = r7.L$1
                kotlinx.coroutines.internal.r r3 = (kotlinx.coroutines.internal.r) r3
                java.lang.Object r4 = r7.L$0
                kotlin.sequences.i r4 = (kotlin.sequences.i) r4
                w7.w.b(r8)
                r8 = r7
                goto L83
            L1f:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L27:
                w7.w.b(r8)
                goto L88
            L2b:
                w7.w.b(r8)
                java.lang.Object r8 = r7.L$0
                kotlin.sequences.i r8 = (kotlin.sequences.i) r8
                kotlinx.coroutines.j2 r1 = kotlinx.coroutines.j2.this
                java.lang.Object r1 = r1.n0()
                boolean r4 = r1 instanceof kotlinx.coroutines.v
                if (r4 == 0) goto L49
                kotlinx.coroutines.v r1 = (kotlinx.coroutines.v) r1
                kotlinx.coroutines.w r1 = r1.childJob
                r7.label = r3
                java.lang.Object r8 = r8.a(r1, r7)
                if (r8 != r0) goto L88
                return r0
            L49:
                boolean r3 = r1 instanceof kotlinx.coroutines.v1
                if (r3 == 0) goto L88
                kotlinx.coroutines.v1 r1 = (kotlinx.coroutines.v1) r1
                kotlinx.coroutines.o2 r1 = r1.a()
                if (r1 == 0) goto L88
                java.lang.Object r3 = r1.i()
                java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
                kotlin.jvm.internal.t.h(r3, r4)
                kotlinx.coroutines.internal.t r3 = (kotlinx.coroutines.internal.t) r3
                r4 = r8
                r8 = r7
                r6 = r3
                r3 = r1
                r1 = r6
            L65:
                boolean r5 = kotlin.jvm.internal.t.e(r1, r3)
                if (r5 != 0) goto L88
                boolean r5 = r1 instanceof kotlinx.coroutines.v
                if (r5 == 0) goto L83
                r5 = r1
                kotlinx.coroutines.v r5 = (kotlinx.coroutines.v) r5
                kotlinx.coroutines.w r5 = r5.childJob
                r8.L$0 = r4
                r8.L$1 = r3
                r8.L$2 = r1
                r8.label = r2
                java.lang.Object r5 = r4.a(r5, r8)
                if (r5 != r0) goto L83
                return r0
            L83:
                kotlinx.coroutines.internal.t r1 = r1.j()
                goto L65
            L88:
                w7.l0 r8 = w7.l0.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.j2.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Object v0(Object obj) throws Throwable {
        Throwable thA0 = null;
        while (true) {
            Object objN0 = n0();
            if (objN0 instanceof c) {
                synchronized (objN0) {
                    if (((c) objN0).h()) {
                        return k2.TOO_LATE_TO_CANCEL;
                    }
                    boolean zF = ((c) objN0).f();
                    if (obj != null || !zF) {
                        if (thA0 == null) {
                            thA0 = a0(obj);
                        }
                        ((c) objN0).b(thA0);
                    }
                    Throwable thE = zF ^ true ? ((c) objN0).e() : null;
                    if (thE != null) {
                        C0(((c) objN0).a(), thE);
                    }
                    return k2.COMPLETING_ALREADY;
                }
            }
            if (!(objN0 instanceof v1)) {
                return k2.TOO_LATE_TO_CANCEL;
            }
            if (thA0 == null) {
                thA0 = a0(obj);
            }
            v1 v1Var = (v1) objN0;
            if (!v1Var.isActive()) {
                Object objT0 = T0(objN0, new c0(thA0, false, 2, null));
                if (objT0 == k2.COMPLETING_ALREADY) {
                    throw new IllegalStateException(("Cannot happen in " + objN0).toString());
                }
                if (objT0 != k2.COMPLETING_RETRY) {
                    return objT0;
                }
            } else if (S0(v1Var, thA0)) {
                return k2.COMPLETING_ALREADY;
            }
        }
    }

    private final i2 z0(e8.l<? super Throwable, w7.l0> lVar, boolean z6) {
        i2 a2Var;
        if (z6) {
            a2Var = lVar instanceof d2 ? (d2) lVar : null;
            if (a2Var == null) {
                a2Var = new z1(lVar);
            }
        } else {
            a2Var = lVar instanceof i2 ? (i2) lVar : null;
            if (a2Var == null) {
                a2Var = new a2(lVar);
            }
        }
        a2Var.v(this);
        return a2Var;
    }

    protected void C(@Nullable Object obj) {
    }

    protected void F0(@Nullable Throwable th) {
    }

    protected void G0(@Nullable Object obj) {
    }

    protected void H0() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String P() {
        return "Job was cancelled";
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public final u Q(@NotNull w wVar) {
        g1 g1VarD = b2.a.d(this, true, false, new v(wVar), 2, null);
        kotlin.jvm.internal.t.h(g1VarD, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (u) g1VarD;
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public final g1 U(@NotNull e8.l<? super Throwable, w7.l0> lVar) {
        return O(false, true, lVar);
    }

    @Override // kotlin.coroutines.g.b
    @NotNull
    public final kotlin.coroutines.g.c<?> getKey() {
        return b2.Key;
    }

    public boolean i0() {
        return true;
    }

    public boolean j0() {
        return false;
    }

    protected boolean o0(@NotNull Throwable th) {
        return false;
    }

    public void p0(@NotNull Throwable th) throws Throwable {
        throw th;
    }

    protected boolean r0() {
        return false;
    }

    private final Object E(kotlin.coroutines.d<Object> dVar) throws Throwable {
        a aVar = new a(kotlin.coroutines.intrinsics.c.c(dVar), this);
        aVar.x();
        r.a(aVar, U(new t2(aVar)));
        Object objU = aVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    private final void I0(j1 j1Var) {
        o2 o2Var = new o2();
        Object u1Var = o2Var;
        if (!j1Var.isActive()) {
            u1Var = new u1(o2Var);
        }
        androidx.concurrent.futures.a.a(_state$FU, this, j1Var, u1Var);
    }

    private final void J0(i2 i2Var) {
        i2Var.e(new o2());
        androidx.concurrent.futures.a.a(_state$FU, this, i2Var, i2Var.j());
    }

    private final int M0(Object obj) {
        if (obj instanceof j1) {
            if (((j1) obj).isActive()) {
                return 0;
            }
            if (!androidx.concurrent.futures.a.a(_state$FU, this, obj, k2.EMPTY_ACTIVE)) {
                return -1;
            }
            H0();
            return 1;
        }
        if (!(obj instanceof u1)) {
            return 0;
        }
        if (!androidx.concurrent.futures.a.a(_state$FU, this, obj, ((u1) obj).a())) {
            return -1;
        }
        H0();
        return 1;
    }

    private final String N0(Object obj) {
        if (!(obj instanceof c)) {
            if (obj instanceof v1) {
                return ((v1) obj).isActive() ? "Active" : EventConstants.CommentPost.NEW;
            }
            return obj instanceof c0 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        if (cVar.f()) {
            return "Cancelling";
        }
        return cVar.g() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException P0(j2 j2Var, Throwable th, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return j2Var.O0(th, str);
    }

    private final boolean R0(v1 v1Var, Object obj) throws Throwable {
        if (!androidx.concurrent.futures.a.a(_state$FU, this, v1Var, k2.g(obj))) {
            return false;
        }
        F0(null);
        G0(obj);
        X(v1Var, obj);
        return true;
    }

    private final Object T0(Object obj, Object obj2) {
        if (!(obj instanceof v1)) {
            return k2.COMPLETING_ALREADY;
        }
        if ((!(obj instanceof j1) && !(obj instanceof i2)) || (obj instanceof v) || (obj2 instanceof c0)) {
            return U0((v1) obj, obj2);
        }
        return R0((v1) obj, obj2) ? obj2 : k2.COMPLETING_RETRY;
    }

    private final boolean V0(c cVar, v vVar, Object obj) {
        while (b2.a.d(vVar.childJob, false, false, new b(this, cVar, vVar, obj), 1, null) == q2.INSTANCE) {
            vVar = B0(vVar);
            if (vVar == null) {
                return false;
            }
        }
        return true;
    }

    private final Throwable a0(Object obj) {
        if (obj == null || (obj instanceof Throwable)) {
            Throwable th = (Throwable) obj;
            return th == null ? new c2(P(), null, this) : th;
        }
        kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((s2) obj).k0();
    }

    private final Object c0(c cVar, Object obj) throws Throwable {
        boolean zF;
        Throwable thH0;
        c0 c0Var = obj instanceof c0 ? (c0) obj : null;
        Throwable th = c0Var != null ? c0Var.cause : null;
        synchronized (cVar) {
            zF = cVar.f();
            List<Throwable> listI = cVar.i(th);
            thH0 = h0(cVar, listI);
            if (thH0 != null) {
                A(thH0, listI);
            }
        }
        if (thH0 != null && thH0 != th) {
            obj = new c0(thH0, false, 2, null);
        }
        if (thH0 != null && (N(thH0) || o0(thH0))) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            ((c0) obj).b();
        }
        if (!zF) {
            F0(thH0);
        }
        G0(obj);
        androidx.concurrent.futures.a.a(_state$FU, this, cVar, k2.g(obj));
        X(cVar, obj);
        return obj;
    }

    private final v d0(v1 v1Var) {
        v vVar = v1Var instanceof v ? (v) v1Var : null;
        if (vVar != null) {
            return vVar;
        }
        o2 o2VarA = v1Var.a();
        if (o2VarA != null) {
            return B0(o2VarA);
        }
        return null;
    }

    private final Throwable f0(Object obj) {
        c0 c0Var = obj instanceof c0 ? (c0) obj : null;
        if (c0Var != null) {
            return c0Var.cause;
        }
        return null;
    }

    private final Object u0(kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        r.a(pVar, U(new u2(pVar)));
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : w7.l0.INSTANCE;
    }

    private final boolean z(Object obj, o2 o2Var, i2 i2Var) {
        int iQ;
        d dVar = new d(i2Var, this, obj);
        do {
            iQ = o2Var.k().q(i2Var, o2Var, dVar);
            if (iQ == 1) {
                return true;
            }
        } while (iQ != 2);
        return false;
    }

    public final void L0(@Nullable u uVar) {
        _parentHandle$FU.set(this, uVar);
    }

    @NotNull
    protected final CancellationException O0(@NotNull Throwable th, @Nullable String str) {
        CancellationException c2Var = th instanceof CancellationException ? (CancellationException) th : null;
        if (c2Var == null) {
            if (str == null) {
                str = P();
            }
            c2Var = new c2(str, th, this);
        }
        return c2Var;
    }

    @NotNull
    public final String Q0() {
        return A0() + kotlinx.serialization.json.internal.b.BEGIN_OBJ + N0(n0()) + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public boolean W(@NotNull Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return H(th) && i0();
    }

    @Override // kotlinx.coroutines.b2
    public void b(@Nullable CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new c2(P(), null, this);
        }
        I(cancellationException);
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public final kotlin.sequences.g<b2> getChildren() {
        return kotlin.sequences.k.b(new e(null));
    }

    @Nullable
    public final u m0() {
        return (u) _parentHandle$FU.get(this);
    }

    @Nullable
    public final Object n0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof kotlinx.coroutines.internal.b0)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.b0) obj).a(this);
        }
    }

    protected final void q0(@Nullable b2 b2Var) {
        if (b2Var == null) {
            L0(q2.INSTANCE);
            return;
        }
        b2Var.start();
        u uVarQ = b2Var.Q(this);
        L0(uVarQ);
        if (m()) {
            uVarQ.t();
            L0(q2.INSTANCE);
        }
    }

    @NotNull
    public String toString() {
        return Q0() + '@' + s0.b(this);
    }

    public j2(boolean z6) {
        this._state = z6 ? k2.EMPTY_ACTIVE : k2.EMPTY_NEW;
    }

    private final void A(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        for (Throwable th2 : list) {
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                w7.f.a(th, th2);
            }
        }
    }

    private final v B0(kotlinx.coroutines.internal.t tVar) {
        while (tVar.l()) {
            tVar = tVar.k();
        }
        while (true) {
            tVar = tVar.j();
            if (!tVar.l()) {
                if (tVar instanceof v) {
                    return (v) tVar;
                }
                if (tVar instanceof o2) {
                    return null;
                }
            }
        }
    }

    private final void C0(o2 o2Var, Throwable th) throws Throwable {
        F0(th);
        Object objI = o2Var.i();
        kotlin.jvm.internal.t.h(objI, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        f0 f0Var = null;
        for (kotlinx.coroutines.internal.t tVarJ = (kotlinx.coroutines.internal.t) objI; !kotlin.jvm.internal.t.e(tVarJ, o2Var); tVarJ = tVarJ.j()) {
            if (tVarJ instanceof d2) {
                i2 i2Var = (i2) tVarJ;
                try {
                    i2Var.r(th);
                } catch (Throwable th2) {
                    if (f0Var != null) {
                        w7.f.a(f0Var, th2);
                    } else {
                        f0Var = new f0("Exception in completion handler " + i2Var + " for " + this, th2);
                        w7.l0 l0Var = w7.l0.INSTANCE;
                    }
                }
            }
        }
        if (f0Var != null) {
            p0(f0Var);
        }
        N(th);
    }

    private final void D0(o2 o2Var, Throwable th) throws Throwable {
        Object objI = o2Var.i();
        kotlin.jvm.internal.t.h(objI, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        f0 f0Var = null;
        for (kotlinx.coroutines.internal.t tVarJ = (kotlinx.coroutines.internal.t) objI; !kotlin.jvm.internal.t.e(tVarJ, o2Var); tVarJ = tVarJ.j()) {
            if (tVarJ instanceof i2) {
                i2 i2Var = (i2) tVarJ;
                try {
                    i2Var.r(th);
                } catch (Throwable th2) {
                    if (f0Var != null) {
                        w7.f.a(f0Var, th2);
                    } else {
                        f0Var = new f0("Exception in completion handler " + i2Var + " for " + this, th2);
                        w7.l0 l0Var = w7.l0.INSTANCE;
                    }
                }
            }
        }
        if (f0Var != null) {
            p0(f0Var);
        }
    }

    private final Object J(Object obj) {
        Object objT0;
        do {
            Object objN0 = n0();
            if (!(objN0 instanceof v1) || ((objN0 instanceof c) && ((c) objN0).g())) {
                return k2.COMPLETING_ALREADY;
            }
            objT0 = T0(objN0, new c0(a0(obj), false, 2, null));
        } while (objT0 == k2.COMPLETING_RETRY);
        return objT0;
    }

    private final boolean N(Throwable th) {
        if (r0()) {
            return true;
        }
        boolean z6 = th instanceof CancellationException;
        u uVarM0 = m0();
        if (uVarM0 != null && uVarM0 != q2.INSTANCE) {
            if (uVarM0.b(th) || z6) {
                return true;
            }
            return false;
        }
        return z6;
    }

    private final boolean S0(v1 v1Var, Throwable th) throws Throwable {
        o2 o2VarL0 = l0(v1Var);
        if (o2VarL0 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.a.a(_state$FU, this, v1Var, new c(o2VarL0, false, th))) {
            return false;
        }
        C0(o2VarL0, th);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    private final Object U0(v1 v1Var, Object obj) throws Throwable {
        c cVar;
        c0 c0Var;
        o2 o2VarL0 = l0(v1Var);
        if (o2VarL0 == null) {
            return k2.COMPLETING_RETRY;
        }
        ?? r5 = 0;
        if (v1Var instanceof c) {
            cVar = (c) v1Var;
        } else {
            cVar = null;
        }
        if (cVar == null) {
            cVar = new c(o2VarL0, false, null);
        }
        kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        synchronized (cVar) {
            if (cVar.g()) {
                return k2.COMPLETING_ALREADY;
            }
            cVar.j(true);
            if (cVar != v1Var && !androidx.concurrent.futures.a.a(_state$FU, this, v1Var, cVar)) {
                return k2.COMPLETING_RETRY;
            }
            boolean zF = cVar.f();
            if (obj instanceof c0) {
                c0Var = (c0) obj;
            } else {
                c0Var = null;
            }
            if (c0Var != null) {
                cVar.b(c0Var.cause);
            }
            Throwable thE = cVar.e();
            if (Boolean.valueOf(true ^ zF).booleanValue()) {
                r5 = thE;
            }
            p0Var.element = r5;
            w7.l0 l0Var = w7.l0.INSTANCE;
            if (r5 != 0) {
                C0(o2VarL0, r5);
            }
            v vVarD0 = d0(v1Var);
            if (vVarD0 != null && V0(cVar, vVarD0, obj)) {
                return k2.COMPLETING_WAITING_CHILDREN;
            }
            return c0(cVar, obj);
        }
    }

    private final void X(v1 v1Var, Object obj) throws Throwable {
        c0 c0Var;
        u uVarM0 = m0();
        if (uVarM0 != null) {
            uVarM0.t();
            L0(q2.INSTANCE);
        }
        Throwable th = null;
        if (obj instanceof c0) {
            c0Var = (c0) obj;
        } else {
            c0Var = null;
        }
        if (c0Var != null) {
            th = c0Var.cause;
        }
        if (v1Var instanceof i2) {
            try {
                ((i2) v1Var).r(th);
                return;
            } catch (Throwable th2) {
                p0(new f0("Exception in completion handler " + v1Var + " for " + this, th2));
                return;
            }
        }
        o2 o2VarA = v1Var.a();
        if (o2VarA != null) {
            D0(o2VarA, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(c cVar, v vVar, Object obj) {
        v vVarB0 = B0(vVar);
        if (vVarB0 != null && V0(cVar, vVarB0, obj)) {
            return;
        }
        C(c0(cVar, obj));
    }

    private final Throwable h0(c cVar, List<? extends Throwable> list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (!cVar.f()) {
                return null;
            }
            return new c2(P(), null, this);
        }
        List<? extends Throwable> list2 = list;
        Iterator<T> it = list2.iterator();
        do {
            if (it.hasNext()) {
                next = it.next();
            } else {
                next = null;
                break;
            }
        } while (!(!(((Throwable) next) instanceof CancellationException)));
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof d3) {
            for (Object obj2 : list2) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof d3)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final o2 l0(v1 v1Var) {
        o2 o2VarA = v1Var.a();
        if (o2VarA == null) {
            if (v1Var instanceof j1) {
                return new o2();
            }
            if (v1Var instanceof i2) {
                J0((i2) v1Var);
                return null;
            }
            throw new IllegalStateException(("State should have list: " + v1Var).toString());
        }
        return o2VarA;
    }

    private final boolean s0() {
        Object objN0;
        do {
            objN0 = n0();
            if (!(objN0 instanceof v1)) {
                return false;
            }
        } while (M0(objN0) < 0);
        return true;
    }

    @NotNull
    public String A0() {
        return s0.a(this);
    }

    @Nullable
    protected final Object D(@NotNull kotlin.coroutines.d<Object> dVar) throws Throwable {
        Object objN0;
        do {
            objN0 = n0();
            if (!(objN0 instanceof v1)) {
                if (!(objN0 instanceof c0)) {
                    return k2.h(objN0);
                }
                throw ((c0) objN0).cause;
            }
        } while (M0(objN0) < 0);
        return E(dVar);
    }

    public final boolean F(@Nullable Throwable th) {
        return H(th);
    }

    public final boolean H(@Nullable Object obj) throws Throwable {
        Object objV0 = k2.COMPLETING_ALREADY;
        if (j0() && (objV0 = J(obj)) == k2.COMPLETING_WAITING_CHILDREN) {
            return true;
        }
        if (objV0 == k2.COMPLETING_ALREADY) {
            objV0 = v0(obj);
        }
        if (objV0 == k2.COMPLETING_ALREADY || objV0 == k2.COMPLETING_WAITING_CHILDREN) {
            return true;
        }
        if (objV0 == k2.TOO_LATE_TO_CANCEL) {
            return false;
        }
        C(objV0);
        return true;
    }

    public void I(@NotNull Throwable th) throws Throwable {
        H(th);
    }

    public final void K0(@NotNull i2 i2Var) {
        Object objN0;
        do {
            objN0 = n0();
            if (objN0 instanceof i2) {
                if (objN0 != i2Var) {
                    return;
                }
            } else {
                if ((objN0 instanceof v1) && ((v1) objN0).a() != null) {
                    i2Var.m();
                    return;
                }
                return;
            }
        } while (!androidx.concurrent.futures.a.a(_state$FU, this, objN0, k2.EMPTY_ACTIVE));
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public final g1 O(boolean z6, boolean z10, @NotNull e8.l<? super Throwable, w7.l0> lVar) {
        c0 c0Var;
        i2 i2VarZ0 = z0(lVar, z6);
        while (true) {
            Object objN0 = n0();
            if (objN0 instanceof j1) {
                j1 j1Var = (j1) objN0;
                if (j1Var.isActive()) {
                    if (androidx.concurrent.futures.a.a(_state$FU, this, objN0, i2VarZ0)) {
                        return i2VarZ0;
                    }
                } else {
                    I0(j1Var);
                }
            } else {
                Throwable thE = null;
                if (objN0 instanceof v1) {
                    o2 o2VarA = ((v1) objN0).a();
                    if (o2VarA == null) {
                        kotlin.jvm.internal.t.h(objN0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                        J0((i2) objN0);
                    } else {
                        g1 g1Var = q2.INSTANCE;
                        if (z6 && (objN0 instanceof c)) {
                            synchronized (objN0) {
                                try {
                                    thE = ((c) objN0).e();
                                    if (thE == null || ((lVar instanceof v) && !((c) objN0).g())) {
                                        if (z(objN0, o2VarA, i2VarZ0)) {
                                            if (thE == null) {
                                                return i2VarZ0;
                                            }
                                            g1Var = i2VarZ0;
                                        }
                                    }
                                    w7.l0 l0Var = w7.l0.INSTANCE;
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        if (thE != null) {
                            if (z10) {
                                lVar.invoke(thE);
                            }
                            return g1Var;
                        }
                        if (z(objN0, o2VarA, i2VarZ0)) {
                            return i2VarZ0;
                        }
                    }
                } else {
                    if (z10) {
                        if (objN0 instanceof c0) {
                            c0Var = (c0) objN0;
                        } else {
                            c0Var = null;
                        }
                        if (c0Var != null) {
                            thE = c0Var.cause;
                        }
                        lVar.invoke(thE);
                    }
                    return q2.INSTANCE;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public final CancellationException b0() {
        Object objN0 = n0();
        if (objN0 instanceof c) {
            Throwable thE = ((c) objN0).e();
            if (thE != null) {
                CancellationException cancellationExceptionO0 = O0(thE, s0.a(this) + " is cancelling");
                if (cancellationExceptionO0 != null) {
                    return cancellationExceptionO0;
                }
            }
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (!(objN0 instanceof v1)) {
            if (objN0 instanceof c0) {
                return P0(this, ((c0) objN0).cause, null, 1, null);
            }
            return new c2(s0.a(this) + " has completed normally", null, this);
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Nullable
    public final Object e0() throws Throwable {
        Object objN0 = n0();
        if (!(objN0 instanceof v1)) {
            if (!(objN0 instanceof c0)) {
                return k2.h(objN0);
            }
            throw ((c0) objN0).cause;
        }
        throw new IllegalStateException("This job has not completed yet".toString());
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) b2.a.b(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) b2.a.c(this, cVar);
    }

    @Override // kotlinx.coroutines.b2
    @Nullable
    public b2 getParent() {
        u uVarM0 = m0();
        if (uVarM0 != null) {
            return uVarM0.getParent();
        }
        return null;
    }

    @Override // kotlinx.coroutines.b2
    public boolean isActive() {
        Object objN0 = n0();
        if ((objN0 instanceof v1) && ((v1) objN0).isActive()) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.b2
    public final boolean isCancelled() {
        Object objN0 = n0();
        if (!(objN0 instanceof c0) && (!(objN0 instanceof c) || !((c) objN0).f())) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.w
    public final void j(@NotNull s2 s2Var) throws Throwable {
        H(s2Var);
    }

    @Override // kotlinx.coroutines.s2
    @NotNull
    public CancellationException k0() {
        Throwable thE;
        Object objN0 = n0();
        CancellationException cancellationException = null;
        if (objN0 instanceof c) {
            thE = ((c) objN0).e();
        } else if (objN0 instanceof c0) {
            thE = ((c0) objN0).cause;
        } else if (!(objN0 instanceof v1)) {
            thE = null;
        } else {
            throw new IllegalStateException(("Cannot be cancelling child in this state: " + objN0).toString());
        }
        if (thE instanceof CancellationException) {
            cancellationException = (CancellationException) thE;
        }
        if (cancellationException == null) {
            return new c2("Parent job is " + N0(objN0), thE, this);
        }
        return cancellationException;
    }

    @Override // kotlinx.coroutines.b2
    public final boolean m() {
        return !(n0() instanceof v1);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return b2.a.e(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return b2.a.f(this, gVar);
    }

    @Override // kotlinx.coroutines.b2
    public final boolean start() {
        int iM0;
        do {
            iM0 = M0(n0());
            if (iM0 == 0) {
                return false;
            }
        } while (iM0 != 1);
        return true;
    }

    @Override // kotlinx.coroutines.b2
    @Nullable
    public final Object t0(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        if (!s0()) {
            f2.j(dVar.getContext());
            return w7.l0.INSTANCE;
        }
        Object objU0 = u0(dVar);
        if (objU0 == kotlin.coroutines.intrinsics.d.e()) {
            return objU0;
        }
        return w7.l0.INSTANCE;
    }

    public final boolean w0(@Nullable Object obj) {
        Object objT0;
        do {
            objT0 = T0(n0(), obj);
            if (objT0 == k2.COMPLETING_ALREADY) {
                return false;
            }
            if (objT0 == k2.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
        } while (objT0 == k2.COMPLETING_RETRY);
        C(objT0);
        return true;
    }

    @Nullable
    public final Object x0(@Nullable Object obj) {
        Object objT0;
        do {
            objT0 = T0(n0(), obj);
            if (objT0 == k2.COMPLETING_ALREADY) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, f0(obj));
            }
        } while (objT0 == k2.COMPLETING_RETRY);
        return objT0;
    }
}
