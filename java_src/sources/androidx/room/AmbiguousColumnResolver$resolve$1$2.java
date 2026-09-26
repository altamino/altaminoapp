package androidx.room;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class AmbiguousColumnResolver$resolve$1$2 extends kotlin.jvm.internal.v implements e8.l<List<? extends Integer>, l0> {
    final /* synthetic */ int $mappingIndex;
    final /* synthetic */ List<List<AmbiguousColumnResolver.Match>> $mappingMatches;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(List<? extends Integer> list) {
        invoke2((List<Integer>) list);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull List<Integer> indices) {
        kotlin.jvm.internal.t.j(indices, "indices");
        List<Integer> list = indices;
        Iterator<T> it = list.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        int iIntValue = ((Number) it.next()).intValue();
        while (it.hasNext()) {
            int iIntValue2 = ((Number) it.next()).intValue();
            if (iIntValue > iIntValue2) {
                iIntValue = iIntValue2;
            }
        }
        Iterator<T> it2 = list.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        int iIntValue3 = ((Number) it2.next()).intValue();
        while (it2.hasNext()) {
            int iIntValue4 = ((Number) it2.next()).intValue();
            if (iIntValue3 < iIntValue4) {
                iIntValue3 = iIntValue4;
            }
        }
        this.$mappingMatches.get(this.$mappingIndex).add(new AmbiguousColumnResolver.Match(new j8.i(iIntValue, iIntValue3), indices));
    }
}
