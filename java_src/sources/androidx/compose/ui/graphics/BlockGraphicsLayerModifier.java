package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class BlockGraphicsLayerModifier extends InspectorValueInfo implements LayoutModifier {

    @NotNull
    private final e8.l<GraphicsLayerScope, w7.l0> layerBlock;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.b(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BlockGraphicsLayerModifier(@NotNull e8.l<? super GraphicsLayerScope, w7.l0> layerBlock, @NotNull e8.l<? super InspectorInfo, w7.l0> inspectorInfo) {
        super(inspectorInfo);
        kotlin.jvm.internal.t.j(layerBlock, "layerBlock");
        kotlin.jvm.internal.t.j(inspectorInfo, "inspectorInfo");
        this.layerBlock = layerBlock;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        kotlin.jvm.internal.t.j(measure, "$this$measure");
        kotlin.jvm.internal.t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new BlockGraphicsLayerModifier$measure$1(placeableB0, this), 4, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof BlockGraphicsLayerModifier) {
            return kotlin.jvm.internal.t.e(this.layerBlock, ((BlockGraphicsLayerModifier) obj).layerBlock);
        }
        return false;
    }

    public int hashCode() {
        return this.layerBlock.hashCode();
    }

    @NotNull
    public String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.layerBlock + ')';
    }
}
