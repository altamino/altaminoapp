package androidx.compose.animation;

import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$expandHorizontally$2 extends v implements l<IntSize, IntSize> {
    final /* synthetic */ l<Integer, Integer> $initialWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    EnterExitTransitionKt$expandHorizontally$2(l<? super Integer, Integer> lVar) {
        super(1);
        this.$initialWidth = lVar;
    }

    public final long a(long j6) {
        return IntSizeKt.a(this.$initialWidth.invoke(Integer.valueOf(IntSize.g(j6))).intValue(), IntSize.f(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
        return IntSize.b(a(intSize.j()));
    }
}
