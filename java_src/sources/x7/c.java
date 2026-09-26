package x7;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int i(T[] tArr, int i10, int i11) {
        int iHashCode = 1;
        for (int i12 = 0; i12 < i11; i12++) {
            T t5 = tArr[i10 + i12];
            iHashCode = (iHashCode * 31) + (t5 != null ? t5.hashCode() : 0);
        }
        return iHashCode;
    }

    @NotNull
    public static final <E> E[] d(int i10) {
        if (i10 >= 0) {
            return (E[]) new Object[i10];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    @NotNull
    public static final <T> T[] e(@NotNull T[] tArr, int i10) {
        t.j(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i10);
        t.i(tArr2, "copyOf(...)");
        return tArr2;
    }

    public static final <E> void f(@NotNull E[] eArr, int i10) {
        t.j(eArr, "<this>");
        eArr[i10] = null;
    }

    public static final <E> void g(@NotNull E[] eArr, int i10, int i11) {
        t.j(eArr, "<this>");
        while (i10 < i11) {
            f(eArr, i10);
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> String j(T[] tArr, int i10, int i11, Collection<? extends T> collection) {
        StringBuilder sb = new StringBuilder((i11 * 3) + 2);
        sb.append("[");
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb.append(", ");
            }
            T t5 = tArr[i10 + i12];
            if (t5 == collection) {
                sb.append("(this Collection)");
            } else {
                sb.append(t5);
            }
        }
        sb.append("]");
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean h(T[] tArr, int i10, int i11, List<?> list) {
        if (i11 != list.size()) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!t.e(tArr[i10 + i12], list.get(i12))) {
                return false;
            }
        }
        return true;
    }
}
