package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class ModifiedLayoutNode extends LayoutNodeWrapper {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Paint modifierBoundsPaint;

    @NotNull
    private LayoutModifier modifier;

    @Nullable
    private MutableState<LayoutModifier> modifierState;
    private boolean toBeReusedForSameModifier;

    @NotNull
    private LayoutNodeWrapper wrapped;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    @NotNull
    public LayoutNodeWrapper F1() {
        return this.wrapped;
    }

    @NotNull
    public final LayoutModifier k2() {
        return this.modifier;
    }

    public final boolean l2() {
        return this.toBeReusedForSameModifier;
    }

    public final void n2(@NotNull LayoutModifier layoutModifier) {
        t.j(layoutModifier, "<set-?>");
        this.modifier = layoutModifier;
    }

    public final void o2(boolean z6) {
        this.toBeReusedForSameModifier = z6;
    }

    public void p2(@NotNull LayoutNodeWrapper layoutNodeWrapper) {
        t.j(layoutNodeWrapper, "<set-?>");
        this.wrapped = layoutNodeWrapper;
    }

    static {
        Paint paintA = AndroidPaint_androidKt.a();
        paintA.j(Color.Companion.b());
        paintA.q(1.0f);
        paintA.p(PaintingStyle.Companion.b());
        modifierBoundsPaint = paintA;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifiedLayoutNode(@NotNull LayoutNodeWrapper wrapped, @NotNull LayoutModifier modifier) {
        super(wrapped.x1());
        t.j(wrapped, "wrapped");
        t.j(modifier, "modifier");
        this.wrapped = wrapped;
        this.modifier = modifier;
    }

    private final LayoutModifier m2() {
        MutableState<LayoutModifier> mutableStateE = this.modifierState;
        if (mutableStateE == null) {
            mutableStateE = SnapshotStateKt__SnapshotStateKt.e(this.modifier, null, 2, null);
        }
        this.modifierState = mutableStateE;
        return mutableStateE.getValue();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void Y1(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        F1().m1(canvas);
        if (LayoutNodeKt.a(x1()).getShowLayoutBounds()) {
            n1(canvas, modifierBoundsPaint);
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public int i1(@NotNull AlignmentLine alignmentLine) {
        t.j(alignmentLine, "alignmentLine");
        if (y1().c().containsKey(alignmentLine)) {
            Integer num = y1().c().get(alignmentLine);
            if (num != null) {
                return num.intValue();
            }
            return Integer.MIN_VALUE;
        }
        int iC0 = F1().c0(alignmentLine);
        if (iC0 == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        c2(true);
        R0(C1(), H1(), w1());
        c2(false);
        return iC0 + (alignmentLine instanceof HorizontalAlignmentLine ? IntOffset.k(F1().C1()) : IntOffset.j(F1().C1()));
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int M(int i10) {
        return m2().c0(z1(), F1(), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper, androidx.compose.ui.layout.Placeable
    public void R0(long j6, float f, @Nullable l<? super GraphicsLayerScope, l0> lVar) {
        super.R0(j6, f, lVar);
        LayoutNodeWrapper layoutNodeWrapperG1 = G1();
        if (layoutNodeWrapperG1 != null && layoutNodeWrapperG1.P1()) {
            return;
        }
        X1();
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        int iG = IntSize.g(F0());
        LayoutDirection layoutDirection = z1().getLayoutDirection();
        int iH = companion.h();
        LayoutDirection layoutDirectionG = companion.g();
        Placeable.PlacementScope.parentWidth = iG;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        y1().d();
        Placeable.PlacementScope.parentWidth = iH;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirectionG;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void S1() {
        super.S1();
        F1().d2(this);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int V(int i10) {
        return m2().s0(z1(), F1(), i10);
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void W1() {
        super.W1();
        MutableState<LayoutModifier> mutableState = this.modifierState;
        if (mutableState != null) {
            mutableState.setValue(this.modifier);
        }
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int Y(int i10) {
        return m2().K(z1(), F1(), i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int a0(int i10) {
        return m2().S(z1(), F1(), i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    public Placeable b0(long j6) {
        U0(j6);
        b2(this.modifier.N0(z1(), F1(), j6));
        OwnedLayer ownedLayerV1 = v1();
        if (ownedLayerV1 != null) {
            ownedLayerV1.e(F0());
        }
        V1();
        return this;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    @NotNull
    public MeasureScope z1() {
        return F1().z1();
    }
}
