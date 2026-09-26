package androidx.compose.material.internal;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class ExposedDropdownMenuPopupKt$SimpleStack$1$measure$3 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ List<Placeable> $placeables;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ExposedDropdownMenuPopupKt$SimpleStack$1$measure$3(List<? extends Placeable> list) {
        super(1);
        this.$placeables = list;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
        int iO = kotlin.collections.v.o(this.$placeables);
        if (iO < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            Placeable.PlacementScope.n(layout, this.$placeables.get(i10), 0, 0, 0.0f, 4, null);
            if (i10 == iO) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
