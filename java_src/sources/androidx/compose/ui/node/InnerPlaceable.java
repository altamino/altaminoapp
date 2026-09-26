package androidx.compose.ui.node;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class InnerPlaceable extends LayoutNodeWrapper implements Density {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Paint innerBoundsPaint;
    private final /* synthetic */ MeasureScope $$delegate_0;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.$$delegate_0.E0();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float H0(float f) {
        return this.$$delegate_0.H0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int L0(long j6) {
        return this.$$delegate_0.L0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float P(float f) {
        return this.$$delegate_0.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long X(long j6) {
        return this.$$delegate_0.X(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float j(int i10) {
        return this.$$delegate_0.j(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int j0(float f) {
        return this.$$delegate_0.j0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float p0(long j6) {
        return this.$$delegate_0.p0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long q(long j6) {
        return this.$$delegate_0.q(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float s(long j6) {
        return this.$$delegate_0.s(j6);
    }

    static {
        Paint paintA = AndroidPaint_androidKt.a();
        paintA.j(Color.Companion.d());
        paintA.q(1.0f);
        paintA.p(PaintingStyle.Companion.b());
        innerBoundsPaint = paintA;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InnerPlaceable(@NotNull LayoutNode layoutNode) {
        super(layoutNode);
        t.j(layoutNode, "layoutNode");
        this.$$delegate_0 = layoutNode.k0();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void L1(@NotNull LayoutNodeWrapper.HitTestSource<T, C, M> hitTestSource, long j6, @NotNull HitTestResult<C> hitTestResult, boolean z6, boolean z10) {
        boolean z11;
        t.j(hitTestSource, "hitTestSource");
        t.j(hitTestResult, "hitTestResult");
        boolean z12 = false;
        if (hitTestSource.e(x1())) {
            if (j2(j6)) {
                z11 = z10;
            } else {
                if (z6) {
                    float fL1 = l1(j6, A1());
                    if (!Float.isInfinite(fL1) && !Float.isNaN(fL1)) {
                        z11 = false;
                    }
                }
                z11 = z10;
            }
            z12 = true;
        } else {
            z11 = z10;
        }
        if (z12) {
            int i10 = ((HitTestResult) hitTestResult).hitDepth;
            MutableVector<LayoutNode> mutableVectorY0 = x1().y0();
            int iN = mutableVectorY0.n();
            if (iN > 0) {
                LayoutNode[] layoutNodeArrM = mutableVectorY0.m();
                int i11 = iN - 1;
                do {
                    LayoutNode layoutNode = layoutNodeArrM[i11];
                    if (layoutNode.i()) {
                        hitTestSource.d(layoutNode, j6, hitTestResult, z6, z11);
                        if (!hitTestResult.q()) {
                            i11--;
                        } else {
                            if (!layoutNode.r0().e2()) {
                                break;
                            }
                            hitTestResult.c();
                            i11--;
                        }
                    } else {
                        i11--;
                    }
                } while (i11 >= 0);
            }
            ((HitTestResult) hitTestResult).hitDepth = i10;
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void Y1(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        Owner ownerA = LayoutNodeKt.a(x1());
        MutableVector<LayoutNode> mutableVectorY0 = x1().y0();
        int iN = mutableVectorY0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorY0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.i()) {
                    layoutNode.O(canvas);
                }
                i10++;
            } while (i10 < iN);
        }
        if (ownerA.getShowLayoutBounds()) {
            n1(canvas, innerBoundsPaint);
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public int i1(@NotNull AlignmentLine alignmentLine) {
        t.j(alignmentLine, "alignmentLine");
        Integer num = x1().F().get(alignmentLine);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int M(int i10) {
        return x1().d0().a(i10);
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
        x1().W0();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int V(int i10) {
        return x1().d0().d(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int Y(int i10) {
        return x1().d0().e(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int a0(int i10) {
        return x1().d0().b(i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    public Placeable b0(long j6) {
        U0(j6);
        MutableVector<LayoutNode> mutableVectorZ0 = x1().z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                layoutNodeArrM[i10].q1(LayoutNode.UsageByParent.NotUsed);
                i10++;
            } while (i10 < iN);
        }
        x1().A0(x1().j0().a(x1().k0(), x1().S(), j6));
        V1();
        return this;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    @NotNull
    public MeasureScope z1() {
        return x1().k0();
    }
}
