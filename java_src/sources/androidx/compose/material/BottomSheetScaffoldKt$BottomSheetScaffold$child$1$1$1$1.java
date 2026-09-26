package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$1$1 extends v implements l<IntSize, l0> {
    final /* synthetic */ MutableState<Float> $bottomSheetHeight$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$1$1(MutableState<Float> mutableState) {
        super(1);
        this.$bottomSheetHeight$delegate = mutableState;
    }

    public final void a(long j6) {
        BottomSheetScaffoldKt.d(this.$bottomSheetHeight$delegate, Float.valueOf(IntSize.f(j6)));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(IntSize intSize) {
        a(intSize.j());
        return l0.INSTANCE;
    }
}
