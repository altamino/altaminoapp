package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class HorizontalScrollLayoutModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ int $width;
    final /* synthetic */ HorizontalScrollLayoutModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HorizontalScrollLayoutModifier$measure$1(MeasureScope measureScope, HorizontalScrollLayoutModifier horizontalScrollLayoutModifier, Placeable placeable, int i10) {
        super(1);
        this.$this_measure = measureScope;
        this.this$0 = horizontalScrollLayoutModifier;
        this.$placeable = placeable;
        this.$width = i10;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        MeasureScope measureScope = this.$this_measure;
        int iA = this.this$0.a();
        TransformedText transformedTextD = this.this$0.d();
        TextLayoutResultProxy textLayoutResultProxyInvoke = this.this$0.c().invoke();
        this.this$0.b().j(Orientation.Horizontal, TextFieldScrollKt.b(measureScope, iA, transformedTextD, textLayoutResultProxyInvoke != null ? textLayoutResultProxyInvoke.i() : null, this.$this_measure.getLayoutDirection() == LayoutDirection.Rtl, this.$placeable.Q0()), this.$width, this.$placeable.Q0());
        Placeable.PlacementScope.n(layout, this.$placeable, c.c(-this.this$0.b().d()), 0, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
