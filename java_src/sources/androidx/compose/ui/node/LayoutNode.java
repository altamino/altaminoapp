package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusOrderModifierToProperties;
import androidx.compose.ui.focus.FocusPropertiesModifier;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.input.pointer.PointerInputFilter;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutNode implements Measurable, Remeasurement, OwnerScope, LayoutInfo, ComposeUiNode, Owner.OnLayoutCompletedListener {
    public static final int NotPlacedPlaceOrder = Integer.MAX_VALUE;

    @NotNull
    private final Comparator<LayoutNode> ZComparator;

    @NotNull
    private final MutableVector<LayoutNode> _foldedChildren;

    @Nullable
    private LayoutNode _foldedParent;

    @Nullable
    private LayoutNodeWrapper _innerLayerWrapper;

    @Nullable
    private MutableVector<LayoutNode> _unfoldedChildren;

    @NotNull
    private final MutableVector<LayoutNode> _zSortedChildren;

    @NotNull
    private final LayoutNodeAlignmentLines alignmentLines;
    private boolean canMultiMeasure;

    @NotNull
    private Density density;
    private int depth;
    private boolean ignoreRemeasureRequests;
    private boolean innerLayerWrapperIsDirty;

    @NotNull
    private final LayoutNodeWrapper innerLayoutNodeWrapper;

    @NotNull
    private final IntrinsicsPolicy intrinsicsPolicy;

    @NotNull
    private UsageByParent intrinsicsUsageByParent;
    private boolean isPlaced;
    private final boolean isVirtual;

    @NotNull
    private LayoutDirection layoutDirection;
    private boolean layoutPending;

    @NotNull
    private LayoutState layoutState;
    private boolean measurePending;

    @NotNull
    private MeasurePolicy measurePolicy;

    @NotNull
    private final MeasureScope measureScope;

    @NotNull
    private UsageByParent measuredByParent;

    @NotNull
    private Modifier modifier;

    @NotNull
    private final ModifierLocalProviderEntity modifierLocalsHead;

    @NotNull
    private ModifierLocalProviderEntity modifierLocalsTail;
    private boolean needsOnPositionedDispatch;
    private int nextChildPlaceOrder;

    @Nullable
    private l<? super Owner, l0> onAttach;

    @Nullable
    private l<? super Owner, l0> onDetach;

    @Nullable
    private MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> onPositionedCallbacks;

    @NotNull
    private final OuterMeasurablePlaceable outerMeasurablePlaceable;

    @Nullable
    private Owner owner;
    private int placeOrder;

    @NotNull
    private UsageByParent previousIntrinsicsUsageByParent;
    private int previousPlaceOrder;
    private boolean relayoutWithoutParentInProgress;

    @Nullable
    private LayoutNodeSubcompositionsState subcompositionsState;
    private boolean unfoldedVirtualChildrenListDirty;

    @NotNull
    private ViewConfiguration viewConfiguration;
    private int virtualChildrenCount;

    @NotNull
    private MutableVector<ModifiedLayoutNode> wrapperCache;
    private float zIndex;
    private boolean zSortedChildrenInvalidated;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final NoIntrinsicsMeasurePolicy ErrorMeasurePolicy = new NoIntrinsicsMeasurePolicy() { // from class: androidx.compose.ui.node.LayoutNode$Companion$ErrorMeasurePolicy$1
        @NotNull
        public Void j(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
            t.j(measure, "$this$measure");
            t.j(measurables, "measurables");
            throw new IllegalStateException("Undefined measure and it is required".toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ MeasureResult a(MeasureScope measureScope, List list, long j6) {
            return (MeasureResult) j(measureScope, list, j6);
        }
    };

    @NotNull
    private static final e8.a<LayoutNode> Constructor = LayoutNode$Companion$Constructor$1.INSTANCE;

    @NotNull
    private static final ViewConfiguration DummyViewConfiguration = new ViewConfiguration() { // from class: androidx.compose.ui.node.LayoutNode$Companion$DummyViewConfiguration$1
        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long a() {
            return 40L;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public float b() {
            return 16.0f;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long c() {
            return 300L;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long d() {
            return 400L;
        }

        @Override // androidx.compose.ui.platform.ViewConfiguration
        public long e() {
            return DpSize.Companion.b();
        }
    };

    @NotNull
    private static final ProvidableModifierLocal ModifierLocalNothing = ModifierLocalKt.a(LayoutNode$Companion$ModifierLocalNothing$1.INSTANCE);

    @NotNull
    private static final LayoutNode$Companion$SentinelModifierLocalProvider$1 SentinelModifierLocalProvider = new ModifierLocalProvider() { // from class: androidx.compose.ui.node.LayoutNode$Companion$SentinelModifierLocalProvider$1
        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier B(Modifier modifier) {
            return androidx.compose.ui.a.a(this, modifier);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object V(Object obj, p pVar) {
            return androidx.compose.ui.b.c(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object a0(Object obj, p pVar) {
            return androidx.compose.ui.b.b(this, obj, pVar);
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean d0(l lVar) {
            return androidx.compose.ui.b.a(this, lVar);
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void getValue() {
            throw new IllegalStateException("Sentinel ModifierLocal shouldn't be read".toString());
        }

        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal getKey() {
            return LayoutNode.ModifierLocalNothing;
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final e8.a<LayoutNode> a() {
            return LayoutNode.Constructor;
        }
    }

    public enum LayoutState {
        Measuring,
        LayingOut,
        Idle
    }

    public static abstract class NoIntrinsicsMeasurePolicy implements MeasurePolicy {

        @NotNull
        private final String error;

        public NoIntrinsicsMeasurePolicy(@NotNull String error) {
            t.j(error, "error");
            this.error = error;
        }

        @NotNull
        public Void f(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @NotNull
        public Void g(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @NotNull
        public Void h(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @NotNull
        public Void i(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
            t.j(intrinsicMeasureScope, "<this>");
            t.j(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) h(intrinsicMeasureScope, list, i10)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) i(intrinsicMeasureScope, list, i10)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) f(intrinsicMeasureScope, list, i10)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return ((Number) g(intrinsicMeasureScope, list, i10)).intValue();
        }
    }

    public enum UsageByParent {
        InMeasureBlock,
        InLayoutBlock,
        NotUsed
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutState.values().length];
            iArr[LayoutState.Idle.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LayoutNode() {
        this(false, 1, null);
    }

    private final void O0() {
        this.isPlaced = true;
        LayoutNodeWrapper layoutNodeWrapperF1 = this.innerLayoutNodeWrapper.F1();
        for (LayoutNodeWrapper layoutNodeWrapperR0 = r0(); !t.e(layoutNodeWrapperR0, layoutNodeWrapperF1) && layoutNodeWrapperR0 != null; layoutNodeWrapperR0 = layoutNodeWrapperR0.F1()) {
            if (layoutNodeWrapperR0.u1()) {
                layoutNodeWrapperR0.M1();
            }
        }
        MutableVector<LayoutNode> mutableVectorZ0 = z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.placeOrder != Integer.MAX_VALUE) {
                    layoutNode.O0();
                    k1(layoutNode);
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final void V0() {
        j1(this, false, 1, null);
        LayoutNode layoutNodeT0 = t0();
        if (layoutNodeT0 != null) {
            layoutNodeT0.H0();
        }
        I0();
    }

    public boolean K0() {
        return this.owner != null;
    }

    public final void M0() {
        this.layoutPending = true;
    }

    public final void N0() {
        this.measurePending = true;
    }

    @NotNull
    public final LayoutNodeAlignmentLines Q() {
        return this.alignmentLines;
    }

    public final boolean R() {
        return this.canMultiMeasure;
    }

    @NotNull
    public Density T() {
        return this.density;
    }

    public final int U() {
        return this.depth;
    }

    @Override // androidx.compose.ui.layout.Remeasurement
    public void a() {
        j1(this, false, 1, null);
        Constraints constraintsX0 = this.outerMeasurablePlaceable.X0();
        if (constraintsX0 != null) {
            Owner owner = this.owner;
            if (owner != null) {
                owner.e(this, constraintsX0.t());
                return;
            }
            return;
        }
        Owner owner2 = this.owner;
        if (owner2 != null) {
            b.a(owner2, false, 1, null);
        }
    }

    @NotNull
    public final LayoutNodeWrapper c0() {
        return this.innerLayoutNodeWrapper;
    }

    @NotNull
    public final IntrinsicsPolicy d0() {
        return this.intrinsicsPolicy;
    }

    @NotNull
    public final UsageByParent e0() {
        return this.intrinsicsUsageByParent;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    @NotNull
    public LayoutCoordinates f() {
        return this.innerLayoutNodeWrapper;
    }

    public final boolean f0() {
        return this.layoutPending;
    }

    @NotNull
    public final LayoutState g0() {
        return this.layoutState;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void h(@NotNull ViewConfiguration viewConfiguration) {
        t.j(viewConfiguration, "<set-?>");
        this.viewConfiguration = viewConfiguration;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public boolean i() {
        return this.isPlaced;
    }

    public final boolean i0() {
        return this.measurePending;
    }

    @NotNull
    public MeasurePolicy j0() {
        return this.measurePolicy;
    }

    @NotNull
    public final MeasureScope k0() {
        return this.measureScope;
    }

    @NotNull
    public final UsageByParent l0() {
        return this.measuredByParent;
    }

    @NotNull
    public Modifier m0() {
        return this.modifier;
    }

    @NotNull
    public final ModifierLocalProviderEntity n0() {
        return this.modifierLocalsHead;
    }

    public final void n1(boolean z6) {
        this.canMultiMeasure = z6;
    }

    @NotNull
    public final ModifierLocalProviderEntity o0() {
        return this.modifierLocalsTail;
    }

    public final void o1(boolean z6) {
        this.innerLayerWrapperIsDirty = z6;
    }

    public final boolean p0() {
        return this.needsOnPositionedDispatch;
    }

    public final void p1(@NotNull UsageByParent usageByParent) {
        t.j(usageByParent, "<set-?>");
        this.intrinsicsUsageByParent = usageByParent;
    }

    public final void q1(@NotNull UsageByParent usageByParent) {
        t.j(usageByParent, "<set-?>");
        this.measuredByParent = usageByParent;
    }

    @Nullable
    public final Owner s0() {
        return this.owner;
    }

    public final void s1(boolean z6) {
        this.needsOnPositionedDispatch = z6;
    }

    public final void t1(@Nullable l<? super Owner, l0> lVar) {
        this.onAttach = lVar;
    }

    public final int u0() {
        return this.placeOrder;
    }

    public final void u1(@Nullable l<? super Owner, l0> lVar) {
        this.onDetach = lVar;
    }

    @Nullable
    public final LayoutNodeSubcompositionsState v0() {
        return this.subcompositionsState;
    }

    public final void v1(@Nullable LayoutNodeSubcompositionsState layoutNodeSubcompositionsState) {
        this.subcompositionsState = layoutNodeSubcompositionsState;
    }

    @NotNull
    public ViewConfiguration w0() {
        return this.viewConfiguration;
    }

    public LayoutNode(boolean z6) {
        this.isVirtual = z6;
        this._foldedChildren = new MutableVector<>(new LayoutNode[16], 0);
        this.layoutState = LayoutState.Idle;
        this.wrapperCache = new MutableVector<>(new ModifiedLayoutNode[16], 0);
        this._zSortedChildren = new MutableVector<>(new LayoutNode[16], 0);
        this.zSortedChildrenInvalidated = true;
        this.measurePolicy = ErrorMeasurePolicy;
        this.intrinsicsPolicy = new IntrinsicsPolicy(this);
        this.density = DensityKt.b(1.0f, 0.0f, 2, null);
        this.measureScope = new LayoutNode$measureScope$1(this);
        this.layoutDirection = LayoutDirection.Ltr;
        this.viewConfiguration = DummyViewConfiguration;
        this.alignmentLines = new LayoutNodeAlignmentLines(this);
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.measuredByParent = usageByParent;
        this.intrinsicsUsageByParent = usageByParent;
        this.previousIntrinsicsUsageByParent = usageByParent;
        InnerPlaceable innerPlaceable = new InnerPlaceable(this);
        this.innerLayoutNodeWrapper = innerPlaceable;
        this.outerMeasurablePlaceable = new OuterMeasurablePlaceable(this, innerPlaceable);
        this.innerLayerWrapperIsDirty = true;
        ModifierLocalProviderEntity modifierLocalProviderEntity = new ModifierLocalProviderEntity(this, SentinelModifierLocalProvider);
        this.modifierLocalsHead = modifierLocalProviderEntity;
        this.modifierLocalsTail = modifierLocalProviderEntity;
        this.modifier = Modifier.Companion;
        this.ZComparator = new Comparator() { // from class: androidx.compose.ui.node.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LayoutNode.l((LayoutNode) obj, (LayoutNode) obj2);
            }
        };
    }

    private final boolean B0() {
        return ((Boolean) m0().V(Boolean.FALSE, new LayoutNode$hasNewPositioningCallback$1(this.onPositionedCallbacks))).booleanValue();
    }

    private final void D() {
        if (this.layoutState != LayoutState.Measuring) {
            this.alignmentLines.p(true);
            return;
        }
        this.alignmentLines.q(true);
        if (this.alignmentLines.a()) {
            M0();
        }
    }

    public static /* synthetic */ void D0(LayoutNode layoutNode, long j6, HitTestResult hitTestResult, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        boolean z11 = z6;
        if ((i10 & 8) != 0) {
            z10 = true;
        }
        layoutNode.C0(j6, hitTestResult, z11, z10);
    }

    private final void G() {
        this.previousIntrinsicsUsageByParent = this.intrinsicsUsageByParent;
        this.intrinsicsUsageByParent = UsageByParent.NotUsed;
        MutableVector<LayoutNode> mutableVectorZ0 = z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.intrinsicsUsageByParent != UsageByParent.NotUsed) {
                    layoutNode.G();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final void H() {
        this.previousIntrinsicsUsageByParent = this.intrinsicsUsageByParent;
        this.intrinsicsUsageByParent = UsageByParent.NotUsed;
        MutableVector<LayoutNode> mutableVectorZ0 = z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.intrinsicsUsageByParent == UsageByParent.InLayoutBlock) {
                    layoutNode.H();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final String J(int i10) {
        StringBuilder sb = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb.append("  ");
        }
        sb.append("|-");
        sb.append(toString());
        sb.append('\n');
        MutableVector<LayoutNode> mutableVectorZ0 = z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i12 = 0;
            do {
                sb.append(layoutNodeArrM[i12].J(i10 + 1));
                i12++;
            } while (i12 < iN);
        }
        String string = sb.toString();
        t.i(string, "tree.toString()");
        if (i10 != 0) {
            return string;
        }
        String strSubstring = string.substring(0, string.length() - 1);
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    private final void J0() {
        LayoutNode layoutNodeT0;
        if (this.virtualChildrenCount > 0) {
            this.unfoldedVirtualChildrenListDirty = true;
        }
        if (!this.isVirtual || (layoutNodeT0 = t0()) == null) {
            return;
        }
        layoutNodeT0.unfoldedVirtualChildrenListDirty = true;
    }

    static /* synthetic */ String K(LayoutNode layoutNode, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return layoutNode.J(i10);
    }

    private final void P0(Modifier modifier) {
        MutableVector<ModifiedLayoutNode> mutableVector = this.wrapperCache;
        int iN = mutableVector.n();
        if (iN > 0) {
            ModifiedLayoutNode[] modifiedLayoutNodeArrM = mutableVector.m();
            int i10 = 0;
            do {
                modifiedLayoutNodeArrM[i10].o2(false);
                i10++;
            } while (i10 < iN);
        }
        modifier.a0(l0.INSTANCE, new LayoutNode$markReusedModifiers$2(this));
    }

    private final void U0(LayoutNode layoutNode) {
        if (this.owner != null) {
            layoutNode.L();
        }
        layoutNode._foldedParent = null;
        layoutNode.r0().d2(null);
        if (layoutNode.isVirtual) {
            this.virtualChildrenCount--;
            MutableVector<LayoutNode> mutableVector = layoutNode._foldedChildren;
            int iN = mutableVector.n();
            if (iN > 0) {
                LayoutNode[] layoutNodeArrM = mutableVector.m();
                int i10 = 0;
                do {
                    layoutNodeArrM[i10].r0().d2(null);
                    i10++;
                } while (i10 < iN);
            }
        }
        J0();
        X0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0() {
        if (!this.isVirtual) {
            this.zSortedChildrenInvalidated = true;
            return;
        }
        LayoutNode layoutNodeT0 = t0();
        if (layoutNodeT0 != null) {
            layoutNodeT0.X0();
        }
    }

    private final LayoutNodeWrapper Z() {
        if (this.innerLayerWrapperIsDirty) {
            LayoutNodeWrapper layoutNodeWrapperG1 = this.innerLayoutNodeWrapper;
            LayoutNodeWrapper layoutNodeWrapperG2 = r0().G1();
            this._innerLayerWrapper = null;
            while (!t.e(layoutNodeWrapperG1, layoutNodeWrapperG2)) {
                if ((layoutNodeWrapperG1 != null ? layoutNodeWrapperG1.v1() : null) != null) {
                    this._innerLayerWrapper = layoutNodeWrapperG1;
                    break;
                }
                layoutNodeWrapperG1 = layoutNodeWrapperG1 != null ? layoutNodeWrapperG1.G1() : null;
            }
        }
        LayoutNodeWrapper layoutNodeWrapper = this._innerLayerWrapper;
        if (layoutNodeWrapper == null || layoutNodeWrapper.v1() != null) {
            return layoutNodeWrapper;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    private final void a1() {
        if (this.unfoldedVirtualChildrenListDirty) {
            int i10 = 0;
            this.unfoldedVirtualChildrenListDirty = false;
            MutableVector<LayoutNode> mutableVector = this._unfoldedChildren;
            if (mutableVector == null) {
                mutableVector = new MutableVector<>(new LayoutNode[16], 0);
                this._unfoldedChildren = mutableVector;
            }
            mutableVector.h();
            MutableVector<LayoutNode> mutableVector2 = this._foldedChildren;
            int iN = mutableVector2.n();
            if (iN > 0) {
                LayoutNode[] layoutNodeArrM = mutableVector2.m();
                do {
                    LayoutNode layoutNode = layoutNodeArrM[i10];
                    if (layoutNode.isVirtual) {
                        mutableVector.c(mutableVector.n(), layoutNode.z0());
                    } else {
                        mutableVector.b(layoutNode);
                    }
                    i10++;
                } while (i10 < iN);
            }
        }
    }

    public static /* synthetic */ boolean c1(LayoutNode layoutNode, Constraints constraints, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            constraints = layoutNode.outerMeasurablePlaceable.X0();
        }
        return layoutNode.b1(constraints);
    }

    public static /* synthetic */ void h1(LayoutNode layoutNode, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        layoutNode.g1(z6);
    }

    public static /* synthetic */ void j1(LayoutNode layoutNode, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        layoutNode.i1(z6);
    }

    private final void k1(LayoutNode layoutNode) {
        if (WhenMappings.$EnumSwitchMapping$0[layoutNode.layoutState.ordinal()] != 1) {
            throw new IllegalStateException("Unexpected state " + layoutNode.layoutState);
        }
        if (layoutNode.measurePending) {
            layoutNode.i1(true);
        } else if (layoutNode.layoutPending) {
            layoutNode.g1(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int l(LayoutNode layoutNode, LayoutNode layoutNode2) {
        float f = layoutNode.zIndex;
        float f6 = layoutNode2.zIndex;
        return f == f6 ? t.l(layoutNode.placeOrder, layoutNode2.placeOrder) : Float.compare(f, f6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ModifiedLayoutNode m1(LayoutNodeWrapper layoutNodeWrapper, LayoutModifier layoutModifier) {
        int i10;
        if (this.wrapperCache.p()) {
            return null;
        }
        MutableVector<ModifiedLayoutNode> mutableVector = this.wrapperCache;
        int iN = mutableVector.n();
        int i11 = -1;
        if (iN <= 0) {
            i10 = -1;
            break;
        }
        i10 = iN - 1;
        ModifiedLayoutNode[] modifiedLayoutNodeArrM = mutableVector.m();
        while (true) {
            ModifiedLayoutNode modifiedLayoutNode = modifiedLayoutNodeArrM[i10];
            if (modifiedLayoutNode.l2() && modifiedLayoutNode.k2() == layoutModifier) {
                break;
            }
            i10--;
            if (i10 < 0) {
                i10 = -1;
                break;
            }
        }
        if (i10 < 0) {
            MutableVector<ModifiedLayoutNode> mutableVector2 = this.wrapperCache;
            int iN2 = mutableVector2.n();
            if (iN2 > 0) {
                int i12 = iN2 - 1;
                ModifiedLayoutNode[] modifiedLayoutNodeArrM2 = mutableVector2.m();
                do {
                    if (!modifiedLayoutNodeArrM2[i12].l2()) {
                        i11 = i12;
                        break;
                    }
                    i12--;
                } while (i12 >= 0);
            }
            i10 = i11;
        }
        if (i10 < 0) {
            return null;
        }
        ModifiedLayoutNode modifiedLayoutNodeV = this.wrapperCache.v(i10);
        modifiedLayoutNodeV.n2(layoutModifier);
        modifiedLayoutNodeV.p2(layoutNodeWrapper);
        return modifiedLayoutNodeV;
    }

    private final void r1(Modifier modifier) {
        int i10 = 0;
        MutableVector mutableVector = new MutableVector(new ModifierLocalConsumerEntity[16], 0);
        for (ModifierLocalProviderEntity modifierLocalProviderEntityH = this.modifierLocalsHead; modifierLocalProviderEntityH != null; modifierLocalProviderEntityH = modifierLocalProviderEntityH.h()) {
            mutableVector.c(mutableVector.n(), modifierLocalProviderEntityH.e());
            modifierLocalProviderEntityH.e().h();
        }
        ModifierLocalProviderEntity modifierLocalProviderEntity = (ModifierLocalProviderEntity) modifier.a0(this.modifierLocalsHead, new LayoutNode$setModifierLocals$1(this, mutableVector));
        this.modifierLocalsTail = modifierLocalProviderEntity;
        this.modifierLocalsTail.l(null);
        if (K0()) {
            int iN = mutableVector.n();
            if (iN > 0) {
                Object[] objArrM = mutableVector.m();
                do {
                    ((ModifierLocalConsumerEntity) objArrM[i10]).d();
                    i10++;
                } while (i10 < iN);
            }
            for (ModifierLocalProviderEntity modifierLocalProviderEntityH2 = modifierLocalProviderEntity.h(); modifierLocalProviderEntityH2 != null; modifierLocalProviderEntityH2 = modifierLocalProviderEntityH2.h()) {
                modifierLocalProviderEntityH2.c();
            }
            for (ModifierLocalProviderEntity modifierLocalProviderEntityH3 = this.modifierLocalsHead; modifierLocalProviderEntityH3 != null; modifierLocalProviderEntityH3 = modifierLocalProviderEntityH3.h()) {
                modifierLocalProviderEntityH3.b();
            }
        }
    }

    public final void A0(@NotNull MeasureResult measureResult) {
        t.j(measureResult, "measureResult");
        this.innerLayoutNodeWrapper.b2(measureResult);
    }

    public final void C0(long j6, @NotNull HitTestResult<PointerInputFilter> hitTestResult, boolean z6, boolean z10) {
        t.j(hitTestResult, "hitTestResult");
        r0().K1(LayoutNodeWrapper.Companion.a(), r0().q1(j6), hitTestResult, z6, z10);
    }

    public final void E(@NotNull Owner owner) {
        t.j(owner, "owner");
        if (this.owner != null) {
            throw new IllegalStateException(("Cannot attach " + this + " as it already is attached.  Tree: " + K(this, 0, 1, null)).toString());
        }
        LayoutNode layoutNode = this._foldedParent;
        if (layoutNode != null) {
            if (!t.e(layoutNode != null ? layoutNode.owner : null, owner)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Attaching to a different owner(");
                sb.append(owner);
                sb.append(") than the parent's owner(");
                LayoutNode layoutNodeT0 = t0();
                sb.append(layoutNodeT0 != null ? layoutNodeT0.owner : null);
                sb.append("). This tree: ");
                sb.append(K(this, 0, 1, null));
                sb.append(" Parent tree: ");
                LayoutNode layoutNode2 = this._foldedParent;
                sb.append(layoutNode2 != null ? K(layoutNode2, 0, 1, null) : null);
                throw new IllegalStateException(sb.toString().toString());
            }
        }
        LayoutNode layoutNodeT1 = t0();
        if (layoutNodeT1 == null) {
            this.isPlaced = true;
        }
        this.owner = owner;
        this.depth = (layoutNodeT1 != null ? layoutNodeT1.depth : -1) + 1;
        if (SemanticsNodeKt.j(this) != null) {
            owner.o();
        }
        owner.l(this);
        MutableVector<LayoutNode> mutableVector = this._foldedChildren;
        int iN = mutableVector.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVector.m();
            int i10 = 0;
            do {
                layoutNodeArrM[i10].E(owner);
                i10++;
            } while (i10 < iN);
        }
        j1(this, false, 1, null);
        if (layoutNodeT1 != null) {
            j1(layoutNodeT1, false, 1, null);
        }
        LayoutNodeWrapper layoutNodeWrapperF1 = this.innerLayoutNodeWrapper.F1();
        for (LayoutNodeWrapper layoutNodeWrapperR0 = r0(); !t.e(layoutNodeWrapperR0, layoutNodeWrapperF1) && layoutNodeWrapperR0 != null; layoutNodeWrapperR0 = layoutNodeWrapperR0.F1()) {
            layoutNodeWrapperR0.h1();
        }
        for (ModifierLocalProviderEntity modifierLocalProviderEntityH = this.modifierLocalsHead; modifierLocalProviderEntityH != null; modifierLocalProviderEntityH = modifierLocalProviderEntityH.h()) {
            modifierLocalProviderEntityH.a();
        }
        l<? super Owner, l0> lVar = this.onAttach;
        if (lVar != null) {
            lVar.invoke(owner);
        }
    }

    public final void E0(long j6, @NotNull HitTestResult<SemanticsEntity> hitSemanticsEntities, boolean z6, boolean z10) {
        t.j(hitSemanticsEntities, "hitSemanticsEntities");
        r0().K1(LayoutNodeWrapper.Companion.b(), r0().q1(j6), hitSemanticsEntities, true, z10);
    }

    @NotNull
    public final Map<AlignmentLine, Integer> F() {
        if (!this.outerMeasurablePlaceable.W0()) {
            D();
        }
        L0();
        return this.alignmentLines.b();
    }

    public final void G0(int i10, @NotNull LayoutNode instance) {
        MutableVector<LayoutNode> mutableVector;
        int iN;
        t.j(instance, "instance");
        int i11 = 0;
        LayoutNodeWrapper layoutNodeWrapper = null;
        if (instance._foldedParent != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot insert ");
            sb.append(instance);
            sb.append(" because it already has a parent. This tree: ");
            sb.append(K(this, 0, 1, null));
            sb.append(" Other tree: ");
            LayoutNode layoutNode = instance._foldedParent;
            sb.append(layoutNode != null ? K(layoutNode, 0, 1, null) : null);
            throw new IllegalStateException(sb.toString().toString());
        }
        if (instance.owner != null) {
            throw new IllegalStateException(("Cannot insert " + instance + " because it already has an owner. This tree: " + K(this, 0, 1, null) + " Other tree: " + K(instance, 0, 1, null)).toString());
        }
        instance._foldedParent = this;
        this._foldedChildren.a(i10, instance);
        X0();
        if (instance.isVirtual) {
            if (!(!this.isVirtual)) {
                throw new IllegalArgumentException("Virtual LayoutNode can't be added into a virtual parent".toString());
            }
            this.virtualChildrenCount++;
        }
        J0();
        LayoutNodeWrapper layoutNodeWrapperR0 = instance.r0();
        if (this.isVirtual) {
            LayoutNode layoutNode2 = this._foldedParent;
            if (layoutNode2 != null) {
                layoutNodeWrapper = layoutNode2.innerLayoutNodeWrapper;
            }
        } else {
            layoutNodeWrapper = this.innerLayoutNodeWrapper;
        }
        layoutNodeWrapperR0.d2(layoutNodeWrapper);
        if (instance.isVirtual && (iN = (mutableVector = instance._foldedChildren).n()) > 0) {
            LayoutNode[] layoutNodeArrM = mutableVector.m();
            do {
                layoutNodeArrM[i11].r0().d2(this.innerLayoutNodeWrapper);
                i11++;
            } while (i11 < iN);
        }
        Owner owner = this.owner;
        if (owner != null) {
            instance.E(owner);
        }
    }

    public final void L() {
        Owner owner = this.owner;
        if (owner == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot detach node that is already detached!  Tree: ");
            LayoutNode layoutNodeT0 = t0();
            sb.append(layoutNodeT0 != null ? K(layoutNodeT0, 0, 1, null) : null);
            throw new IllegalStateException(sb.toString().toString());
        }
        LayoutNode layoutNodeT1 = t0();
        if (layoutNodeT1 != null) {
            layoutNodeT1.H0();
            j1(layoutNodeT1, false, 1, null);
        }
        this.alignmentLines.m();
        l<? super Owner, l0> lVar = this.onDetach;
        if (lVar != null) {
            lVar.invoke(owner);
        }
        for (ModifierLocalProviderEntity modifierLocalProviderEntityH = this.modifierLocalsHead; modifierLocalProviderEntityH != null; modifierLocalProviderEntityH = modifierLocalProviderEntityH.h()) {
            modifierLocalProviderEntityH.c();
        }
        LayoutNodeWrapper layoutNodeWrapperF1 = this.innerLayoutNodeWrapper.F1();
        for (LayoutNodeWrapper layoutNodeWrapperR0 = r0(); !t.e(layoutNodeWrapperR0, layoutNodeWrapperF1) && layoutNodeWrapperR0 != null; layoutNodeWrapperR0 = layoutNodeWrapperR0.F1()) {
            layoutNodeWrapperR0.k1();
        }
        if (SemanticsNodeKt.j(this) != null) {
            owner.o();
        }
        owner.m(this);
        this.owner = null;
        this.depth = 0;
        MutableVector<LayoutNode> mutableVector = this._foldedChildren;
        int iN = mutableVector.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVector.m();
            int i10 = 0;
            do {
                layoutNodeArrM[i10].L();
                i10++;
            } while (i10 < iN);
        }
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        this.isPlaced = false;
    }

    public final void L0() {
        this.alignmentLines.l();
        if (this.layoutPending) {
            T0();
        }
        if (this.layoutPending) {
            this.layoutPending = false;
            this.layoutState = LayoutState.LayingOut;
            LayoutNodeKt.a(this).getSnapshotObserver().c(this, new LayoutNode$layoutChildren$1(this));
            this.layoutState = LayoutState.Idle;
        }
        if (this.alignmentLines.h()) {
            this.alignmentLines.o(true);
        }
        if (this.alignmentLines.a() && this.alignmentLines.e()) {
            this.alignmentLines.j();
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int M(int i10) {
        return this.outerMeasurablePlaceable.M(i10);
    }

    public final void N() {
        MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector;
        int iN;
        if (this.layoutState != LayoutState.Idle || this.layoutPending || this.measurePending || !i() || (mutableVector = this.onPositionedCallbacks) == null || (iN = mutableVector.n()) <= 0) {
            return;
        }
        u<LayoutNodeWrapper, OnGloballyPositionedModifier>[] uVarArrM = mutableVector.m();
        int i10 = 0;
        do {
            u<LayoutNodeWrapper, OnGloballyPositionedModifier> uVar = uVarArrM[i10];
            uVar.d().F0(uVar.c());
            i10++;
        } while (i10 < iN);
    }

    public final void O(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        r0().m1(canvas);
    }

    public final void R0(int i10, int i11, int i12) {
        if (i10 == i11) {
            return;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            this._foldedChildren.a(i10 > i11 ? i11 + i13 : (i11 + i12) - 2, this._foldedChildren.v(i10 > i11 ? i10 + i13 : i10));
        }
        X0();
        J0();
        j1(this, false, 1, null);
    }

    public final void S0() {
        if (this.alignmentLines.a()) {
            return;
        }
        this.alignmentLines.n(true);
        LayoutNode layoutNodeT0 = t0();
        if (layoutNodeT0 == null) {
            return;
        }
        if (this.alignmentLines.i()) {
            j1(layoutNodeT0, false, 1, null);
        } else if (this.alignmentLines.c()) {
            h1(layoutNodeT0, false, 1, null);
        }
        if (this.alignmentLines.g()) {
            j1(this, false, 1, null);
        }
        if (this.alignmentLines.f()) {
            h1(layoutNodeT0, false, 1, null);
        }
        layoutNodeT0.S0();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int V(int i10) {
        return this.outerMeasurablePlaceable.V(i10);
    }

    @NotNull
    public final List<LayoutNode> W() {
        return this._foldedChildren.g();
    }

    public int X() {
        return this.outerMeasurablePlaceable.B0();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int Y(int i10) {
        return this.outerMeasurablePlaceable.Y(i10);
    }

    public final void Y0(long j6) {
        LayoutState layoutState = LayoutState.Measuring;
        this.layoutState = layoutState;
        this.measurePending = false;
        LayoutNodeKt.a(this).getSnapshotObserver().d(this, new LayoutNode$performMeasure$1(this, j6));
        if (this.layoutState == layoutState) {
            M0();
            this.layoutState = LayoutState.Idle;
        }
    }

    public final void Z0(int i10, int i11) {
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            H();
        }
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        int iM0 = this.outerMeasurablePlaceable.M0();
        LayoutDirection layoutDirection = getLayoutDirection();
        int iH = companion.h();
        LayoutDirection layoutDirectionG = companion.g();
        Placeable.PlacementScope.parentWidth = iM0;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        Placeable.PlacementScope.n(companion, this.outerMeasurablePlaceable, i10, i11, 0.0f, 4, null);
        Placeable.PlacementScope.parentWidth = iH;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirectionG;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int a0(int i10) {
        return this.outerMeasurablePlaceable.a0(i10);
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void b(@NotNull LayoutDirection value) {
        t.j(value, "value");
        if (this.layoutDirection != value) {
            this.layoutDirection = value;
            V0();
        }
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    public Placeable b0(long j6) {
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            G();
        }
        return this.outerMeasurablePlaceable.b0(j6);
    }

    public final boolean b1(@Nullable Constraints constraints) {
        if (constraints == null) {
            return false;
        }
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            G();
        }
        return this.outerMeasurablePlaceable.d1(constraints.t());
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void c(@NotNull MeasurePolicy value) {
        t.j(value, "value");
        if (t.e(this.measurePolicy, value)) {
            return;
        }
        this.measurePolicy = value;
        this.intrinsicsPolicy.f(j0());
        j1(this, false, 1, null);
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void d(@NotNull Modifier value) {
        LayoutNode layoutNodeT0;
        LayoutNode layoutNodeT1;
        Owner owner;
        t.j(value, "value");
        if (t.e(value, this.modifier)) {
            return;
        }
        if (!t.e(m0(), Modifier.Companion) && !(!this.isVirtual)) {
            throw new IllegalArgumentException("Modifiers are not supported on virtual LayoutNodes".toString());
        }
        this.modifier = value;
        boolean zW1 = w1();
        I();
        LayoutNodeWrapper layoutNodeWrapperF1 = this.innerLayoutNodeWrapper.F1();
        for (LayoutNodeWrapper layoutNodeWrapperR0 = r0(); !t.e(layoutNodeWrapperR0, layoutNodeWrapperF1) && layoutNodeWrapperR0 != null; layoutNodeWrapperR0 = layoutNodeWrapperR0.F1()) {
            EntityList.j(layoutNodeWrapperR0.s1());
        }
        P0(value);
        LayoutNodeWrapper layoutNodeWrapperY0 = this.outerMeasurablePlaceable.Y0();
        if (SemanticsNodeKt.j(this) != null && K0()) {
            Owner owner2 = this.owner;
            t.g(owner2);
            owner2.o();
        }
        boolean zB0 = B0();
        MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector = this.onPositionedCallbacks;
        if (mutableVector != null) {
            mutableVector.h();
        }
        this.innerLayoutNodeWrapper.S1();
        LayoutNodeWrapper layoutNodeWrapper = (LayoutNodeWrapper) m0().V(this.innerLayoutNodeWrapper, new LayoutNode$modifier$outerWrapper$1(this));
        r1(value);
        LayoutNode layoutNodeT2 = t0();
        layoutNodeWrapper.d2(layoutNodeT2 != null ? layoutNodeT2.innerLayoutNodeWrapper : null);
        this.outerMeasurablePlaceable.f1(layoutNodeWrapper);
        if (K0()) {
            MutableVector<ModifiedLayoutNode> mutableVector2 = this.wrapperCache;
            int iN = mutableVector2.n();
            if (iN > 0) {
                ModifiedLayoutNode[] modifiedLayoutNodeArrM = mutableVector2.m();
                int i10 = 0;
                do {
                    modifiedLayoutNodeArrM[i10].k1();
                    i10++;
                } while (i10 < iN);
            }
            LayoutNodeWrapper layoutNodeWrapperF2 = this.innerLayoutNodeWrapper.F1();
            for (LayoutNodeWrapper layoutNodeWrapperR1 = r0(); !t.e(layoutNodeWrapperR1, layoutNodeWrapperF2) && layoutNodeWrapperR1 != null; layoutNodeWrapperR1 = layoutNodeWrapperR1.F1()) {
                if (layoutNodeWrapperR1.Q()) {
                    for (LayoutNodeEntity<?, ?> layoutNodeEntityD : layoutNodeWrapperR1.s1()) {
                        for (; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
                            layoutNodeEntityD.g();
                        }
                    }
                } else {
                    layoutNodeWrapperR1.h1();
                }
            }
        }
        this.wrapperCache.h();
        LayoutNodeWrapper layoutNodeWrapperF3 = this.innerLayoutNodeWrapper.F1();
        for (LayoutNodeWrapper layoutNodeWrapperR2 = r0(); !t.e(layoutNodeWrapperR2, layoutNodeWrapperF3) && layoutNodeWrapperR2 != null; layoutNodeWrapperR2 = layoutNodeWrapperR2.F1()) {
            layoutNodeWrapperR2.W1();
        }
        if (!t.e(layoutNodeWrapperY0, this.innerLayoutNodeWrapper) || !t.e(layoutNodeWrapper, this.innerLayoutNodeWrapper)) {
            j1(this, false, 1, null);
        } else if (this.layoutState == LayoutState.Idle && !this.measurePending && zB0) {
            j1(this, false, 1, null);
        } else if (EntityList.n(this.innerLayoutNodeWrapper.s1(), EntityList.Companion.b()) && (owner = this.owner) != null) {
            owner.c(this);
        }
        Object objE = e();
        this.outerMeasurablePlaceable.c1();
        if (!t.e(objE, e()) && (layoutNodeT1 = t0()) != null) {
            j1(layoutNodeT1, false, 1, null);
        }
        if ((zW1 || w1()) && (layoutNodeT0 = t0()) != null) {
            layoutNodeT0.H0();
        }
    }

    public final void d1() {
        int iN = this._foldedChildren.n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                this._foldedChildren.h();
                return;
            }
            U0(this._foldedChildren.m()[iN]);
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object e() {
        return this.outerMeasurablePlaceable.e();
    }

    public final void e1(int i10, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException(("count (" + i11 + ") must be greater than 0").toString());
        }
        int i12 = (i11 + i10) - 1;
        if (i10 > i12) {
            return;
        }
        while (true) {
            U0(this._foldedChildren.v(i12));
            if (i12 == i10) {
                return;
            } else {
                i12--;
            }
        }
    }

    public final void f1() {
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            H();
        }
        try {
            this.relayoutWithoutParentInProgress = true;
            this.outerMeasurablePlaceable.e1();
        } finally {
            this.relayoutWithoutParentInProgress = false;
        }
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void g(@NotNull Density value) {
        t.j(value, "value");
        if (t.e(this.density, value)) {
            return;
        }
        this.density = value;
        V0();
    }

    public final void g1(boolean z6) {
        Owner owner;
        if (this.isVirtual || (owner = this.owner) == null) {
            return;
        }
        owner.k(this, z6);
    }

    public final void i1(boolean z6) {
        Owner owner;
        if (this.ignoreRemeasureRequests || this.isVirtual || (owner = this.owner) == null) {
            return;
        }
        owner.p(this, z6);
        this.outerMeasurablePlaceable.Z0(z6);
    }

    @Override // androidx.compose.ui.node.Owner.OnLayoutCompletedListener
    public void j() {
        for (LayoutNodeEntity<?, ?> layoutNodeEntityD = this.innerLayoutNodeWrapper.s1()[EntityList.Companion.b()]; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
            ((OnPlacedModifier) ((SimpleEntity) layoutNodeEntityD).c()).e(this.innerLayoutNodeWrapper);
        }
    }

    @NotNull
    public final MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> q0() {
        MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector = this.onPositionedCallbacks;
        if (mutableVector != null) {
            return mutableVector;
        }
        MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector2 = new MutableVector<>(new u[16], 0);
        this.onPositionedCallbacks = mutableVector2;
        return mutableVector2;
    }

    @NotNull
    public final LayoutNodeWrapper r0() {
        return this.outerMeasurablePlaceable.Y0();
    }

    @Nullable
    public final LayoutNode t0() {
        LayoutNode layoutNode = this._foldedParent;
        if (layoutNode == null || !layoutNode.isVirtual) {
            return layoutNode;
        }
        if (layoutNode != null) {
            return layoutNode.t0();
        }
        return null;
    }

    @NotNull
    public String toString() {
        return JvmActuals_jvmKt.a(this, null) + " children: " + S().size() + " measurePolicy: " + j0();
    }

    public int x0() {
        return this.outerMeasurablePlaceable.Q0();
    }

    @NotNull
    public final MutableVector<LayoutNode> y0() {
        if (this.zSortedChildrenInvalidated) {
            this._zSortedChildren.h();
            MutableVector<LayoutNode> mutableVector = this._zSortedChildren;
            mutableVector.c(mutableVector.n(), z0());
            this._zSortedChildren.z(this.ZComparator);
            this.zSortedChildrenInvalidated = false;
        }
        return this._zSortedChildren;
    }

    @NotNull
    public final MutableVector<LayoutNode> z0() {
        if (this.virtualChildrenCount == 0) {
            return this._foldedChildren;
        }
        a1();
        MutableVector<LayoutNode> mutableVector = this._unfoldedChildren;
        t.g(mutableVector);
        return mutableVector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(ModifierLocalConsumer modifierLocalConsumer, ModifierLocalProviderEntity modifierLocalProviderEntity, MutableVector<ModifierLocalConsumerEntity> mutableVector) {
        int i10;
        ModifierLocalConsumerEntity modifierLocalConsumerEntityV;
        int iN = mutableVector.n();
        if (iN > 0) {
            ModifierLocalConsumerEntity[] modifierLocalConsumerEntityArrM = mutableVector.m();
            i10 = 0;
            while (modifierLocalConsumerEntityArrM[i10].e() != modifierLocalConsumer) {
                i10++;
                if (i10 >= iN) {
                    i10 = -1;
                    break;
                }
            }
        } else {
            i10 = -1;
            break;
        }
        if (i10 < 0) {
            modifierLocalConsumerEntityV = new ModifierLocalConsumerEntity(modifierLocalProviderEntity, modifierLocalConsumer);
        } else {
            modifierLocalConsumerEntityV = mutableVector.v(i10);
            modifierLocalConsumerEntityV.j(modifierLocalProviderEntity);
        }
        modifierLocalProviderEntity.e().b(modifierLocalConsumerEntityV);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ModifierLocalProviderEntity C(ModifierLocalProvider<?> modifierLocalProvider, ModifierLocalProviderEntity modifierLocalProviderEntity) {
        ModifierLocalProviderEntity modifierLocalProviderEntityH = modifierLocalProviderEntity.h();
        while (modifierLocalProviderEntityH != null && modifierLocalProviderEntityH.g() != modifierLocalProvider) {
            modifierLocalProviderEntityH = modifierLocalProviderEntityH.h();
        }
        if (modifierLocalProviderEntityH == null) {
            modifierLocalProviderEntityH = new ModifierLocalProviderEntity(this, modifierLocalProvider);
        } else {
            ModifierLocalProviderEntity modifierLocalProviderEntityI = modifierLocalProviderEntityH.i();
            if (modifierLocalProviderEntityI != null) {
                modifierLocalProviderEntityI.l(modifierLocalProviderEntityH.h());
            }
            ModifierLocalProviderEntity modifierLocalProviderEntityH2 = modifierLocalProviderEntityH.h();
            if (modifierLocalProviderEntityH2 != null) {
                modifierLocalProviderEntityH2.m(modifierLocalProviderEntityH.i());
            }
        }
        modifierLocalProviderEntityH.l(modifierLocalProviderEntity.h());
        ModifierLocalProviderEntity modifierLocalProviderEntityH3 = modifierLocalProviderEntity.h();
        if (modifierLocalProviderEntityH3 != null) {
            modifierLocalProviderEntityH3.m(modifierLocalProviderEntityH);
        }
        modifierLocalProviderEntity.l(modifierLocalProviderEntityH);
        modifierLocalProviderEntityH.m(modifierLocalProviderEntity);
        return modifierLocalProviderEntityH;
    }

    private final void I() {
        LayoutNodeWrapper layoutNodeWrapperR0 = r0();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!t.e(layoutNodeWrapperR0, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) layoutNodeWrapperR0;
            this.wrapperCache.b(modifiedLayoutNode);
            layoutNodeWrapperR0 = modifiedLayoutNode.F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FocusPropertiesModifier P(FocusOrderModifier focusOrderModifier, MutableVector<ModifierLocalConsumerEntity> mutableVector) {
        ModifierLocalConsumerEntity modifierLocalConsumerEntity;
        ModifierLocalConsumer modifierLocalConsumerE;
        int iN = mutableVector.n();
        if (iN > 0) {
            ModifierLocalConsumerEntity[] modifierLocalConsumerEntityArrM = mutableVector.m();
            int i10 = 0;
            while (true) {
                modifierLocalConsumerEntity = modifierLocalConsumerEntityArrM[i10];
                ModifierLocalConsumerEntity modifierLocalConsumerEntity2 = modifierLocalConsumerEntity;
                if ((modifierLocalConsumerEntity2.e() instanceof FocusPropertiesModifier) && (((FocusPropertiesModifier) modifierLocalConsumerEntity2.e()).b() instanceof FocusOrderModifierToProperties) && ((FocusOrderModifierToProperties) ((FocusPropertiesModifier) modifierLocalConsumerEntity2.e()).b()).a() == focusOrderModifier) {
                    break;
                }
                i10++;
                if (i10 >= iN) {
                    modifierLocalConsumerEntity = null;
                    break;
                }
            }
        } else {
            modifierLocalConsumerEntity = null;
            break;
        }
        ModifierLocalConsumerEntity modifierLocalConsumerEntity3 = modifierLocalConsumerEntity;
        if (modifierLocalConsumerEntity3 != null) {
            modifierLocalConsumerE = modifierLocalConsumerEntity3.e();
        } else {
            modifierLocalConsumerE = null;
        }
        if (!(modifierLocalConsumerE instanceof FocusPropertiesModifier)) {
            return null;
        }
        return (FocusPropertiesModifier) modifierLocalConsumerE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q0() {
        if (i()) {
            int i10 = 0;
            this.isPlaced = false;
            MutableVector<LayoutNode> mutableVectorZ0 = z0();
            int iN = mutableVectorZ0.n();
            if (iN > 0) {
                LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
                do {
                    layoutNodeArrM[i10].Q0();
                    i10++;
                } while (i10 < iN);
            }
        }
    }

    private final void T0() {
        MutableVector<LayoutNode> mutableVectorZ0 = z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.measurePending && layoutNode.measuredByParent == UsageByParent.InMeasureBlock && c1(layoutNode, null, 1, null)) {
                    j1(this, false, 1, null);
                }
                i10++;
            } while (i10 < iN);
        }
    }

    private final boolean w1() {
        LayoutNodeWrapper layoutNodeWrapperF1 = this.innerLayoutNodeWrapper.F1();
        for (LayoutNodeWrapper layoutNodeWrapperR0 = r0(); !t.e(layoutNodeWrapperR0, layoutNodeWrapperF1) && layoutNodeWrapperR0 != null; layoutNodeWrapperR0 = layoutNodeWrapperR0.F1()) {
            if (layoutNodeWrapperR0.v1() != null) {
                return false;
            }
            if (EntityList.n(layoutNodeWrapperR0.s1(), EntityList.Companion.a())) {
                return true;
            }
        }
        return true;
    }

    public final void H0() {
        LayoutNodeWrapper layoutNodeWrapperZ = Z();
        if (layoutNodeWrapperZ != null) {
            layoutNodeWrapperZ.M1();
            return;
        }
        LayoutNode layoutNodeT0 = t0();
        if (layoutNodeT0 != null) {
            layoutNodeT0.H0();
        }
    }

    public final void I0() {
        LayoutNodeWrapper layoutNodeWrapperR0 = r0();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!t.e(layoutNodeWrapperR0, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) layoutNodeWrapperR0;
            OwnedLayer ownedLayerV1 = modifiedLayoutNode.v1();
            if (ownedLayerV1 != null) {
                ownedLayerV1.invalidate();
            }
            layoutNodeWrapperR0 = modifiedLayoutNode.F1();
        }
        OwnedLayer ownedLayerV2 = this.innerLayoutNodeWrapper.v1();
        if (ownedLayerV2 != null) {
            ownedLayerV2.invalidate();
        }
    }

    @NotNull
    public final List<LayoutNode> S() {
        return z0().g();
    }

    public final void W0() {
        LayoutNode layoutNodeT0 = t0();
        float fH1 = this.innerLayoutNodeWrapper.H1();
        LayoutNodeWrapper layoutNodeWrapperR0 = r0();
        LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
        while (!t.e(layoutNodeWrapperR0, layoutNodeWrapper)) {
            ModifiedLayoutNode modifiedLayoutNode = (ModifiedLayoutNode) layoutNodeWrapperR0;
            fH1 += modifiedLayoutNode.H1();
            layoutNodeWrapperR0 = modifiedLayoutNode.F1();
        }
        if (fH1 != this.zIndex) {
            this.zIndex = fH1;
            if (layoutNodeT0 != null) {
                layoutNodeT0.X0();
            }
            if (layoutNodeT0 != null) {
                layoutNodeT0.H0();
            }
        }
        if (!i()) {
            if (layoutNodeT0 != null) {
                layoutNodeT0.H0();
            }
            O0();
        }
        if (layoutNodeT0 != null) {
            if (!this.relayoutWithoutParentInProgress && layoutNodeT0.layoutState == LayoutState.LayingOut) {
                if (this.placeOrder == Integer.MAX_VALUE) {
                    int i10 = layoutNodeT0.nextChildPlaceOrder;
                    this.placeOrder = i10;
                    layoutNodeT0.nextChildPlaceOrder = i10 + 1;
                } else {
                    throw new IllegalStateException("Place was called on a node which was placed already".toString());
                }
            }
        } else {
            this.placeOrder = 0;
        }
        L0();
    }

    @NotNull
    public final LayoutNodeDrawScope h0() {
        return LayoutNodeKt.a(this).getSharedDrawScope();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return K0();
    }

    public final void l1() {
        MutableVector<LayoutNode> mutableVectorZ0 = z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                UsageByParent usageByParent = layoutNode.previousIntrinsicsUsageByParent;
                layoutNode.intrinsicsUsageByParent = usageByParent;
                if (usageByParent != UsageByParent.NotUsed) {
                    layoutNode.l1();
                }
                i10++;
            } while (i10 < iN);
        }
    }

    public /* synthetic */ LayoutNode(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6);
    }
}
