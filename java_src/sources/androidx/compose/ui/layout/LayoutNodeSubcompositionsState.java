package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutNodeSubcompositionsState {

    @NotNull
    private final String NoIntrinsicsMessage;

    @Nullable
    private CompositionContext compositionContext;
    private int currentIndex;

    @NotNull
    private final Map<LayoutNode, NodeState> nodeToNodeState;

    @NotNull
    private final Map<Object, LayoutNode> precomposeMap;
    private int precomposedCount;
    private int reusableCount;

    @NotNull
    private final SubcomposeSlotReusePolicy.SlotIdsSet reusableSlotIdsSet;

    @NotNull
    private final LayoutNode root;

    @NotNull
    private final Scope scope;

    @NotNull
    private final Map<Object, LayoutNode> slotIdToNode;

    @NotNull
    private SubcomposeSlotReusePolicy slotReusePolicy;

    /* JADX INFO: Access modifiers changed from: private */
    static final class NodeState {

        @NotNull
        private final MutableState active$delegate;

        @Nullable
        private Composition composition;

        @NotNull
        private p<? super Composer, ? super Integer, l0> content;
        private boolean forceRecompose;

        @Nullable
        private Object slotId;

        public NodeState(@Nullable Object obj, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composition composition) {
            t.j(content, "content");
            this.slotId = obj;
            this.content = content;
            this.composition = composition;
            this.active$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
        }

        @Nullable
        public final Composition b() {
            return this.composition;
        }

        @NotNull
        public final p<Composer, Integer, l0> c() {
            return this.content;
        }

        public final boolean d() {
            return this.forceRecompose;
        }

        @Nullable
        public final Object e() {
            return this.slotId;
        }

        public final void g(@Nullable Composition composition) {
            this.composition = composition;
        }

        public final void h(@NotNull p<? super Composer, ? super Integer, l0> pVar) {
            t.j(pVar, "<set-?>");
            this.content = pVar;
        }

        public final void i(boolean z6) {
            this.forceRecompose = z6;
        }

        public final void j(@Nullable Object obj) {
            this.slotId = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final boolean a() {
            return ((Boolean) this.active$delegate.getValue()).booleanValue();
        }

        public final void f(boolean z6) {
            this.active$delegate.setValue(Boolean.valueOf(z6));
        }

        public /* synthetic */ NodeState(Object obj, p pVar, Composition composition, int i10, k kVar) {
            this(obj, pVar, (i10 & 4) != 0 ? null : composition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class Scope implements SubcomposeMeasureScope {
        private float density;
        private float fontScale;

        @NotNull
        private LayoutDirection layoutDirection = LayoutDirection.Rtl;

        @Override // androidx.compose.ui.unit.Density
        public float E0() {
            return this.fontScale;
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public /* synthetic */ MeasureResult G0(int i10, int i11, Map map, l lVar) {
            return MeasureScope.CC.a(this, i10, i11, map, lVar);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ float H0(float f) {
            return androidx.compose.ui.unit.a.h(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ int L0(long j6) {
            return androidx.compose.ui.unit.a.a(this, j6);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ float P(float f) {
            return androidx.compose.ui.unit.a.d(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ long X(long j6) {
            return androidx.compose.ui.unit.a.i(this, j6);
        }

        public void e(float f) {
            this.density = f;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.density;
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        @NotNull
        public LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ float j(int i10) {
            return androidx.compose.ui.unit.a.e(this, i10);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ int j0(float f) {
            return androidx.compose.ui.unit.a.b(this, f);
        }

        public void m(float f) {
            this.fontScale = f;
        }

        public void p(@NotNull LayoutDirection layoutDirection) {
            t.j(layoutDirection, "<set-?>");
            this.layoutDirection = layoutDirection;
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ float p0(long j6) {
            return androidx.compose.ui.unit.a.g(this, j6);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ long q(long j6) {
            return androidx.compose.ui.unit.a.f(this, j6);
        }

        @Override // androidx.compose.ui.unit.Density
        public /* synthetic */ float s(long j6) {
            return androidx.compose.ui.unit.a.c(this, j6);
        }

        public Scope() {
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        @NotNull
        public List<Measurable> v(@Nullable Object obj, @NotNull p<? super Composer, ? super Integer, l0> content) {
            t.j(content, "content");
            return LayoutNodeSubcompositionsState.this.w(obj, content);
        }
    }

    public final void n(int i10) {
        this.reusableCount = 0;
        int size = (this.root.W().size() - this.precomposedCount) - 1;
        if (i10 <= size) {
            this.reusableSlotIdsSet.clear();
            if (i10 <= size) {
                int i11 = i10;
                while (true) {
                    this.reusableSlotIdsSet.add(p(i11));
                    if (i11 == size) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.slotReusePolicy.a(this.reusableSlotIdsSet);
            while (size >= i10) {
                LayoutNode layoutNode = this.root.W().get(size);
                NodeState nodeState = this.nodeToNodeState.get(layoutNode);
                t.g(nodeState);
                NodeState nodeState2 = nodeState;
                Object objE = nodeState2.e();
                if (this.reusableSlotIdsSet.contains(objE)) {
                    layoutNode.q1(LayoutNode.UsageByParent.NotUsed);
                    this.reusableCount++;
                    nodeState2.f(false);
                } else {
                    LayoutNode layoutNode2 = this.root;
                    layoutNode2.ignoreRemeasureRequests = true;
                    this.nodeToNodeState.remove(layoutNode);
                    Composition compositionB = nodeState2.b();
                    if (compositionB != null) {
                        compositionB.t();
                    }
                    this.root.e1(size, 1);
                    layoutNode2.ignoreRemeasureRequests = false;
                }
                this.slotIdToNode.remove(objE);
                size--;
            }
        }
        q();
    }

    public final void u(@Nullable CompositionContext compositionContext) {
        this.compositionContext = compositionContext;
    }

    public LayoutNodeSubcompositionsState(@NotNull LayoutNode root, @NotNull SubcomposeSlotReusePolicy slotReusePolicy) {
        t.j(root, "root");
        t.j(slotReusePolicy, "slotReusePolicy");
        this.root = root;
        this.slotReusePolicy = slotReusePolicy;
        this.nodeToNodeState = new LinkedHashMap();
        this.slotIdToNode = new LinkedHashMap();
        this.scope = new Scope();
        this.precomposeMap = new LinkedHashMap();
        this.reusableSlotIdsSet = new SubcomposeSlotReusePolicy.SlotIdsSet(null, 1, null);
        this.NoIntrinsicsMessage = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";
    }

    private final LayoutNode A(Object obj) {
        int i10;
        if (this.reusableCount == 0) {
            return null;
        }
        int size = this.root.W().size() - this.precomposedCount;
        int i11 = size - this.reusableCount;
        int i12 = size - 1;
        int i13 = i12;
        while (true) {
            if (i13 < i11) {
                i10 = -1;
                break;
            }
            if (t.e(p(i13), obj)) {
                i10 = i13;
                break;
            }
            i13--;
        }
        if (i10 == -1) {
            while (true) {
                if (i12 < i11) {
                    i13 = i12;
                    break;
                }
                NodeState nodeState = this.nodeToNodeState.get(this.root.W().get(i12));
                t.g(nodeState);
                NodeState nodeState2 = nodeState;
                if (this.slotReusePolicy.b(obj, nodeState2.e())) {
                    nodeState2.j(obj);
                    i13 = i12;
                    i10 = i13;
                    break;
                }
                i12--;
            }
        }
        if (i10 == -1) {
            return null;
        }
        if (i13 != i11) {
            r(i13, i11, 1);
        }
        this.reusableCount--;
        LayoutNode layoutNode = this.root.W().get(i11);
        NodeState nodeState3 = this.nodeToNodeState.get(layoutNode);
        t.g(nodeState3);
        nodeState3.f(true);
        Snapshot.Companion.g();
        return layoutNode;
    }

    private final LayoutNode l(int i10) {
        LayoutNode layoutNode = new LayoutNode(true);
        LayoutNode layoutNode2 = this.root;
        layoutNode2.ignoreRemeasureRequests = true;
        this.root.G0(i10, layoutNode);
        layoutNode2.ignoreRemeasureRequests = false;
        return layoutNode;
    }

    private final Object p(int i10) {
        NodeState nodeState = this.nodeToNodeState.get(this.root.W().get(i10));
        t.g(nodeState);
        return nodeState.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(int i10, int i11, int i12) {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        this.root.R0(i10, i11, i12);
        layoutNode.ignoreRemeasureRequests = false;
    }

    static /* synthetic */ void s(LayoutNodeSubcompositionsState layoutNodeSubcompositionsState, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = 1;
        }
        layoutNodeSubcompositionsState.r(i10, i11, i12);
    }

    private final void x(LayoutNode layoutNode, NodeState nodeState) {
        Snapshot snapshotA = Snapshot.Companion.a();
        try {
            Snapshot snapshotK = snapshotA.k();
            try {
                LayoutNode layoutNode2 = this.root;
                layoutNode2.ignoreRemeasureRequests = true;
                p<Composer, Integer, l0> pVarC = nodeState.c();
                Composition compositionB = nodeState.b();
                CompositionContext compositionContext = this.compositionContext;
                if (compositionContext == null) {
                    throw new IllegalStateException("parent composition reference not set".toString());
                }
                nodeState.g(z(compositionB, layoutNode, compositionContext, ComposableLambdaKt.c(-34810602, true, new LayoutNodeSubcompositionsState$subcompose$2$1$1(nodeState, pVarC))));
                layoutNode2.ignoreRemeasureRequests = false;
                l0 l0Var = l0.INSTANCE;
                snapshotA.r(snapshotK);
                snapshotA.d();
            } catch (Throwable th) {
                snapshotA.r(snapshotK);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotA.d();
            throw th2;
        }
    }

    private final void y(LayoutNode layoutNode, Object obj, p<? super Composer, ? super Integer, l0> pVar) {
        Map<LayoutNode, NodeState> map = this.nodeToNodeState;
        NodeState nodeState = map.get(layoutNode);
        if (nodeState == null) {
            nodeState = new NodeState(obj, ComposableSingletons$SubcomposeLayoutKt.INSTANCE.a(), null, 4, null);
            map.put(layoutNode, nodeState);
        }
        NodeState nodeState2 = nodeState;
        Composition compositionB = nodeState2.b();
        boolean zW = compositionB != null ? compositionB.w() : true;
        if (nodeState2.c() != pVar || zW || nodeState2.d()) {
            nodeState2.h(pVar);
            x(layoutNode, nodeState2);
            nodeState2.i(false);
        }
    }

    @ComposableInferredTarget
    private final Composition z(Composition composition, LayoutNode layoutNode, CompositionContext compositionContext, p<? super Composer, ? super Integer, l0> pVar) {
        if (composition == null || composition.u()) {
            composition = Wrapper_androidKt.a(layoutNode, compositionContext);
        }
        composition.v(pVar);
        return composition;
    }

    @NotNull
    public final MeasurePolicy k(@NotNull final p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> block) {
        t.j(block, "block");
        final String str = this.NoIntrinsicsMessage;
        return new LayoutNode.NoIntrinsicsMeasurePolicy(str) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
                t.j(measure, "$this$measure");
                t.j(measurables, "measurables");
                this.this$0.scope.p(measure.getLayoutDirection());
                this.this$0.scope.e(measure.getDensity());
                this.this$0.scope.m(measure.E0());
                this.this$0.currentIndex = 0;
                final MeasureResult measureResultInvoke = block.invoke(this.this$0.scope, Constraints.b(j6));
                final int i10 = this.this$0.currentIndex;
                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.this$0;
                return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1
                    @Override // androidx.compose.ui.layout.MeasureResult
                    @NotNull
                    public Map<AlignmentLine, Integer> c() {
                        return measureResultInvoke.c();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public void d() {
                        layoutNodeSubcompositionsState.currentIndex = i10;
                        measureResultInvoke.d();
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                        layoutNodeSubcompositionsState2.n(layoutNodeSubcompositionsState2.currentIndex);
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getHeight() {
                        return measureResultInvoke.getHeight();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getWidth() {
                        return measureResultInvoke.getWidth();
                    }
                };
            }
        };
    }

    public final void m() {
        LayoutNode layoutNode = this.root;
        layoutNode.ignoreRemeasureRequests = true;
        Iterator<T> it = this.nodeToNodeState.values().iterator();
        while (it.hasNext()) {
            Composition compositionB = ((NodeState) it.next()).b();
            if (compositionB != null) {
                compositionB.t();
            }
        }
        this.root.d1();
        layoutNode.ignoreRemeasureRequests = false;
        this.nodeToNodeState.clear();
        this.slotIdToNode.clear();
        this.precomposedCount = 0;
        this.reusableCount = 0;
        this.precomposeMap.clear();
        q();
    }

    public final void o() {
        Iterator<Map.Entry<LayoutNode, NodeState>> it = this.nodeToNodeState.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().i(true);
        }
        if (this.root.i0()) {
            return;
        }
        LayoutNode.j1(this.root, false, 1, null);
    }

    public final void q() {
        if (this.nodeToNodeState.size() != this.root.W().size()) {
            throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.nodeToNodeState.size() + ") and the children count on the SubcomposeLayout (" + this.root.W().size() + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
        }
        if ((this.root.W().size() - this.reusableCount) - this.precomposedCount >= 0) {
            if (this.precomposeMap.size() == this.precomposedCount) {
                return;
            }
            throw new IllegalArgumentException(("Incorrect state. Precomposed children " + this.precomposedCount + ". Map size " + this.precomposeMap.size()).toString());
        }
        throw new IllegalArgumentException(("Incorrect state. Total children " + this.root.W().size() + ". Reusable children " + this.reusableCount + ". Precomposed children " + this.precomposedCount).toString());
    }

    @NotNull
    public final SubcomposeLayoutState.PrecomposedSlotHandle t(@Nullable final Object obj, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(content, "content");
        q();
        if (!this.slotIdToNode.containsKey(obj)) {
            Map<Object, LayoutNode> map = this.precomposeMap;
            LayoutNode layoutNodeA = map.get(obj);
            if (layoutNodeA == null) {
                layoutNodeA = A(obj);
                if (layoutNodeA != null) {
                    r(this.root.W().indexOf(layoutNodeA), this.root.W().size(), 1);
                    this.precomposedCount++;
                } else {
                    layoutNodeA = l(this.root.W().size());
                    this.precomposedCount++;
                }
                map.put(obj, layoutNodeA);
            }
            y(layoutNodeA, obj, content);
        }
        return new SubcomposeLayoutState.PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precompose$1
            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public int a() {
                MutableVector<LayoutNode> mutableVectorZ0;
                LayoutNode layoutNode = (LayoutNode) this.this$0.precomposeMap.get(obj);
                if (layoutNode == null || (mutableVectorZ0 = layoutNode.z0()) == null) {
                    return 0;
                }
                return mutableVectorZ0.n();
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void b(int i10, long j6) {
                LayoutNode layoutNode = (LayoutNode) this.this$0.precomposeMap.get(obj);
                if (layoutNode == null || !layoutNode.K0()) {
                    return;
                }
                int iN = layoutNode.z0().n();
                if (i10 < 0 || i10 >= iN) {
                    throw new IndexOutOfBoundsException("Index (" + i10 + ") is out of bound of [0, " + iN + ')');
                }
                if (!(!layoutNode.i())) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                LayoutNode layoutNode2 = this.this$0.root;
                layoutNode2.ignoreRemeasureRequests = true;
                LayoutNodeKt.a(layoutNode).e(layoutNode.z0().m()[i10], j6);
                layoutNode2.ignoreRemeasureRequests = false;
            }

            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void t() {
                this.this$0.q();
                LayoutNode layoutNode = (LayoutNode) this.this$0.precomposeMap.remove(obj);
                if (layoutNode != null) {
                    if (this.this$0.precomposedCount <= 0) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    int iIndexOf = this.this$0.root.W().indexOf(layoutNode);
                    if (iIndexOf < this.this$0.root.W().size() - this.this$0.precomposedCount) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    this.this$0.reusableCount++;
                    this.this$0.precomposedCount--;
                    int size = (this.this$0.root.W().size() - this.this$0.precomposedCount) - this.this$0.reusableCount;
                    this.this$0.r(iIndexOf, size, 1);
                    this.this$0.n(size);
                }
            }
        };
    }

    public final void v(@NotNull SubcomposeSlotReusePolicy value) {
        t.j(value, "value");
        if (this.slotReusePolicy != value) {
            this.slotReusePolicy = value;
            n(0);
        }
    }

    @NotNull
    public final List<Measurable> w(@Nullable Object obj, @NotNull p<? super Composer, ? super Integer, l0> content) {
        t.j(content, "content");
        q();
        LayoutNode.LayoutState layoutStateG0 = this.root.g0();
        if (layoutStateG0 != LayoutNode.LayoutState.Measuring && layoutStateG0 != LayoutNode.LayoutState.LayingOut) {
            throw new IllegalStateException("subcompose can only be used inside the measure or layout blocks".toString());
        }
        Map<Object, LayoutNode> map = this.slotIdToNode;
        LayoutNode layoutNodeRemove = map.get(obj);
        if (layoutNodeRemove == null) {
            layoutNodeRemove = this.precomposeMap.remove(obj);
            if (layoutNodeRemove != null) {
                int i10 = this.precomposedCount;
                if (i10 <= 0) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                this.precomposedCount = i10 - 1;
            } else {
                layoutNodeRemove = A(obj);
                if (layoutNodeRemove == null) {
                    layoutNodeRemove = l(this.currentIndex);
                }
            }
            map.put(obj, layoutNodeRemove);
        }
        LayoutNode layoutNode = layoutNodeRemove;
        int iIndexOf = this.root.W().indexOf(layoutNode);
        int i11 = this.currentIndex;
        if (iIndexOf >= i11) {
            if (i11 != iIndexOf) {
                s(this, iIndexOf, i11, 0, 4, null);
            }
            this.currentIndex++;
            y(layoutNode, obj, content);
            return layoutNode.S();
        }
        throw new IllegalArgumentException("Key " + obj + " was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.");
    }
}
