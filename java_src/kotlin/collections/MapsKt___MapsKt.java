package kotlin.collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Maps.kt */
/* loaded from: classes4.dex */
public class MapsKt___MapsKt extends MapsKt__MapsKt {
    public static <K, V> List<Pair<K, V>> toList(Map<? extends K, ? extends V> toList) {
        Intrinsics.checkParameterIsNotNull(toList, "$this$toList");
        if (toList.size() == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = toList.entrySet().iterator();
        if (!it.hasNext()) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            return CollectionsKt__CollectionsJVMKt.listOf(new Pair(next.getKey(), next.getValue()));
        }
        ArrayList arrayList = new ArrayList(toList.size());
        arrayList.add(new Pair(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new Pair(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
