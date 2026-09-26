package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class SlideModifier$measure$1$slideOffset$1 extends v implements l<EnterExitState, IntOffset> {
    final /* synthetic */ long $measuredSize;
    final /* synthetic */ SlideModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SlideModifier$measure$1$slideOffset$1(SlideModifier slideModifier, long j6) {
        super(1);
        this.this$0 = slideModifier;
        this.$measuredSize = j6;
    }

    public final long a(@NotNull EnterExitState it) {
        t.j(it, "it");
        return this.this$0.f(it, this.$measuredSize);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(EnterExitState enterExitState) {
        return IntOffset.b(a(enterExitState));
    }
}
