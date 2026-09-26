package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalFoundationApi
final class LazyLayoutItemReusePolicy implements SubcomposeSlotReusePolicy {

    @NotNull
    private final Map<Object, Integer> countPerType;

    @NotNull
    private final LazyLayoutItemContentFactory factory;

    public LazyLayoutItemReusePolicy(@NotNull LazyLayoutItemContentFactory factory) {
        t.j(factory, "factory");
        this.factory = factory;
        this.countPerType = new LinkedHashMap();
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void a(@NotNull SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        t.j(slotIds, "slotIds");
        this.countPerType.clear();
        Iterator<Object> it = slotIds.iterator();
        while (it.hasNext()) {
            Object objC = this.factory.c(it.next());
            Integer num = this.countPerType.get(objC);
            int iIntValue = num != null ? num.intValue() : 0;
            if (iIntValue == 7) {
                it.remove();
            } else {
                this.countPerType.put(objC, Integer.valueOf(iIntValue + 1));
            }
        }
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean b(@Nullable Object obj, @Nullable Object obj2) {
        return t.e(this.factory.c(obj), this.factory.c(obj2));
    }
}
