package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AnimatedContentScope$slideIntoContainer$4 extends v implements l<Integer, Integer> {
    final /* synthetic */ l<Integer, Integer> $initialOffset;
    final /* synthetic */ AnimatedContentScope<Object> this$0;

    @NotNull
    public final Integer b(int i10) {
        return this.$initialOffset.invoke(Integer.valueOf(IntSize.f(this.this$0.k()) - IntOffset.k(this.this$0.f(IntSizeKt.a(i10, i10), this.this$0.k()))));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return b(num.intValue());
    }
}
