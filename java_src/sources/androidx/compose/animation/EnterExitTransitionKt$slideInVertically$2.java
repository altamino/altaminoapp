package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes11.dex */
final class EnterExitTransitionKt$slideInVertically$2 extends v implements l<IntSize, IntOffset> {
    final /* synthetic */ l<Integer, Integer> $initialOffsetY;

    public final long a(long j6) {
        return IntOffsetKt.a(0, this.$initialOffsetY.invoke(Integer.valueOf(IntSize.f(j6))).intValue());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
        return IntOffset.b(a(intSize.j()));
    }
}
