package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$layoutChildren$1 extends v implements e8.a<l0> {
    final /* synthetic */ LayoutNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNode$layoutChildren$1(LayoutNode layoutNode) {
        super(0);
        this.this$0 = layoutNode;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        int i10 = 0;
        this.this$0.nextChildPlaceOrder = 0;
        MutableVector<LayoutNode> mutableVectorZ0 = this.this$0.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            int i11 = 0;
            do {
                LayoutNode layoutNode = layoutNodeArrM[i11];
                layoutNode.previousPlaceOrder = layoutNode.u0();
                layoutNode.placeOrder = Integer.MAX_VALUE;
                layoutNode.Q().r(false);
                if (layoutNode.l0() == LayoutNode.UsageByParent.InLayoutBlock) {
                    layoutNode.q1(LayoutNode.UsageByParent.NotUsed);
                }
                i11++;
            } while (i11 < iN);
        }
        this.this$0.c0().y1().d();
        MutableVector<LayoutNode> mutableVectorZ1 = this.this$0.z0();
        LayoutNode layoutNode2 = this.this$0;
        int iN2 = mutableVectorZ1.n();
        if (iN2 > 0) {
            LayoutNode[] layoutNodeArrM2 = mutableVectorZ1.m();
            do {
                LayoutNode layoutNode3 = layoutNodeArrM2[i10];
                if (layoutNode3.previousPlaceOrder != layoutNode3.u0()) {
                    layoutNode2.X0();
                    layoutNode2.H0();
                    if (layoutNode3.u0() == Integer.MAX_VALUE) {
                        layoutNode3.Q0();
                    }
                }
                layoutNode3.Q().o(layoutNode3.Q().h());
                i10++;
            } while (i10 < iN2);
        }
    }
}
