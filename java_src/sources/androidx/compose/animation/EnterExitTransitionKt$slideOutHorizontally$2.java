package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes6.dex */
final class EnterExitTransitionKt$slideOutHorizontally$2 extends v implements l<IntSize, IntOffset> {
    final /* synthetic */ l<Integer, Integer> $targetOffsetX;

    public final long a(long j6) {
        return IntOffsetKt.a(this.$targetOffsetX.invoke(Integer.valueOf(IntSize.g(j6))).intValue(), 0);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
        return IntOffset.b(a(intSize.j()));
    }
}
