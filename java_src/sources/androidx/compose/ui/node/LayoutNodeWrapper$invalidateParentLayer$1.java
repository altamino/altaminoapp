package androidx.compose.ui.node;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNodeWrapper$invalidateParentLayer$1 extends v implements e8.a<l0> {
    final /* synthetic */ LayoutNodeWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNodeWrapper$invalidateParentLayer$1(LayoutNodeWrapper layoutNodeWrapper) {
        super(0);
        this.this$0 = layoutNodeWrapper;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        LayoutNodeWrapper layoutNodeWrapperG1 = this.this$0.G1();
        if (layoutNodeWrapperG1 != null) {
            layoutNodeWrapperG1.M1();
        }
    }
}
