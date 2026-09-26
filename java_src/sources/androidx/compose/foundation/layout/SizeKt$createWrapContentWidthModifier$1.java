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
final class SizeKt$createWrapContentWidthModifier$1 extends v implements e8.p<IntSize, LayoutDirection, IntOffset> {
    final /* synthetic */ Alignment.Horizontal $align;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SizeKt$createWrapContentWidthModifier$1(Alignment.Horizontal horizontal) {
        super(2);
        this.$align = horizontal;
    }

    public final long a(long j6, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        return IntOffsetKt.a(this.$align.a(0, IntSize.g(j6), layoutDirection), 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize, LayoutDirection layoutDirection) {
        return IntOffset.b(a(intSize.j(), layoutDirection));
    }
}
