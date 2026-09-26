package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class AnimatedContentMeasurePolicy$measure$3 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ int $maxHeight;
    final /* synthetic */ int $maxWidth;
    final /* synthetic */ Placeable[] $placeables;
    final /* synthetic */ AnimatedContentMeasurePolicy this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AnimatedContentMeasurePolicy$measure$3(Placeable[] placeableArr, AnimatedContentMeasurePolicy animatedContentMeasurePolicy, int i10, int i11) {
        super(1);
        this.$placeables = placeableArr;
        this.this$0 = animatedContentMeasurePolicy;
        this.$maxWidth = i10;
        this.$maxHeight = i11;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable[] placeableArr = this.$placeables;
        AnimatedContentMeasurePolicy animatedContentMeasurePolicy = this.this$0;
        int i10 = this.$maxWidth;
        int i11 = this.$maxHeight;
        for (Placeable placeable : placeableArr) {
            if (placeable != null) {
                long jA = animatedContentMeasurePolicy.f().j().a(IntSizeKt.a(placeable.Q0(), placeable.B0()), IntSizeKt.a(i10, i11), LayoutDirection.Ltr);
                Placeable.PlacementScope.j(layout, placeable, IntOffset.j(jA), IntOffset.k(jA), 0.0f, 4, null);
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
