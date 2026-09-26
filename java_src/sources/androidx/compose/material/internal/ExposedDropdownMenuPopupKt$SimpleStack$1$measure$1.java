package androidx.compose.material.internal;

import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    public static final ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1 INSTANCE = new ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1();

    public ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1() {
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
