package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ MutableState<Float> $sheetHeightState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1(MutableState<Float> mutableState) {
        super(1);
        this.$sheetHeightState = mutableState;
    }

    public final void a(@NotNull LayoutCoordinates it) {
        t.j(it, "it");
        this.$sheetHeightState.setValue(Float.valueOf(IntSize.f(it.a())));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
