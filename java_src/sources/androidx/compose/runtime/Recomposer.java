package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.tooling.CompositionData;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.h;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.flow.n0;
import kotlinx.coroutines.flow.x;
import kotlinx.coroutines.i;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public final class Recomposer extends CompositionContext {

    @NotNull
    private final x<State> _state;

    @NotNull
    private final BroadcastFrameClock broadcastFrameClock;
    private long changeCount;

    @Nullable
    private Throwable closeCause;

    @NotNull
    private final List<ControlledComposition> compositionInvalidations;

    @NotNull
    private final Map<MovableContentStateReference, MovableContentState> compositionValueStatesAvailable;

    @NotNull
    private final List<MovableContentStateReference> compositionValuesAwaitingInsert;

    @NotNull
    private final Map<MovableContent<Object>, List<MovableContentStateReference>> compositionValuesRemoved;

    @NotNull
    private final List<ControlledComposition> compositionsAwaitingApply;
    private int concurrentCompositionsOutstanding;

    @NotNull
    private final g effectCoroutineContext;

    @NotNull
    private final a0 effectJob;
    private boolean isClosed;

    @NotNull
    private final List<ControlledComposition> knownCompositions;

    @NotNull
    private final RecomposerInfoImpl recomposerInfo;

    @Nullable
    private b2 runnerJob;

    @NotNull
    private final List<Set<Object>> snapshotInvalidations;

    @NotNull
    private final Object stateLock;

    @Nullable
    private o<? super l0> workContinuation;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    @NotNull
    private static final x<PersistentSet<RecomposerInfoImpl>> _runningRecomposers = n0.a(ExtensionsKt.c());

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void c(RecomposerInfoImpl recomposerInfoImpl) {
            PersistentSet persistentSet;
            PersistentSet persistentSetAdd;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                persistentSetAdd = persistentSet.add(recomposerInfoImpl);
                if (persistentSet == persistentSetAdd) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.a(persistentSet, persistentSetAdd));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(RecomposerInfoImpl recomposerInfoImpl) {
            PersistentSet persistentSet;
            PersistentSet persistentSetRemove;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                persistentSetRemove = persistentSet.remove(recomposerInfoImpl);
                if (persistentSet == persistentSetRemove) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.a(persistentSet, persistentSetRemove));
        }
    }

    private static final class HotReloadable {

        @NotNull
        private p<? super Composer, ? super Integer, l0> composable;

        @NotNull
        private final CompositionImpl composition;

        public HotReloadable(@NotNull CompositionImpl composition) {
            t.j(composition, "composition");
            this.composition = composition;
            this.composable = composition.A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class RecomposerInfoImpl implements RecomposerInfo {
        public RecomposerInfoImpl() {
        }
    }

    public enum State {
        ShutDown,
        ShuttingDown,
        Inactive,
        InactivePendingWork,
        Idle,
        PendingWork
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean d() {
        return false;
    }

    public final long d0() {
        return this.changeCount;
    }

    @NotNull
    public final kotlinx.coroutines.flow.l0<State> e0() {
        return this._state;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public int f() {
        return 1000;
    }

    @Override // androidx.compose.runtime.CompositionContext
    @NotNull
    public g g() {
        return this.effectCoroutineContext;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void m(@NotNull Set<CompositionData> table) {
        t.j(table, "table");
    }

    public Recomposer(@NotNull g effectCoroutineContext) {
        t.j(effectCoroutineContext, "effectCoroutineContext");
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Recomposer$broadcastFrameClock$1(this));
        this.broadcastFrameClock = broadcastFrameClock;
        a0 a0VarA = f2.a((b2) effectCoroutineContext.get(b2.Key));
        a0VarA.U(new Recomposer$effectJob$1$1(this));
        this.effectJob = a0VarA;
        this.effectCoroutineContext = effectCoroutineContext.plus(broadcastFrameClock).plus(a0VarA);
        this.stateLock = new Object();
        this.knownCompositions = new ArrayList();
        this.snapshotInvalidations = new ArrayList();
        this.compositionInvalidations = new ArrayList();
        this.compositionsAwaitingApply = new ArrayList();
        this.compositionValuesAwaitingInsert = new ArrayList();
        this.compositionValuesRemoved = new LinkedHashMap();
        this.compositionValueStatesAvailable = new LinkedHashMap();
        this._state = n0.a(State.Inactive);
        this.recomposerInfo = new RecomposerInfoImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final o<l0> b0() {
        State state;
        if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
            this.knownCompositions.clear();
            this.snapshotInvalidations.clear();
            this.compositionInvalidations.clear();
            this.compositionsAwaitingApply.clear();
            this.compositionValuesAwaitingInsert.clear();
            o<? super l0> oVar = this.workContinuation;
            if (oVar != null) {
                o.a.a(oVar, null, 1, null);
            }
            this.workContinuation = null;
            return null;
        }
        if (this.runnerJob == null) {
            this.snapshotInvalidations.clear();
            this.compositionInvalidations.clear();
            state = this.broadcastFrameClock.t() ? State.InactivePendingWork : State.Inactive;
        } else {
            state = ((this.compositionInvalidations.isEmpty() ^ true) || (this.snapshotInvalidations.isEmpty() ^ true) || (this.compositionsAwaitingApply.isEmpty() ^ true) || (this.compositionValuesAwaitingInsert.isEmpty() ^ true) || this.concurrentCompositionsOutstanding > 0 || this.broadcastFrameClock.t()) ? State.PendingWork : State.Idle;
        }
        this._state.setValue(state);
        if (state != State.PendingWork) {
            return null;
        }
        o oVar2 = this.workContinuation;
        this.workContinuation = null;
        return oVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0() {
        int i10;
        List listM;
        synchronized (this.stateLock) {
            try {
                if (!this.compositionValuesRemoved.isEmpty()) {
                    List listZ = w.z(this.compositionValuesRemoved.values());
                    this.compositionValuesRemoved.clear();
                    listM = new ArrayList(listZ.size());
                    int size = listZ.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        MovableContentStateReference movableContentStateReference = (MovableContentStateReference) listZ.get(i11);
                        listM.add(w7.a0.a(movableContentStateReference, this.compositionValueStatesAvailable.get(movableContentStateReference)));
                    }
                    this.compositionValueStatesAvailable.clear();
                } else {
                    listM = v.m();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int size2 = listM.size();
        for (i10 = 0; i10 < size2; i10++) {
            u uVar = (u) listM.get(i10);
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) uVar.a();
            MovableContentState movableContentState = (MovableContentState) uVar.b();
            if (movableContentState != null) {
                movableContentStateReference2.b().b(movableContentState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f0() {
        return (this.compositionsAwaitingApply.isEmpty() ^ true) || this.broadcastFrameClock.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean g0() {
        return (this.compositionInvalidations.isEmpty() ^ true) || this.broadcastFrameClock.t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h0() {
        boolean z6;
        synchronized (this.stateLock) {
            z6 = true;
            if (!(!this.snapshotInvalidations.isEmpty()) && !(!this.compositionInvalidations.isEmpty()) && !this.broadcastFrameClock.t()) {
                z6 = false;
            }
        }
        return z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean i0() {
        boolean z6;
        synchronized (this.stateLock) {
            z6 = !this.isClosed;
        }
        if (z6) {
            return true;
        }
        Iterator<b2> it = this.effectJob.getChildren().iterator();
        while (it.hasNext()) {
            if (it.next().isActive()) {
                return true;
            }
        }
        return false;
    }

    private final void k0(ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            List<MovableContentStateReference> list = this.compositionValuesAwaitingInsert;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (t.e(list.get(i10).b(), controlledComposition)) {
                    l0 l0Var = l0.INSTANCE;
                    ArrayList arrayList = new ArrayList();
                    l0(arrayList, this, controlledComposition);
                    while (!arrayList.isEmpty()) {
                        m0(arrayList, null);
                        l0(arrayList, this, controlledComposition);
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> m0(List<MovableContentStateReference> list, IdentityArraySet<Object> identityArraySet) {
        ArrayList arrayList;
        HashMap map = new HashMap(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            MovableContentStateReference movableContentStateReference = list.get(i10);
            ControlledComposition controlledCompositionB = movableContentStateReference.b();
            Object arrayList2 = map.get(controlledCompositionB);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                map.put(controlledCompositionB, arrayList2);
            }
            ((ArrayList) arrayList2).add(movableContentStateReference);
        }
        for (Map.Entry entry : map.entrySet()) {
            ControlledComposition controlledComposition = (ControlledComposition) entry.getKey();
            List list2 = (List) entry.getValue();
            ComposerKt.X(!controlledComposition.m());
            MutableSnapshot mutableSnapshotH = Snapshot.Companion.h(o0(controlledComposition), u0(controlledComposition, identityArraySet));
            try {
                Snapshot snapshotK = mutableSnapshotH.k();
                try {
                    synchronized (this.stateLock) {
                        arrayList = new ArrayList(list2.size());
                        int size2 = list2.size();
                        for (int i11 = 0; i11 < size2; i11++) {
                            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) list2.get(i11);
                            arrayList.add(w7.a0.a(movableContentStateReference2, RecomposerKt.d(this.compositionValuesRemoved, movableContentStateReference2.c())));
                        }
                    }
                    controlledComposition.g(arrayList);
                    l0 l0Var = l0.INSTANCE;
                    mutableSnapshotH.r(snapshotK);
                    X(mutableSnapshotH);
                } catch (Throwable th) {
                    mutableSnapshotH.r(snapshotK);
                    throw th;
                }
            } catch (Throwable th2) {
                X(mutableSnapshotH);
                throw th2;
            }
        }
        return d0.U0(map.keySet());
    }

    private final l<Object, l0> o0(ControlledComposition controlledComposition) {
        return new Recomposer$readObserverOf$1(controlledComposition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0() {
        if (!this.snapshotInvalidations.isEmpty()) {
            List<Set<Object>> list = this.snapshotInvalidations;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Set<? extends Object> set = list.get(i10);
                List<ControlledComposition> list2 = this.knownCompositions;
                int size2 = list2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    list2.get(i11).k(set);
                }
            }
            this.snapshotInvalidations.clear();
            if (b0() != null) {
                throw new IllegalStateException("called outside of runRecomposeAndApplyChanges".toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0(b2 b2Var) {
        synchronized (this.stateLock) {
            Throwable th = this.closeCause;
            if (th != null) {
                throw th;
            }
            if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down".toString());
            }
            if (this.runnerJob != null) {
                throw new IllegalStateException("Recomposer already running".toString());
            }
            this.runnerJob = b2Var;
            b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0088  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00a2 -> B:13:0x003f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object s0(androidx.compose.runtime.MonotonicFrameClock r8, androidx.compose.runtime.ProduceFrameSignal r9, kotlin.coroutines.d<? super w7.l0> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof androidx.compose.runtime.Recomposer$runFrameLoop$1
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.runtime.Recomposer$runFrameLoop$1 r0 = (androidx.compose.runtime.Recomposer$runFrameLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.runtime.Recomposer$runFrameLoop$1 r0 = new androidx.compose.runtime.Recomposer$runFrameLoop$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L65
            if (r2 == r4) goto L4d
            if (r2 != r3) goto L45
            java.lang.Object r8 = r0.L$4
            java.util.List r8 = (java.util.List) r8
            java.lang.Object r9 = r0.L$3
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r2 = r0.L$2
            androidx.compose.runtime.ProduceFrameSignal r2 = (androidx.compose.runtime.ProduceFrameSignal) r2
            java.lang.Object r5 = r0.L$1
            androidx.compose.runtime.MonotonicFrameClock r5 = (androidx.compose.runtime.MonotonicFrameClock) r5
            java.lang.Object r6 = r0.L$0
            androidx.compose.runtime.Recomposer r6 = (androidx.compose.runtime.Recomposer) r6
            w7.w.b(r10)
        L3f:
            r10 = r9
            r9 = r2
            r2 = r8
            r8 = r5
            r5 = r6
            goto L73
        L45:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L4d:
            java.lang.Object r8 = r0.L$4
            java.util.List r8 = (java.util.List) r8
            java.lang.Object r9 = r0.L$3
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r2 = r0.L$2
            androidx.compose.runtime.ProduceFrameSignal r2 = (androidx.compose.runtime.ProduceFrameSignal) r2
            java.lang.Object r5 = r0.L$1
            androidx.compose.runtime.MonotonicFrameClock r5 = (androidx.compose.runtime.MonotonicFrameClock) r5
            java.lang.Object r6 = r0.L$0
            androidx.compose.runtime.Recomposer r6 = (androidx.compose.runtime.Recomposer) r6
            w7.w.b(r10)
            goto L8d
        L65:
            w7.w.b(r10)
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r5 = r7
        L73:
            java.lang.Object r6 = r5.stateLock
            r0.L$0 = r5
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.L$4 = r2
            r0.label = r4
            java.lang.Object r6 = r9.c(r6, r0)
            if (r6 != r1) goto L88
            return r1
        L88:
            r6 = r5
            r5 = r8
            r8 = r2
            r2 = r9
            r9 = r10
        L8d:
            androidx.compose.runtime.Recomposer$runFrameLoop$2 r10 = new androidx.compose.runtime.Recomposer$runFrameLoop$2
            r10.<init>(r6, r9, r8, r2)
            r0.L$0 = r6
            r0.L$1 = r5
            r0.L$2 = r2
            r0.L$3 = r9
            r0.L$4 = r8
            r0.label = r3
            java.lang.Object r10 = r5.k(r10, r0)
            if (r10 != r1) goto L3f
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer.s0(androidx.compose.runtime.MonotonicFrameClock, androidx.compose.runtime.ProduceFrameSignal, kotlin.coroutines.d):java.lang.Object");
    }

    private final l<Object, l0> u0(ControlledComposition controlledComposition, IdentityArraySet<Object> identityArraySet) {
        return new Recomposer$writeObserverOf$1(controlledComposition, identityArraySet);
    }

    public final void Z() {
        synchronized (this.stateLock) {
            try {
                if (this._state.getValue().compareTo(State.Idle) >= 0) {
                    this._state.setValue(State.ShuttingDown);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        b2.a.a(this.effectJob, null, 1, null);
    }

    @Override // androidx.compose.runtime.CompositionContext
    @ComposableInferredTarget
    public void a(@NotNull ControlledComposition composition, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(composition, "composition");
        t.j(content, "content");
        boolean zM = composition.m();
        Snapshot.Companion companion = Snapshot.Companion;
        MutableSnapshot mutableSnapshotH = companion.h(o0(composition), u0(composition, null));
        try {
            Snapshot snapshotK = mutableSnapshotH.k();
            try {
                composition.a(content);
                l0 l0Var = l0.INSTANCE;
                mutableSnapshotH.r(snapshotK);
                X(mutableSnapshotH);
                if (!zM) {
                    companion.c();
                }
                synchronized (this.stateLock) {
                    if (this._state.getValue().compareTo(State.ShuttingDown) > 0 && !this.knownCompositions.contains(composition)) {
                        this.knownCompositions.add(composition);
                    }
                }
                k0(composition);
                composition.l();
                composition.f();
                if (zM) {
                    return;
                }
                companion.c();
            } catch (Throwable th) {
                mutableSnapshotH.r(snapshotK);
                throw th;
            }
        } catch (Throwable th2) {
            X(mutableSnapshotH);
            throw th2;
        }
    }

    public final void a0() {
        if (this.effectJob.complete()) {
            synchronized (this.stateLock) {
                this.isClosed = true;
                l0 l0Var = l0.INSTANCE;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void b(@NotNull MovableContentStateReference reference) {
        t.j(reference, "reference");
        synchronized (this.stateLock) {
            RecomposerKt.c(this.compositionValuesRemoved, reference.c(), reference);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    @NotNull
    public g h() {
        return h.INSTANCE;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void i(@NotNull MovableContentStateReference reference) {
        o<l0> oVarB0;
        t.j(reference, "reference");
        synchronized (this.stateLock) {
            this.compositionValuesAwaitingInsert.add(reference);
            oVarB0 = b0();
        }
        if (oVarB0 != null) {
            w7.v.a aVar = w7.v.Companion;
            oVarB0.resumeWith(w7.v.b(l0.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void j(@NotNull ControlledComposition composition) {
        o<l0> oVarB0;
        t.j(composition, "composition");
        synchronized (this.stateLock) {
            if (this.compositionInvalidations.contains(composition)) {
                oVarB0 = null;
            } else {
                this.compositionInvalidations.add(composition);
                oVarB0 = b0();
            }
        }
        if (oVarB0 != null) {
            w7.v.a aVar = w7.v.Companion;
            oVarB0.resumeWith(w7.v.b(l0.INSTANCE));
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void k(@NotNull MovableContentStateReference reference, @NotNull MovableContentState data) {
        t.j(reference, "reference");
        t.j(data, "data");
        synchronized (this.stateLock) {
            this.compositionValueStatesAvailable.put(reference, data);
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    @Nullable
    public MovableContentState l(@NotNull MovableContentStateReference reference) {
        MovableContentState movableContentStateRemove;
        t.j(reference, "reference");
        synchronized (this.stateLock) {
            movableContentStateRemove = this.compositionValueStatesAvailable.remove(reference);
        }
        return movableContentStateRemove;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void q(@NotNull ControlledComposition composition) {
        t.j(composition, "composition");
        synchronized (this.stateLock) {
            this.knownCompositions.remove(composition);
            this.compositionInvalidations.remove(composition);
            this.compositionsAwaitingApply.remove(composition);
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Nullable
    public final Object t0(@NotNull d<? super l0> dVar) {
        Object objP0 = p0(new Recomposer$runRecomposeAndApplyChanges$2(this, null), dVar);
        return objP0 == kotlin.coroutines.intrinsics.d.e() ? objP0 : l0.INSTANCE;
    }

    private final void X(MutableSnapshot mutableSnapshot) {
        try {
            if (!(mutableSnapshot.C() instanceof SnapshotApplyResult.Failure)) {
                mutableSnapshot.d();
                return;
            }
            throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.".toString());
        } catch (Throwable th) {
            mutableSnapshot.d();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object Y(d<? super l0> dVar) throws Throwable {
        if (!h0()) {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            synchronized (this.stateLock) {
                try {
                    if (!h0()) {
                        this.workContinuation = pVar;
                    } else {
                        w7.v.a aVar = w7.v.Companion;
                        pVar.resumeWith(w7.v.b(l0.INSTANCE));
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                return objU;
            }
            return l0.INSTANCE;
        }
        return l0.INSTANCE;
    }

    private static final void l0(List<MovableContentStateReference> list, Recomposer recomposer, ControlledComposition controlledComposition) {
        list.clear();
        synchronized (recomposer.stateLock) {
            try {
                Iterator<MovableContentStateReference> it = recomposer.compositionValuesAwaitingInsert.iterator();
                while (it.hasNext()) {
                    MovableContentStateReference next = it.next();
                    if (t.e(next.b(), controlledComposition)) {
                        list.add(next);
                        it.remove();
                    }
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ControlledComposition n0(ControlledComposition controlledComposition, IdentityArraySet<Object> identityArraySet) {
        if (controlledComposition.m() || controlledComposition.u()) {
            return null;
        }
        MutableSnapshot mutableSnapshotH = Snapshot.Companion.h(o0(controlledComposition), u0(controlledComposition, identityArraySet));
        try {
            Snapshot snapshotK = mutableSnapshotH.k();
            if (identityArraySet != null) {
                try {
                    if (identityArraySet.f()) {
                        controlledComposition.i(new Recomposer$performRecompose$1$1(identityArraySet, controlledComposition));
                    }
                } catch (Throwable th) {
                    mutableSnapshotH.r(snapshotK);
                    throw th;
                }
            }
            boolean zH = controlledComposition.h();
            mutableSnapshotH.r(snapshotK);
            X(mutableSnapshotH);
            if (!zH) {
                return null;
            }
            return controlledComposition;
        } catch (Throwable th2) {
            X(mutableSnapshotH);
            throw th2;
        }
    }

    private final Object p0(q<? super o0, ? super MonotonicFrameClock, ? super d<? super l0>, ? extends Object> qVar, d<? super l0> dVar) {
        Object objG = i.g(this.broadcastFrameClock, new Recomposer$recompositionRunner$2(this, qVar, MonotonicFrameClockKt.a(dVar.getContext()), null), dVar);
        if (objG == kotlin.coroutines.intrinsics.d.e()) {
            return objG;
        }
        return l0.INSTANCE;
    }

    @Nullable
    public final Object j0(@NotNull d<? super l0> dVar) {
        Object objU = kotlinx.coroutines.flow.i.u(e0(), new Recomposer$join$2(null), dVar);
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            return objU;
        }
        return l0.INSTANCE;
    }
}
