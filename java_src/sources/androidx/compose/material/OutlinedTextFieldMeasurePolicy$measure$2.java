package androidx.compose.material;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class OutlinedTextFieldMeasurePolicy$measure$2 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $borderPlaceable;
    final /* synthetic */ int $height;
    final /* synthetic */ Placeable $labelPlaceable;
    final /* synthetic */ Placeable $leadingPlaceable;
    final /* synthetic */ Placeable $placeholderPlaceable;
    final /* synthetic */ Placeable $textFieldPlaceable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ Placeable $trailingPlaceable;
    final /* synthetic */ int $width;
    final /* synthetic */ OutlinedTextFieldMeasurePolicy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OutlinedTextFieldMeasurePolicy$measure$2(int i10, int i11, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy, MeasureScope measureScope) {
        super(1);
        this.$height = i10;
        this.$width = i11;
        this.$leadingPlaceable = placeable;
        this.$trailingPlaceable = placeable2;
        this.$textFieldPlaceable = placeable3;
        this.$labelPlaceable = placeable4;
        this.$placeholderPlaceable = placeable5;
        this.$borderPlaceable = placeable6;
        this.this$0 = outlinedTextFieldMeasurePolicy;
        this.$this_measure = measureScope;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        OutlinedTextFieldKt.k(layout, this.$height, this.$width, this.$leadingPlaceable, this.$trailingPlaceable, this.$textFieldPlaceable, this.$labelPlaceable, this.$placeholderPlaceable, this.$borderPlaceable, this.this$0.animationProgress, this.this$0.singleLine, this.$this_measure.getDensity(), this.$this_measure.getLayoutDirection(), this.this$0.paddingValues);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
