package androidx.compose.material.internal;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ PopupLayout $popupLayout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5(PopupLayout popupLayout) {
        super(1);
        this.$popupLayout = popupLayout;
    }

    public final void a(@NotNull LayoutCoordinates childCoordinates) {
        t.j(childCoordinates, "childCoordinates");
        LayoutCoordinates layoutCoordinatesB = childCoordinates.B();
        t.g(layoutCoordinatesB);
        long jA = layoutCoordinatesB.a();
        long jF = LayoutCoordinatesKt.f(layoutCoordinatesB);
        this.$popupLayout.o(IntRectKt.a(IntOffsetKt.a(c.c(Offset.m(jF)), c.c(Offset.n(jF))), jA));
        this.$popupLayout.t();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
