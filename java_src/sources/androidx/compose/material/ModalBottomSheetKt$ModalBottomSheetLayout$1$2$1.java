package androidx.compose.material;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import e8.l;
import g8.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1 extends v implements l<Density, IntOffset> {
    final /* synthetic */ float $fullHeight;
    final /* synthetic */ ModalBottomSheetState $sheetState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1(ModalBottomSheetState modalBottomSheetState, float f) {
        super(1);
        this.$sheetState = modalBottomSheetState;
        this.$fullHeight = f;
    }

    public final long a(@NotNull Density offset) {
        t.j(offset, "$this$offset");
        return IntOffsetKt.a(0, this.$sheetState.m().isEmpty() ? c.c(this.$fullHeight) : c.c(this.$sheetState.t().getValue().floatValue()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(Density density) {
        return IntOffset.b(a(density));
    }
}
