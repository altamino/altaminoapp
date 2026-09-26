package androidx.compose.material;

import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SwipeToDismissKt$rememberDismissState$2 extends v implements a<DismissState> {
    final /* synthetic */ l<DismissValue, Boolean> $confirmStateChange;
    final /* synthetic */ DismissValue $initialValue;

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final DismissState invoke() {
        return new DismissState(this.$initialValue, this.$confirmStateChange);
    }
}
