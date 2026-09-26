package androidx.compose.ui.layout;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class FixedCountSubcomposeSlotReusePolicy implements SubcomposeSlotReusePolicy {
    private final int maxSlotsToRetainForReuse;

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean b(@Nullable Object obj, @Nullable Object obj2) {
        return true;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void a(@NotNull SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        t.j(slotIds, "slotIds");
        if (slotIds.size() > this.maxSlotsToRetainForReuse) {
            Iterator<Object> it = slotIds.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                it.next();
                i10++;
                if (i10 > this.maxSlotsToRetainForReuse) {
                    it.remove();
                }
            }
        }
    }

    public FixedCountSubcomposeSlotReusePolicy(int i10) {
        this.maxSlotsToRetainForReuse = i10;
    }
}
