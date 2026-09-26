package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$3$1$1 extends v implements l<Size, l0> {
    final /* synthetic */ float $labelProgress;
    final /* synthetic */ MutableState<Size> $labelSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldImplKt$CommonDecorationBox$3$1$1(float f, MutableState<Size> mutableState) {
        super(1);
        this.$labelProgress = f;
        this.$labelSize = mutableState;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Size size) {
        a(size.m());
        return l0.INSTANCE;
    }

    public final void a(long j6) {
        float fI = Size.i(j6) * this.$labelProgress;
        float fG = Size.g(j6) * this.$labelProgress;
        if (Size.i(this.$labelSize.getValue().m()) != fI || Size.g(this.$labelSize.getValue().m()) != fG) {
            this.$labelSize.setValue(Size.c(SizeKt.a(fI, fG)));
        }
    }
}
