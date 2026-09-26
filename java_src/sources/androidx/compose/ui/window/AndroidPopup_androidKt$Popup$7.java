package androidx.compose.ui.window;

import androidx.compose.ui.layout.LayoutCoordinates;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidPopup_androidKt$Popup$7 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ PopupLayout $popupLayout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidPopup_androidKt$Popup$7(PopupLayout popupLayout) {
        super(1);
        this.$popupLayout = popupLayout;
    }

    public final void a(@NotNull LayoutCoordinates childCoordinates) {
        t.j(childCoordinates, "childCoordinates");
        LayoutCoordinates layoutCoordinatesB = childCoordinates.B();
        t.g(layoutCoordinatesB);
        this.$popupLayout.u(layoutCoordinatesB);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
