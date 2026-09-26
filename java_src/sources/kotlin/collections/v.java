package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class v extends u {
    @NotNull
    public static <T> ArrayList<T> g(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return elements.length == 0 ? new ArrayList<>() : new ArrayList<>(new j(elements, true));
    }

    @NotNull
    public static final <T> Collection<T> h(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return new j(tArr, false);
    }

    public static final <T> int i(@NotNull List<? extends T> list, int i10, int i11, @NotNull e8.l<? super T, Integer> comparison) {
        kotlin.jvm.internal.t.j(list, "<this>");
        kotlin.jvm.internal.t.j(comparison, "comparison");
        u(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int iIntValue = comparison.invoke(list.get(i13)).intValue();
            if (iIntValue < 0) {
                i10 = i13 + 1;
            } else {
                if (iIntValue <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static final <T extends Comparable<? super T>> int j(@NotNull List<? extends T> list, @Nullable T t5, int i10, int i11) {
        kotlin.jvm.internal.t.j(list, "<this>");
        u(list.size(), i10, i11);
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int iD = y7.c.d(list.get(i13), t5);
            if (iD < 0) {
                i10 = i13 + 1;
            } else {
                if (iD <= 0) {
                    return i13;
                }
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    public static /* synthetic */ int k(List list, int i10, int i11, e8.l lVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = list.size();
        }
        return i(list, i10, i11, lVar);
    }

    public static /* synthetic */ int l(List list, Comparable comparable, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = list.size();
        }
        return j(list, comparable, i10, i11);
    }

    @NotNull
    public static <T> List<T> m() {
        return f0.INSTANCE;
    }

    @NotNull
    public static j8.i n(@NotNull Collection<?> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        return new j8.i(0, collection.size() - 1);
    }

    public static <T> int o(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        return list.size() - 1;
    }

    @NotNull
    public static <T> List<T> p(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return elements.length > 0 ? o.c(elements) : m();
    }

    @NotNull
    public static <T> List<T> q(@Nullable T t5) {
        return t5 != null ? u.e(t5) : m();
    }

    @NotNull
    public static <T> List<T> r(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return p.J(elements);
    }

    @NotNull
    public static <T> List<T> s(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new j(elements, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> t(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : u.e(list.get(0));
        }
        return m();
    }

    private static final void u(int i10, int i11, int i12) {
        if (i11 > i12) {
            throw new IllegalArgumentException("fromIndex (" + i11 + ") is greater than toIndex (" + i12 + ").");
        }
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("fromIndex (" + i11 + ") is less than zero.");
        }
        if (i12 <= i10) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i12 + ") is greater than size (" + i10 + ").");
    }

    public static void v() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static void w() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
