package kotlin.collections;

import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
class c0 extends b0 {
    public static <T> void X(@NotNull List<T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        Collections.reverse(list);
    }
}
