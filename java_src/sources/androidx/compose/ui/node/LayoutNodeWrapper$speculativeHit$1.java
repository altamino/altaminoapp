package androidx.compose.ui.node;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNodeWrapper$speculativeHit$1 extends v implements e8.a<l0> {
    final /* synthetic */ float $distanceFromEdge;
    final /* synthetic */ HitTestResult<C> $hitTestResult;
    final /* synthetic */ LayoutNodeWrapper.HitTestSource<T, C, M> $hitTestSource;
    final /* synthetic */ boolean $isInLayer;
    final /* synthetic */ boolean $isTouchEvent;
    final /* synthetic */ long $pointerPosition;

    /* JADX INFO: Incorrect field signature: TT; */
    final /* synthetic */ LayoutNodeEntity $this_speculativeHit;
    final /* synthetic */ LayoutNodeWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (Landroidx/compose/ui/node/LayoutNodeWrapper;TT;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<TT;TC;TM;>;JLandroidx/compose/ui/node/HitTestResult<TC;>;ZZF)V */
    LayoutNodeWrapper$speculativeHit$1(LayoutNodeWrapper layoutNodeWrapper, LayoutNodeEntity layoutNodeEntity, LayoutNodeWrapper.HitTestSource hitTestSource, long j6, HitTestResult hitTestResult, boolean z6, boolean z10, float f) {
        super(0);
        this.this$0 = layoutNodeWrapper;
        this.$this_speculativeHit = layoutNodeEntity;
        this.$hitTestSource = hitTestSource;
        this.$pointerPosition = j6;
        this.$hitTestResult = hitTestResult;
        this.$isTouchEvent = z6;
        this.$isInLayer = z10;
        this.$distanceFromEdge = f;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.f2(this.$this_speculativeHit.d(), this.$hitTestSource, this.$pointerPosition, this.$hitTestResult, this.$isTouchEvent, this.$isInLayer, this.$distanceFromEdge);
    }
}
