package androidx.compose.material;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class SwipeToDismissKt$SwipeToDismiss$2$thresholds$1$1 extends v implements p<DismissValue, DismissValue, ThresholdConfig> {
    final /* synthetic */ l<DismissDirection, ThresholdConfig> $dismissThresholds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SwipeToDismissKt$SwipeToDismiss$2$thresholds$1$1(l<? super DismissDirection, ? extends ThresholdConfig> lVar) {
        super(2);
        this.$dismissThresholds = lVar;
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ThresholdConfig invoke(@NotNull DismissValue from, @NotNull DismissValue to) {
        t.j(from, "from");
        t.j(to, "to");
        l<DismissDirection, ThresholdConfig> lVar = this.$dismissThresholds;
        DismissDirection dismissDirectionC = SwipeToDismissKt.c(from, to);
        t.g(dismissDirectionC);
        return lVar.invoke(dismissDirectionC);
    }
}
