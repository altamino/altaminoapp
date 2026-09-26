package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AnimatedContentScope$SizeModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ long $offset;
    final /* synthetic */ Placeable $placeable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AnimatedContentScope$SizeModifier$measure$1(Placeable placeable, long j6) {
        super(1);
        this.$placeable = placeable;
        this.$offset = j6;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.l(layout, this.$placeable, this.$offset, 0.0f, 2, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
