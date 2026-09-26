package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class OuterMeasurablePlaceable extends Placeable implements Measurable {
    private boolean duringAlignmentLinesQuery;

    @Nullable
    private l<? super GraphicsLayerScope, l0> lastLayerBlock;
    private long lastPosition;
    private float lastZIndex;

    @NotNull
    private final LayoutNode layoutNode;
    private boolean measuredOnce;

    @NotNull
    private LayoutNodeWrapper outerWrapper;

    @Nullable
    private Object parentData;
    private boolean placedOnce;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
            iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
            iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public final boolean W0() {
        return this.duringAlignmentLinesQuery;
    }

    @NotNull
    public final LayoutNodeWrapper Y0() {
        return this.outerWrapper;
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object e() {
        return this.parentData;
    }

    public final void f1(@NotNull LayoutNodeWrapper layoutNodeWrapper) {
        t.j(layoutNodeWrapper, "<set-?>");
        this.outerWrapper = layoutNodeWrapper;
    }

    public OuterMeasurablePlaceable(@NotNull LayoutNode layoutNode, @NotNull LayoutNodeWrapper outerWrapper) {
        t.j(layoutNode, "layoutNode");
        t.j(outerWrapper, "outerWrapper");
        this.layoutNode = layoutNode;
        this.outerWrapper = outerWrapper;
        this.lastPosition = IntOffset.Companion.a();
    }

    private final void a1() {
        LayoutNode.UsageByParent usageByParentE0;
        LayoutNode.j1(this.layoutNode, false, 1, null);
        LayoutNode layoutNodeT0 = this.layoutNode.t0();
        if (layoutNodeT0 == null || this.layoutNode.e0() != LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        LayoutNode layoutNode = this.layoutNode;
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutNodeT0.g0().ordinal()];
        if (i10 != 1) {
            usageByParentE0 = i10 != 2 ? layoutNodeT0.e0() : LayoutNode.UsageByParent.InLayoutBlock;
        } else {
            usageByParentE0 = LayoutNode.UsageByParent.InMeasureBlock;
        }
        layoutNode.p1(usageByParentE0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b1(long j6, float f, l<? super GraphicsLayerScope, l0> lVar) {
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        if (lVar == null) {
            companion.k(this.outerWrapper, j6, f);
        } else {
            companion.w(this.outerWrapper, j6, f, lVar);
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    public int C0() {
        return this.outerWrapper.C0();
    }

    @Override // androidx.compose.ui.layout.Placeable
    public int M0() {
        return this.outerWrapper.M0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.Placeable
    public void R0(long j6, float f, @Nullable l<? super GraphicsLayerScope, l0> lVar) {
        this.lastPosition = j6;
        this.lastZIndex = f;
        this.lastLayerBlock = lVar;
        LayoutNodeWrapper layoutNodeWrapperG1 = this.outerWrapper.G1();
        if (layoutNodeWrapperG1 != null && layoutNodeWrapperG1.P1()) {
            b1(j6, f, lVar);
            return;
        }
        this.placedOnce = true;
        this.layoutNode.Q().p(false);
        LayoutNodeKt.a(this.layoutNode).getSnapshotObserver().b(this.layoutNode, new OuterMeasurablePlaceable$placeAt$1(this, j6, f, lVar));
    }

    @Nullable
    public final Constraints X0() {
        if (this.measuredOnce) {
            return Constraints.b(N0());
        }
        return null;
    }

    public final void Z0(boolean z6) {
        LayoutNode layoutNodeT0;
        LayoutNode layoutNodeT1 = this.layoutNode.t0();
        LayoutNode.UsageByParent usageByParentE0 = this.layoutNode.e0();
        if (layoutNodeT1 == null || usageByParentE0 == LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        while (layoutNodeT1.e0() == usageByParentE0 && (layoutNodeT0 = layoutNodeT1.t0()) != null) {
            layoutNodeT1 = layoutNodeT0;
        }
        int i10 = WhenMappings.$EnumSwitchMapping$1[usageByParentE0.ordinal()];
        if (i10 == 1) {
            layoutNodeT1.i1(z6);
        } else {
            if (i10 != 2) {
                throw new IllegalStateException("Intrinsics isn't used by the parent".toString());
            }
            layoutNodeT1.g1(z6);
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    public Placeable b0(long j6) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNode layoutNodeT0 = this.layoutNode.t0();
        if (layoutNodeT0 == null) {
            this.layoutNode.q1(LayoutNode.UsageByParent.NotUsed);
        } else {
            if (this.layoutNode.l0() != LayoutNode.UsageByParent.NotUsed && !this.layoutNode.R()) {
                throw new IllegalStateException(("measure() may not be called multiple times on the same Measurable. Current state " + this.layoutNode.l0() + ". Parent state " + layoutNodeT0.g0() + '.').toString());
            }
            LayoutNode layoutNode = this.layoutNode;
            int i10 = WhenMappings.$EnumSwitchMapping$0[layoutNodeT0.g0().ordinal()];
            if (i10 == 1) {
                usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Measurable could be only measured from the parent's measure or layout block.Parents state is " + layoutNodeT0.g0());
                }
                usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
            }
            layoutNode.q1(usageByParent);
        }
        d1(j6);
        return this;
    }

    @Override // androidx.compose.ui.layout.Measured
    public int c0(@NotNull AlignmentLine alignmentLine) {
        t.j(alignmentLine, "alignmentLine");
        LayoutNode layoutNodeT0 = this.layoutNode.t0();
        if ((layoutNodeT0 != null ? layoutNodeT0.g0() : null) == LayoutNode.LayoutState.Measuring) {
            this.layoutNode.Q().s(true);
        } else {
            LayoutNode layoutNodeT1 = this.layoutNode.t0();
            if ((layoutNodeT1 != null ? layoutNodeT1.g0() : null) == LayoutNode.LayoutState.LayingOut) {
                this.layoutNode.Q().r(true);
            }
        }
        this.duringAlignmentLinesQuery = true;
        int iC0 = this.outerWrapper.c0(alignmentLine);
        this.duringAlignmentLinesQuery = false;
        return iC0;
    }

    public final void c1() {
        this.parentData = this.outerWrapper.e();
    }

    public final boolean d1(long j6) {
        Owner ownerA = LayoutNodeKt.a(this.layoutNode);
        LayoutNode layoutNodeT0 = this.layoutNode.t0();
        LayoutNode layoutNode = this.layoutNode;
        boolean z6 = true;
        layoutNode.n1(layoutNode.R() || (layoutNodeT0 != null && layoutNodeT0.R()));
        if (!this.layoutNode.i0() && Constraints.g(N0(), j6)) {
            ownerA.j(this.layoutNode);
            this.layoutNode.l1();
            return false;
        }
        this.layoutNode.Q().q(false);
        MutableVector<LayoutNode> mutableVectorZ0 = this.layoutNode.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                layoutNodeArrM[i10].Q().s(false);
                i10++;
            } while (i10 < iN);
        }
        this.measuredOnce = true;
        long jA = this.outerWrapper.a();
        U0(j6);
        this.layoutNode.Y0(j6);
        if (IntSize.e(this.outerWrapper.a(), jA) && this.outerWrapper.Q0() == Q0() && this.outerWrapper.B0() == B0()) {
            z6 = false;
        }
        T0(IntSizeKt.a(this.outerWrapper.Q0(), this.outerWrapper.B0()));
        return z6;
    }

    public final void e1() {
        if (!this.placedOnce) {
            throw new IllegalStateException("Check failed.".toString());
        }
        R0(this.lastPosition, this.lastZIndex, this.lastLayerBlock);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int M(int i10) {
        a1();
        return this.outerWrapper.M(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int V(int i10) {
        a1();
        return this.outerWrapper.V(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int Y(int i10) {
        a1();
        return this.outerWrapper.Y(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int a0(int i10) {
        a1();
        return this.outerWrapper.a0(i10);
    }
}
