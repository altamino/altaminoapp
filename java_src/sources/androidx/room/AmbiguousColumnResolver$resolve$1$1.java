package androidx.room;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class AmbiguousColumnResolver$resolve$1$1 extends kotlin.jvm.internal.v implements e8.q<Integer, Integer, List<? extends AmbiguousColumnResolver.ResultColumn>, l0> {
    final /* synthetic */ String[] $mapping;
    final /* synthetic */ int $mappingIndex;
    final /* synthetic */ List<List<AmbiguousColumnResolver.Match>> $mappingMatches;

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Integer num, Integer num2, List<? extends AmbiguousColumnResolver.ResultColumn> list) {
        a(num.intValue(), num2.intValue(), list);
        return l0.INSTANCE;
    }

    public final void a(int i10, int i11, @NotNull List<AmbiguousColumnResolver.ResultColumn> resultColumnsSublist) {
        Object next;
        kotlin.jvm.internal.t.j(resultColumnsSublist, "resultColumnsSublist");
        String[] strArr = this.$mapping;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            Iterator<T> it = resultColumnsSublist.iterator();
            do {
                if (it.hasNext()) {
                    next = it.next();
                } else {
                    next = null;
                    break;
                }
            } while (!kotlin.jvm.internal.t.e(str, ((AmbiguousColumnResolver.ResultColumn) next).a()));
            AmbiguousColumnResolver.ResultColumn resultColumn = (AmbiguousColumnResolver.ResultColumn) next;
            if (resultColumn != null) {
                arrayList.add(Integer.valueOf(resultColumn.b()));
            } else {
                return;
            }
        }
        this.$mappingMatches.get(this.$mappingIndex).add(new AmbiguousColumnResolver.Match(new j8.i(i10, i11 - 1), arrayList));
    }
}
