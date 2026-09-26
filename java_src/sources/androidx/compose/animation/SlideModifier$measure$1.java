package androidx.compose.animation;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SlideModifier$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ long $measuredSize;
    final /* synthetic */ Placeable $placeable;
    final /* synthetic */ SlideModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SlideModifier$measure$1(SlideModifier slideModifier, Placeable placeable, long j6) {
        super(1);
        this.this$0 = slideModifier;
        this.$placeable = placeable;
        this.$measuredSize = j6;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.x(layout, this.$placeable, this.this$0.a().a(this.this$0.d(), new SlideModifier$measure$1$slideOffset$1(this.this$0, this.$measuredSize)).getValue().n(), 0.0f, null, 6, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
