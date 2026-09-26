package androidx.compose.ui.node;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$performMeasure$1 extends v implements e8.a<l0> {
    final /* synthetic */ long $constraints;
    final /* synthetic */ LayoutNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNode$performMeasure$1(LayoutNode layoutNode, long j6) {
        super(0);
        this.this$0 = layoutNode;
        this.$constraints = j6;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.r0().b0(this.$constraints);
    }
}
