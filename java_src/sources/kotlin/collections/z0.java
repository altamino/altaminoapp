package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes8.dex */
public class z0 extends y0 {
    @NotNull
    public static <T> Set<T> j(@NotNull Set<? extends T> set, T t5) {
        kotlin.jvm.internal.t.j(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(r0.e(set.size()));
        boolean z6 = false;
        for (T t10 : set) {
            boolean z10 = true;
            if (!z6 && kotlin.jvm.internal.t.e(t10, t5)) {
                z6 = true;
                z10 = false;
            }
            if (z10) {
                linkedHashSet.add(t10);
            }
        }
        return linkedHashSet;
    }

    @NotNull
    public static <T> Set<T> k(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        int size;
        kotlin.jvm.internal.t.j(set, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        Integer numY = w.y(elements);
        if (numY != null) {
            size = set.size() + numY.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(r0.e(size));
        linkedHashSet.addAll(set);
        a0.D(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static <T> Set<T> l(@NotNull Set<? extends T> set, T t5) {
        kotlin.jvm.internal.t.j(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(r0.e(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(t5);
        return linkedHashSet;
    }
}
