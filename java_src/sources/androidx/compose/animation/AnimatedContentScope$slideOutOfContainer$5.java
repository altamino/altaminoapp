package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class AnimatedContentScope$slideOutOfContainer$5 extends v implements l<Integer, Integer> {
    final /* synthetic */ l<Integer, Integer> $targetOffset;
    final /* synthetic */ AnimatedContentScope<Object> this$0;

    @NotNull
    public final Integer b(int i10) {
        State<IntSize> state = this.this$0.m().get(this.this$0.n().m());
        long j6 = state != null ? state.getValue().j() : IntSize.Companion.a();
        return this.$targetOffset.invoke(Integer.valueOf((-IntOffset.k(this.this$0.f(IntSizeKt.a(i10, i10), j6))) + IntSize.f(j6)));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
        return b(num.intValue());
    }
}
