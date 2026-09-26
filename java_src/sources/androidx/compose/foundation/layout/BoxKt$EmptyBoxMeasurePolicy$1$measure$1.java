package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Placeable;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class BoxKt$EmptyBoxMeasurePolicy$1$measure$1 extends v implements e8.l<Placeable.PlacementScope, l0> {
    public static final BoxKt$EmptyBoxMeasurePolicy$1$measure$1 INSTANCE = new BoxKt$EmptyBoxMeasurePolicy$1$measure$1();

    BoxKt$EmptyBoxMeasurePolicy$1$measure$1() {
        super(1);
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
