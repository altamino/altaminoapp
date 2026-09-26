package androidx.compose.material;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SnackbarKt$TextOnlySnackbar$2$measure$4 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ int $containerHeight;
    final /* synthetic */ Placeable $textPlaceable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnackbarKt$TextOnlySnackbar$2$measure$4(int i10, Placeable placeable) {
        super(1);
        this.$containerHeight = i10;
        this.$textPlaceable = placeable;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        Placeable.PlacementScope.n(layout, this.$textPlaceable, 0, (this.$containerHeight - this.$textPlaceable.B0()) / 2, 0.0f, 4, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
