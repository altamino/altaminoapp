package kotlin.collections;

import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
class b0 extends a0 {
    @NotNull
    public static <T> List<T> T(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        return new v0(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int U(List<?> list, int i10) {
        if (new j8.i(0, v.o(list)).p(i10)) {
            return v.o(list) - i10;
        }
        throw new IndexOutOfBoundsException("Element index " + i10 + " must be in range [" + new j8.i(0, v.o(list)) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int W(List<?> list, int i10) {
        if (new j8.i(0, list.size()).p(i10)) {
            return list.size() - i10;
        }
        throw new IndexOutOfBoundsException("Position index " + i10 + " must be in range [" + new j8.i(0, list.size()) + "].");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int V(List<?> list, int i10) {
        return v.o(list) - i10;
    }
}
