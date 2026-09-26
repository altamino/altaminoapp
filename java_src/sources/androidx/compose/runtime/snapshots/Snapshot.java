package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.ExperimentalComposeApi;
import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import e8.p;
import java.util.Set;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
@StabilityInferred
public abstract class Snapshot {
    private boolean disposed;
    private int id;

    @NotNull
    private SnapshotIdSet invalid;
    private int pinningTrackingHandle;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final <T> T d(@Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2, @NotNull e8.a<? extends T> block) {
            Snapshot transparentObserverMutableSnapshot;
            t.j(block, "block");
            if (lVar == null && lVar2 == null) {
                return block.invoke();
            }
            Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.a();
            if (snapshot == null || (snapshot instanceof MutableSnapshot)) {
                transparentObserverMutableSnapshot = new TransparentObserverMutableSnapshot(snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null, lVar, lVar2, true, false);
            } else {
                if (lVar == null) {
                    return block.invoke();
                }
                transparentObserverMutableSnapshot = snapshot.v(lVar);
            }
            try {
                Snapshot snapshotK = transparentObserverMutableSnapshot.k();
                try {
                    T tInvoke = block.invoke();
                    transparentObserverMutableSnapshot.r(snapshotK);
                    transparentObserverMutableSnapshot.d();
                    return tInvoke;
                } catch (Throwable th) {
                    transparentObserverMutableSnapshot.r(snapshotK);
                    throw th;
                }
            } catch (Throwable th2) {
                transparentObserverMutableSnapshot.d();
                throw th2;
            }
        }

        @NotNull
        public final ObserverHandle e(@NotNull final p<? super Set<? extends Object>, ? super Snapshot, l0> observer) {
            t.j(observer, "observer");
            SnapshotKt.w(SnapshotKt.emptyLambda);
            synchronized (SnapshotKt.C()) {
                SnapshotKt.applyObservers.add(observer);
            }
            return new ObserverHandle() { // from class: androidx.compose.runtime.snapshots.Snapshot$Companion$registerApplyObserver$2
                @Override // androidx.compose.runtime.snapshots.ObserverHandle
                public final void t() {
                    p<Set<? extends Object>, Snapshot, l0> pVar = observer;
                    synchronized (SnapshotKt.C()) {
                        SnapshotKt.applyObservers.remove(pVar);
                        l0 l0Var = l0.INSTANCE;
                    }
                }
            };
        }

        @NotNull
        public final ObserverHandle f(@NotNull final l<Object, l0> observer) {
            t.j(observer, "observer");
            synchronized (SnapshotKt.C()) {
                SnapshotKt.globalWriteObservers.add(observer);
            }
            SnapshotKt.x();
            return new ObserverHandle() { // from class: androidx.compose.runtime.snapshots.Snapshot$Companion$registerGlobalWriteObserver$2
                @Override // androidx.compose.runtime.snapshots.ObserverHandle
                public final void t() {
                    l<Object, l0> lVar = observer;
                    synchronized (SnapshotKt.C()) {
                        SnapshotKt.globalWriteObservers.remove(lVar);
                    }
                    SnapshotKt.x();
                }
            };
        }

        @NotNull
        public final Snapshot a() {
            return SnapshotKt.z((Snapshot) SnapshotKt.threadSnapshot.a(), null, false, 6, null);
        }

        @NotNull
        public final Snapshot b() {
            return SnapshotKt.B();
        }

        public final void c() {
            SnapshotKt.B().n();
        }

        public final void g() {
            boolean z6;
            synchronized (SnapshotKt.C()) {
                Set<StateObject> setE = ((GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get()).E();
                z6 = false;
                if (setE != null && (!setE.isEmpty())) {
                    z6 = true;
                }
            }
            if (z6) {
                SnapshotKt.x();
            }
        }

        @NotNull
        public final MutableSnapshot h(@Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2) {
            MutableSnapshot mutableSnapshot;
            MutableSnapshot mutableSnapshotP;
            Snapshot snapshotB = SnapshotKt.B();
            if (snapshotB instanceof MutableSnapshot) {
                mutableSnapshot = (MutableSnapshot) snapshotB;
            } else {
                mutableSnapshot = null;
            }
            if (mutableSnapshot != null && (mutableSnapshotP = mutableSnapshot.P(lVar, lVar2)) != null) {
                return mutableSnapshotP;
            }
            throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot".toString());
        }

        @NotNull
        public final Snapshot i(@Nullable l<Object, l0> lVar) {
            return SnapshotKt.B().v(lVar);
        }
    }

    public /* synthetic */ Snapshot(int i10, SnapshotIdSet snapshotIdSet, k kVar) {
        this(i10, snapshotIdSet);
    }

    public void d() {
        this.disposed = true;
        synchronized (SnapshotKt.C()) {
            p();
            l0 l0Var = l0.INSTANCE;
        }
    }

    public final boolean e() {
        return this.disposed;
    }

    public int f() {
        return this.id;
    }

    @NotNull
    public SnapshotIdSet g() {
        return this.invalid;
    }

    @Nullable
    public abstract l<Object, l0> h();

    public abstract boolean i();

    @Nullable
    public abstract l<Object, l0> j();

    public abstract void l(@NotNull Snapshot snapshot);

    public abstract void m(@NotNull Snapshot snapshot);

    public abstract void n();

    public abstract void o(@NotNull StateObject stateObject);

    public final void s(boolean z6) {
        this.disposed = z6;
    }

    public void t(int i10) {
        this.id = i10;
    }

    public void u(@NotNull SnapshotIdSet snapshotIdSet) {
        t.j(snapshotIdSet, "<set-?>");
        this.invalid = snapshotIdSet;
    }

    @NotNull
    public abstract Snapshot v(@Nullable l<Object, l0> lVar);

    public final int w() {
        int i10 = this.pinningTrackingHandle;
        this.pinningTrackingHandle = -1;
        return i10;
    }

    private Snapshot(int i10, SnapshotIdSet snapshotIdSet) {
        this.invalid = snapshotIdSet;
        this.id = i10;
        this.pinningTrackingHandle = i10 != 0 ? SnapshotKt.U(i10, g()) : -1;
    }

    public final void p() {
        int i10 = this.pinningTrackingHandle;
        if (i10 >= 0) {
            SnapshotKt.Q(i10);
            this.pinningTrackingHandle = -1;
        }
    }

    public final void z() {
        if (!(!this.disposed)) {
            throw new IllegalArgumentException("Cannot use a disposed snapshot".toString());
        }
    }

    public final void b() {
        synchronized (SnapshotKt.C()) {
            c();
            q();
            l0 l0Var = l0.INSTANCE;
        }
    }

    public void c() {
        SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.m(f());
    }

    @Nullable
    public Snapshot k() {
        Snapshot snapshot = (Snapshot) SnapshotKt.threadSnapshot.a();
        SnapshotKt.threadSnapshot.b(this);
        return snapshot;
    }

    public void q() {
        p();
    }

    public void r(@Nullable Snapshot snapshot) {
        SnapshotKt.threadSnapshot.b(snapshot);
    }

    @ExperimentalComposeApi
    @Nullable
    public final Snapshot x() {
        return k();
    }

    @ExperimentalComposeApi
    public final void y(@Nullable Snapshot snapshot) {
        if (SnapshotKt.threadSnapshot.a() == this) {
            r(snapshot);
            return;
        }
        throw new IllegalStateException(("Cannot leave snapshot; " + this + " is not the current snapshot").toString());
    }
}
