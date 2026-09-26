package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class VerticalScrollLayoutModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ int $height;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ VerticalScrollLayoutModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VerticalScrollLayoutModifier$measure$1(MeasureScope measureScope, VerticalScrollLayoutModifier verticalScrollLayoutModifier, Placeable placeable, int i10) {
        super(1);
        this.$this_measure = measureScope;
        this.this$0 = verticalScrollLayoutModifier;
        this.$placeable = placeable;
        this.$height = i10;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        MeasureScope measureScope = this.$this_measure;
        int iA = this.this$0.a();
        TransformedText transformedTextD = this.this$0.d();
        TextLayoutResultProxy textLayoutResultProxyInvoke = this.this$0.c().invoke();
        this.this$0.b().j(Orientation.Vertical, TextFieldScrollKt.b(measureScope, iA, transformedTextD, textLayoutResultProxyInvoke != null ? textLayoutResultProxyInvoke.i() : null, false, this.$placeable.Q0()), this.$height, this.$placeable.B0());
        Placeable.PlacementScope.n(layout, this.$placeable, 0, c.c(-this.this$0.b().d()), 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
