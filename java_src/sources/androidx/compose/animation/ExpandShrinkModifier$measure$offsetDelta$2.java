package androidx.compose.animation;

import androidx.compose.ui.unit.IntOffset;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class ExpandShrinkModifier$measure$offsetDelta$2 extends v implements l<EnterExitState, IntOffset> {
    final /* synthetic */ long $measuredSize;
    final /* synthetic */ ExpandShrinkModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExpandShrinkModifier$measure$offsetDelta$2(ExpandShrinkModifier expandShrinkModifier, long j6) {
        super(1);
        this.this$0 = expandShrinkModifier;
        this.$measuredSize = j6;
    }

    public final long a(@NotNull EnterExitState it) {
        t.j(it, "it");
        return this.this$0.g(it, this.$measuredSize);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ IntOffset invoke(EnterExitState enterExitState) {
        return IntOffset.b(a(enterExitState));
    }
}
