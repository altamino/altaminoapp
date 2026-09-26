package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class w extends v {
    public static <T> int x(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i10;
    }

    @Nullable
    public static final <T> Integer y(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }

    @NotNull
    public static <T> List<T> z(@NotNull Iterable<? extends Iterable<? extends T>> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Iterable<? extends T>> it = iterable.iterator();
        while (it.hasNext()) {
            a0.D(arrayList, it.next());
        }
        return arrayList;
    }
}
