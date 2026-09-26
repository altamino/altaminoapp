package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class SizeKt$createWrapContentHeightModifier$1 extends v implements e8.p<IntSize, LayoutDirection, IntOffset> {
    final /* synthetic */ Alignment.Vertical $align;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SizeKt$createWrapContentHeightModifier$1(Alignment.Vertical vertical) {
        super(2);
        this.$align = vertical;
    }

    public final long a(long j6, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "<anonymous parameter 1>");
        return IntOffsetKt.a(0, this.$align.a(0, IntSize.f(j6)));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize, LayoutDirection layoutDirection) {
        return IntOffset.b(a(intSize.j(), layoutDirection));
    }
}
