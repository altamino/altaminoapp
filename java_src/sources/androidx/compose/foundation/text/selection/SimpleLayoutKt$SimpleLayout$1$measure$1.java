package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class SimpleLayoutKt$SimpleLayout$1$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ List<Placeable> $placeables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SimpleLayoutKt$SimpleLayout$1$measure$1(List<? extends Placeable> list) {
        super(1);
        this.$placeables = list;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        List<Placeable> list = this.$placeables;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Placeable.PlacementScope.j(layout, list.get(i10), 0, 0, 0.0f, 4, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
