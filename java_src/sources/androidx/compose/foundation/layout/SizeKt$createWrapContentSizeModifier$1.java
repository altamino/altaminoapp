package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class SizeKt$createWrapContentSizeModifier$1 extends v implements e8.p<IntSize, LayoutDirection, IntOffset> {
    final /* synthetic */ Alignment $align;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SizeKt$createWrapContentSizeModifier$1(Alignment alignment) {
        super(2);
        this.$align = alignment;
    }

    public final long a(long j6, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        return this.$align.a(IntSize.Companion.a(), j6, layoutDirection);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize, LayoutDirection layoutDirection) {
        return IntOffset.b(a(intSize.j(), layoutDirection));
    }
}
