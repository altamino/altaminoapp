package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public class a0 extends z {
    public static <T> boolean D(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        if (elements instanceof Collection) {
            return collection.addAll((Collection) elements);
        }
        Iterator<? extends T> it = elements.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z6 = true;
            }
        }
        return z6;
    }

    public static <T> boolean E(@NotNull Collection<? super T> collection, @NotNull T[] elements) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        return collection.addAll(o.c(elements));
    }

    @NotNull
    public static final <T> Collection<T> F(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            iterable = d0.U0(iterable);
        }
        return (Collection) iterable;
    }

    private static final <T> boolean H(List<T> list, e8.l<? super T, Boolean> lVar, boolean z6) {
        if (!(list instanceof RandomAccess)) {
            kotlin.jvm.internal.t.h(list, "null cannot be cast to non-null type kotlin.collections.MutableIterable<T of kotlin.collections.CollectionsKt__MutableCollectionsKt.filterInPlace>");
            return G(kotlin.jvm.internal.v0.b(list), lVar, z6);
        }
        m0 it = new j8.i(0, v.o(list)).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int iNextInt = it.nextInt();
            T t5 = list.get(iNextInt);
            if (lVar.invoke(t5).booleanValue() != z6) {
                if (i10 != iNextInt) {
                    list.set(i10, t5);
                }
                i10++;
            }
        }
        if (i10 >= list.size()) {
            return false;
        }
        int iO = v.o(list);
        if (i10 > iO) {
            return true;
        }
        while (true) {
            list.remove(iO);
            if (iO == i10) {
                return true;
            }
            iO--;
        }
    }

    public static <T> boolean I(@NotNull Iterable<? extends T> iterable, @NotNull e8.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(predicate, "predicate");
        return G(iterable, predicate, true);
    }

    public static <T> boolean J(@NotNull List<T> list, @NotNull e8.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.t.j(list, "<this>");
        kotlin.jvm.internal.t.j(predicate, "predicate");
        return H(list, predicate, true);
    }

    public static <T> T K(@NotNull List<T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(0);
    }

    @Nullable
    public static <T> T L(@NotNull List<T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(0);
    }

    public static <T> T M(@NotNull List<T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.remove(v.o(list));
    }

    @Nullable
    public static <T> T N(@NotNull List<T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(v.o(list));
    }

    public static final <T> boolean O(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        return collection.retainAll(F(elements));
    }

    public static <T> boolean P(@NotNull List<T> list, @NotNull e8.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.t.j(list, "<this>");
        kotlin.jvm.internal.t.j(predicate, "predicate");
        return H(list, predicate, false);
    }

    private static final <T> boolean G(Iterable<? extends T> iterable, e8.l<? super T, Boolean> lVar, boolean z6) {
        Iterator<? extends T> it = iterable.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (lVar.invoke(it.next()).booleanValue() == z6) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }
}
