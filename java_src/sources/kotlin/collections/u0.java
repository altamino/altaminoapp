package kotlin.collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes8.dex */
public class u0 extends t0 {
    @NotNull
    public static <K, V> kotlin.sequences.g<Map.Entry<K, V>> B(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return d0.Y(map.entrySet());
    }

    @NotNull
    public static <K, V> List<w7.u<K, V>> C(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        if (map.size() == 0) {
            return v.m();
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return v.m();
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            return u.e(new w7.u(next.getKey(), next.getValue()));
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new w7.u(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new w7.u(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
