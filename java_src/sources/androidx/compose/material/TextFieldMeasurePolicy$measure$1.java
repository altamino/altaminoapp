package androidx.compose.material;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import e8.l;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class TextFieldMeasurePolicy$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ int $effectiveLabelBaseline;
    final /* synthetic */ int $height;
    final /* synthetic */ Placeable $labelPlaceable;
    final /* synthetic */ int $lastBaseline;
    final /* synthetic */ Placeable $leadingPlaceable;
    final /* synthetic */ Placeable $placeholderPlaceable;
    final /* synthetic */ Placeable $textFieldPlaceable;
    final /* synthetic */ MeasureScope $this_measure;
    final /* synthetic */ int $topPadding;
    final /* synthetic */ int $topPaddingValue;
    final /* synthetic */ Placeable $trailingPlaceable;
    final /* synthetic */ int $width;
    final /* synthetic */ TextFieldMeasurePolicy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldMeasurePolicy$measure$1(Placeable placeable, int i10, int i11, int i12, int i13, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, TextFieldMeasurePolicy textFieldMeasurePolicy, int i14, int i15, MeasureScope measureScope) {
        super(1);
        this.$labelPlaceable = placeable;
        this.$topPaddingValue = i10;
        this.$lastBaseline = i11;
        this.$width = i12;
        this.$height = i13;
        this.$textFieldPlaceable = placeable2;
        this.$placeholderPlaceable = placeable3;
        this.$leadingPlaceable = placeable4;
        this.$trailingPlaceable = placeable5;
        this.this$0 = textFieldMeasurePolicy;
        this.$effectiveLabelBaseline = i14;
        this.$topPadding = i15;
        this.$this_measure = measureScope;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        if (this.$labelPlaceable == null) {
            TextFieldKt.o(layout, this.$width, this.$height, this.$textFieldPlaceable, this.$placeholderPlaceable, this.$leadingPlaceable, this.$trailingPlaceable, this.this$0.singleLine, this.$this_measure.getDensity(), this.this$0.paddingValues);
            return;
        }
        int iE = o.e(this.$topPaddingValue - this.$lastBaseline, 0);
        TextFieldKt.n(layout, this.$width, this.$height, this.$textFieldPlaceable, this.$labelPlaceable, this.$placeholderPlaceable, this.$leadingPlaceable, this.$trailingPlaceable, this.this$0.singleLine, iE, this.$topPadding + this.$effectiveLabelBaseline, this.this$0.animationProgress, this.$this_measure.getDensity());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
