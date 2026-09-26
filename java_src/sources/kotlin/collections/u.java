package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class u {
    @NotNull
    public static <E> List<E> a(@NotNull List<E> builder) {
        kotlin.jvm.internal.t.j(builder, "builder");
        return ((x7.b) builder).r();
    }

    @NotNull
    public static final <T> Object[] b(@NotNull T[] tArr, boolean z6) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (z6 && kotlin.jvm.internal.t.e(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        kotlin.jvm.internal.t.i(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    @NotNull
    public static <E> List<E> c() {
        return new x7.b();
    }

    @NotNull
    public static <E> List<E> d(int i10) {
        return new x7.b(i10);
    }

    @NotNull
    public static <T> T[] f(int i10, @NotNull T[] array) {
        kotlin.jvm.internal.t.j(array, "array");
        if (i10 < array.length) {
            array[i10] = null;
        }
        return array;
    }

    @NotNull
    public static <T> List<T> e(T t5) {
        List<T> listSingletonList = Collections.singletonList(t5);
        kotlin.jvm.internal.t.i(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }
}
