package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$placeLabelAndIcon$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Placeable $iconPlaceable;
    final /* synthetic */ float $iconPositionAnimationProgress;
    final /* synthetic */ int $iconX;
    final /* synthetic */ Placeable $labelPlaceable;
    final /* synthetic */ int $labelX;
    final /* synthetic */ int $labelY;
    final /* synthetic */ int $offset;
    final /* synthetic */ int $selectedIconY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NavigationRailKt$placeLabelAndIcon$1(float f, Placeable placeable, int i10, int i11, int i12, Placeable placeable2, int i13, int i14) {
        super(1);
        this.$iconPositionAnimationProgress = f;
        this.$labelPlaceable = placeable;
        this.$labelX = i10;
        this.$labelY = i11;
        this.$offset = i12;
        this.$iconPlaceable = placeable2;
        this.$iconX = i13;
        this.$selectedIconY = i14;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        if (this.$iconPositionAnimationProgress != 0.0f) {
            Placeable.PlacementScope.n(layout, this.$labelPlaceable, this.$labelX, this.$labelY + this.$offset, 0.0f, 4, null);
        }
        Placeable.PlacementScope.n(layout, this.$iconPlaceable, this.$iconX, this.$selectedIconY + this.$offset, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
