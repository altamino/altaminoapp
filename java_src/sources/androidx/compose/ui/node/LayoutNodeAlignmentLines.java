package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import g8.c;
import java.util.HashMap;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class LayoutNodeAlignmentLines {

    @NotNull
    private final Map<AlignmentLine, Integer> alignmentLines;
    private boolean dirty;

    @NotNull
    private final LayoutNode layoutNode;
    private boolean previousUsedDuringParentLayout;

    @Nullable
    private LayoutNode queryOwner;
    private boolean usedByModifierLayout;
    private boolean usedByModifierMeasurement;
    private boolean usedDuringParentLayout;
    private boolean usedDuringParentMeasurement;

    private static final void k(LayoutNodeAlignmentLines layoutNodeAlignmentLines, AlignmentLine alignmentLine, int i10, LayoutNodeWrapper layoutNodeWrapper) {
        float f = i10;
        long jA = OffsetKt.a(f, f);
        while (true) {
            jA = layoutNodeWrapper.g2(jA);
            layoutNodeWrapper = layoutNodeWrapper.G1();
            t.g(layoutNodeWrapper);
            if (t.e(layoutNodeWrapper, layoutNodeAlignmentLines.layoutNode.c0())) {
                break;
            } else if (layoutNodeWrapper.y1().c().containsKey(alignmentLine)) {
                float fC0 = layoutNodeWrapper.c0(alignmentLine);
                jA = OffsetKt.a(fC0, fC0);
            }
        }
        int iC = alignmentLine instanceof HorizontalAlignmentLine ? c.c(Offset.n(jA)) : c.c(Offset.m(jA));
        Map<AlignmentLine, Integer> map = layoutNodeAlignmentLines.alignmentLines;
        if (map.containsKey(alignmentLine)) {
            iC = AlignmentLineKt.c(alignmentLine, ((Number) s0.i(layoutNodeAlignmentLines.alignmentLines, alignmentLine)).intValue(), iC);
        }
        map.put(alignmentLine, Integer.valueOf(iC));
    }

    public final boolean a() {
        return this.dirty;
    }

    @NotNull
    public final Map<AlignmentLine, Integer> b() {
        return this.alignmentLines;
    }

    public final boolean c() {
        return this.previousUsedDuringParentLayout;
    }

    public final boolean d() {
        return this.usedDuringParentMeasurement || this.previousUsedDuringParentLayout || this.usedByModifierMeasurement || this.usedByModifierLayout;
    }

    public final boolean f() {
        return this.usedByModifierLayout;
    }

    public final boolean g() {
        return this.usedByModifierMeasurement;
    }

    public final boolean h() {
        return this.usedDuringParentLayout;
    }

    public final boolean i() {
        return this.usedDuringParentMeasurement;
    }

    public final void m() {
        this.dirty = true;
        this.usedDuringParentMeasurement = false;
        this.previousUsedDuringParentLayout = false;
        this.usedDuringParentLayout = false;
        this.usedByModifierMeasurement = false;
        this.usedByModifierLayout = false;
        this.queryOwner = null;
    }

    public final void n(boolean z6) {
        this.dirty = z6;
    }

    public final void o(boolean z6) {
        this.previousUsedDuringParentLayout = z6;
    }

    public final void p(boolean z6) {
        this.usedByModifierLayout = z6;
    }

    public final void q(boolean z6) {
        this.usedByModifierMeasurement = z6;
    }

    public final void r(boolean z6) {
        this.usedDuringParentLayout = z6;
    }

    public final void s(boolean z6) {
        this.usedDuringParentMeasurement = z6;
    }

    public LayoutNodeAlignmentLines(@NotNull LayoutNode layoutNode) {
        t.j(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
        this.dirty = true;
        this.alignmentLines = new HashMap();
    }

    public final void j() {
        this.alignmentLines.clear();
        MutableVector<LayoutNode> mutableVectorZ0 = this.layoutNode.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i10 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.i()) {
                    if (layoutNode.Q().dirty) {
                        layoutNode.L0();
                    }
                    for (Map.Entry<AlignmentLine, Integer> entry : layoutNode.Q().alignmentLines.entrySet()) {
                        k(this, entry.getKey(), entry.getValue().intValue(), layoutNode.c0());
                    }
                    LayoutNodeWrapper layoutNodeWrapperG1 = layoutNode.c0().G1();
                    t.g(layoutNodeWrapperG1);
                    while (!t.e(layoutNodeWrapperG1, this.layoutNode.c0())) {
                        for (AlignmentLine alignmentLine : layoutNodeWrapperG1.y1().c().keySet()) {
                            k(this, alignmentLine, layoutNodeWrapperG1.c0(alignmentLine), layoutNodeWrapperG1);
                        }
                        layoutNodeWrapperG1 = layoutNodeWrapperG1.G1();
                        t.g(layoutNodeWrapperG1);
                    }
                }
                i10++;
            } while (i10 < iN);
        }
        this.alignmentLines.putAll(this.layoutNode.c0().y1().c());
        this.dirty = false;
    }

    public final boolean e() {
        l();
        if (this.queryOwner != null) {
            return true;
        }
        return false;
    }

    public final void l() {
        LayoutNode layoutNode;
        LayoutNodeAlignmentLines layoutNodeAlignmentLinesQ;
        LayoutNodeAlignmentLines layoutNodeAlignmentLinesQ2;
        if (d()) {
            layoutNode = this.layoutNode;
        } else {
            LayoutNode layoutNodeT0 = this.layoutNode.t0();
            if (layoutNodeT0 == null) {
                return;
            }
            layoutNode = layoutNodeT0.Q().queryOwner;
            if (layoutNode == null || !layoutNode.Q().d()) {
                LayoutNode layoutNode2 = this.queryOwner;
                if (layoutNode2 != null && !layoutNode2.Q().d()) {
                    LayoutNode layoutNodeT1 = layoutNode2.t0();
                    if (layoutNodeT1 != null && (layoutNodeAlignmentLinesQ2 = layoutNodeT1.Q()) != null) {
                        layoutNodeAlignmentLinesQ2.l();
                    }
                    LayoutNode layoutNodeT2 = layoutNode2.t0();
                    if (layoutNodeT2 != null && (layoutNodeAlignmentLinesQ = layoutNodeT2.Q()) != null) {
                        layoutNode = layoutNodeAlignmentLinesQ.queryOwner;
                    } else {
                        layoutNode = null;
                    }
                } else {
                    return;
                }
            }
        }
        this.queryOwner = layoutNode;
    }
}
