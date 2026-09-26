package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class WrapContentModifier$measure$1 extends v implements e8.l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ int $wrapperHeight;
    final /* synthetic */ int $wrapperWidth;
    final /* synthetic */ WrapContentModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WrapContentModifier$measure$1(WrapContentModifier wrapContentModifier, int i10, Placeable placeable, int i11, MeasureScope measureScope) {
        super(1);
        this.this$0 = wrapContentModifier;
        this.$wrapperWidth = i10;
        this.$placeable = placeable;
        this.$wrapperHeight = i11;
        this.$this_measure = measureScope;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.l(layout, this.$placeable, ((IntOffset) this.this$0.alignmentCallback.invoke(IntSize.b(IntSizeKt.a(this.$wrapperWidth - this.$placeable.Q0(), this.$wrapperHeight - this.$placeable.B0())), this.$this_measure.getLayoutDirection())).n(), 0.0f, 2, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
