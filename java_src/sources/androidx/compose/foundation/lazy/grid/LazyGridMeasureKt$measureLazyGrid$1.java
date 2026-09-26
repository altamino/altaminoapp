package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class LazyGridMeasureKt$measureLazyGrid$1 extends v implements l<Placeable.PlacementScope, l0> {
    public static final LazyGridMeasureKt$measureLazyGrid$1 INSTANCE = new LazyGridMeasureKt$measureLazyGrid$1();

    LazyGridMeasureKt$measureLazyGrid$1() {
        super(1);
    }

    public final void a(@NotNull Placeable.PlacementScope invoke) {
        t.j(invoke, "$this$invoke");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
