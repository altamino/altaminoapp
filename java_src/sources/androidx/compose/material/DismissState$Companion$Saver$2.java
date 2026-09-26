package androidx.compose.material;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class DismissState$Companion$Saver$2 extends v implements l<DismissValue, DismissState> {
    final /* synthetic */ l<DismissValue, Boolean> $confirmStateChange;

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DismissState invoke(@NotNull DismissValue it) {
        t.j(it, "it");
        return new DismissState(it, this.$confirmStateChange);
    }
}
