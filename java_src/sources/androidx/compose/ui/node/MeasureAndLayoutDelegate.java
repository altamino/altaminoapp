package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.unit.Constraints;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes9.dex */
public final class MeasureAndLayoutDelegate {

    @Nullable
    private final LayoutTreeConsistencyChecker consistencyChecker;
    private boolean duringMeasureLayout;
    private long measureIteration;

    @NotNull
    private final MutableVector<Owner.OnLayoutCompletedListener> onLayoutCompletedListeners;

    @NotNull
    private final OnPositionedDispatcher onPositionedDispatcher;

    @NotNull
    private final List<LayoutNode> postponedMeasureRequests;

    @NotNull
    private final DepthSortedSet relayoutNodes;

    @NotNull
    private final LayoutNode root;

    @Nullable
    private Constraints rootConstraints;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            iArr[LayoutNode.LayoutState.Idle.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final boolean f(LayoutNode layoutNode, Constraints constraints) {
        boolean zB1 = constraints != null ? layoutNode.b1(constraints) : LayoutNode.c1(layoutNode, null, 1, null);
        LayoutNode layoutNodeT0 = layoutNode.t0();
        if (zB1 && layoutNodeT0 != null) {
            if (layoutNode.l0() == LayoutNode.UsageByParent.InMeasureBlock) {
                s(this, layoutNodeT0, false, 2, null);
            } else if (layoutNode.l0() == LayoutNode.UsageByParent.InLayoutBlock) {
                q(this, layoutNodeT0, false, 2, null);
            }
        }
        return zB1;
    }

    public MeasureAndLayoutDelegate(@NotNull LayoutNode root) {
        t.j(root, "root");
        this.root = root;
        Owner.Companion companion = Owner.Companion;
        DepthSortedSet depthSortedSet = new DepthSortedSet(companion.a());
        this.relayoutNodes = depthSortedSet;
        this.onPositionedDispatcher = new OnPositionedDispatcher();
        this.onLayoutCompletedListeners = new MutableVector<>(new Owner.OnLayoutCompletedListener[16], 0);
        this.measureIteration = 1L;
        ArrayList arrayList = new ArrayList();
        this.postponedMeasureRequests = arrayList;
        this.consistencyChecker = companion.a() ? new LayoutTreeConsistencyChecker(root, depthSortedSet, arrayList) : null;
    }

    private final void c() {
        MutableVector<Owner.OnLayoutCompletedListener> mutableVector = this.onLayoutCompletedListeners;
        int iN = mutableVector.n();
        if (iN > 0) {
            Owner.OnLayoutCompletedListener[] onLayoutCompletedListenerArrM = mutableVector.m();
            int i10 = 0;
            do {
                onLayoutCompletedListenerArrM[i10].j();
                i10++;
            } while (i10 < iN);
        }
        this.onLayoutCompletedListeners.h();
    }

    public static /* synthetic */ void e(MeasureAndLayoutDelegate measureAndLayoutDelegate, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        measureAndLayoutDelegate.d(z6);
    }

    public static /* synthetic */ boolean q(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return measureAndLayoutDelegate.p(layoutNode, z6);
    }

    public static /* synthetic */ boolean s(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return measureAndLayoutDelegate.r(layoutNode, z6);
    }

    public final void d(boolean z6) {
        if (z6) {
            this.onPositionedDispatcher.d(this.root);
        }
        this.onPositionedDispatcher.a();
    }

    public final void g(@NotNull LayoutNode layoutNode) {
        t.j(layoutNode, "layoutNode");
        if (this.relayoutNodes.d()) {
            return;
        }
        if (!this.duringMeasureLayout) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(!layoutNode.i0())) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        MutableVector<LayoutNode> mutableVectorZ0 = layoutNode.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode2 = layoutNodeArrM[i10];
                if (layoutNode2.i0() && this.relayoutNodes.f(layoutNode2)) {
                    o(layoutNode2);
                }
                if (!layoutNode2.i0()) {
                    g(layoutNode2);
                }
                i10++;
            } while (i10 < iN);
        }
        if (layoutNode.i0() && this.relayoutNodes.f(layoutNode)) {
            o(layoutNode);
        }
    }

    public final boolean i() {
        return !this.relayoutNodes.d();
    }

    public final long j() {
        if (this.duringMeasureLayout) {
            return this.measureIteration;
        }
        throw new IllegalArgumentException("measureIteration should be only used during the measure/layout pass".toString());
    }

    public final boolean k(@Nullable e8.a<l0> aVar) {
        boolean z6;
        if (!this.root.K0()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!this.root.i()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(!this.duringMeasureLayout)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        boolean z10 = false;
        if (this.rootConstraints != null) {
            this.duringMeasureLayout = true;
            try {
                if (!this.relayoutNodes.d()) {
                    DepthSortedSet depthSortedSet = this.relayoutNodes;
                    z6 = false;
                    while (!depthSortedSet.d()) {
                        LayoutNode layoutNodeE = depthSortedSet.e();
                        boolean zO = o(layoutNodeE);
                        if (layoutNodeE == this.root && zO) {
                            z6 = true;
                        }
                    }
                    if (aVar != null) {
                        aVar.invoke();
                    }
                } else {
                    z6 = false;
                }
                this.duringMeasureLayout = false;
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.a();
                }
                z10 = z6;
            } catch (Throwable th) {
                this.duringMeasureLayout = false;
                throw th;
            }
        }
        c();
        return z10;
    }

    public final void l(@NotNull LayoutNode layoutNode, long j6) {
        t.j(layoutNode, "layoutNode");
        if (!(!t.e(layoutNode, this.root))) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!this.root.K0()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!this.root.i()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(!this.duringMeasureLayout)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.rootConstraints != null) {
            this.duringMeasureLayout = true;
            try {
                this.relayoutNodes.f(layoutNode);
                f(layoutNode, Constraints.b(j6));
                if (layoutNode.f0() && layoutNode.i()) {
                    layoutNode.f1();
                    this.onPositionedDispatcher.c(layoutNode);
                }
                this.duringMeasureLayout = false;
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.a();
                }
            } catch (Throwable th) {
                this.duringMeasureLayout = false;
                throw th;
            }
        }
        c();
    }

    public final void m(@NotNull LayoutNode node) {
        t.j(node, "node");
        this.relayoutNodes.f(node);
    }

    public final void n(@NotNull Owner.OnLayoutCompletedListener listener) {
        t.j(listener, "listener");
        this.onLayoutCompletedListeners.b(listener);
    }

    public final boolean p(@NotNull LayoutNode layoutNode, boolean z6) {
        LayoutNode layoutNodeT0;
        t.j(layoutNode, "layoutNode");
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutNode.g0().ordinal()];
        if (i10 == 1 || i10 == 2) {
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
            if (layoutTreeConsistencyChecker == null) {
                return false;
            }
            layoutTreeConsistencyChecker.a();
            return false;
        }
        if (i10 != 3) {
            throw new s();
        }
        if ((layoutNode.i0() || layoutNode.f0()) && !z6) {
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker2 = this.consistencyChecker;
            if (layoutTreeConsistencyChecker2 == null) {
                return false;
            }
            layoutTreeConsistencyChecker2.a();
            return false;
        }
        layoutNode.M0();
        if (layoutNode.i() && (((layoutNodeT0 = layoutNode.t0()) == null || !layoutNodeT0.f0()) && (layoutNodeT0 == null || !layoutNodeT0.i0()))) {
            this.relayoutNodes.a(layoutNode);
        }
        return !this.duringMeasureLayout;
    }

    public final boolean r(@NotNull LayoutNode layoutNode, boolean z6) {
        LayoutNode layoutNodeT0;
        t.j(layoutNode, "layoutNode");
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutNode.g0().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                this.postponedMeasureRequests.add(layoutNode);
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.a();
                }
            } else {
                if (i10 != 3) {
                    throw new s();
                }
                if (!layoutNode.i0() || z6) {
                    layoutNode.N0();
                    if ((layoutNode.i() || h(layoutNode)) && ((layoutNodeT0 = layoutNode.t0()) == null || !layoutNodeT0.i0())) {
                        this.relayoutNodes.a(layoutNode);
                    }
                    if (!this.duringMeasureLayout) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void t(long j6) {
        Constraints constraints = this.rootConstraints;
        if (constraints != null && Constraints.g(constraints.t(), j6)) {
            return;
        }
        if (!(!this.duringMeasureLayout)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.rootConstraints = Constraints.b(j6);
        this.root.N0();
        this.relayoutNodes.a(this.root);
    }

    private final boolean h(LayoutNode layoutNode) {
        if (layoutNode.i0() && (layoutNode.l0() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode.Q().e())) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(LayoutNode layoutNode) {
        boolean zF;
        Constraints constraints;
        if (!layoutNode.i() && !h(layoutNode) && !layoutNode.Q().e()) {
            return false;
        }
        if (layoutNode.i0()) {
            if (layoutNode == this.root) {
                constraints = this.rootConstraints;
                t.g(constraints);
            } else {
                constraints = null;
            }
            zF = f(layoutNode, constraints);
        } else {
            zF = false;
        }
        if (layoutNode.f0() && layoutNode.i()) {
            if (layoutNode == this.root) {
                layoutNode.Z0(0, 0);
            } else {
                layoutNode.f1();
            }
            this.onPositionedDispatcher.c(layoutNode);
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
            if (layoutTreeConsistencyChecker != null) {
                layoutTreeConsistencyChecker.a();
            }
        }
        if (!this.postponedMeasureRequests.isEmpty()) {
            List<LayoutNode> list = this.postponedMeasureRequests;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                LayoutNode layoutNode2 = list.get(i10);
                if (layoutNode2.K0()) {
                    s(this, layoutNode2, false, 2, null);
                }
            }
            this.postponedMeasureRequests.clear();
        }
        return zF;
    }
}
