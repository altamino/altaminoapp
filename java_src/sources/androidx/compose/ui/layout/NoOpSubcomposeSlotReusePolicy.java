package androidx.compose.ui.layout;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class NoOpSubcomposeSlotReusePolicy implements SubcomposeSlotReusePolicy {

    @NotNull
    public static final NoOpSubcomposeSlotReusePolicy INSTANCE = new NoOpSubcomposeSlotReusePolicy();

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean b(@Nullable Object obj, @Nullable Object obj2) {
        return false;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void a(@NotNull SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        t.j(slotIds, "slotIds");
        slotIds.clear();
    }

    private NoOpSubcomposeSlotReusePolicy() {
    }
}
