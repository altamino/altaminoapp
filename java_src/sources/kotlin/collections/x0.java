package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes8.dex */
public class x0 {
    @NotNull
    public static <E> Set<E> a(@NotNull Set<E> builder) {
        kotlin.jvm.internal.t.j(builder, "builder");
        return ((x7.j) builder).e();
    }

    @NotNull
    public static <E> Set<E> b() {
        return new x7.j();
    }

    @NotNull
    public static <E> Set<E> c(int i10) {
        return new x7.j(i10);
    }

    @NotNull
    public static <T> Set<T> d(T t5) {
        Set<T> setSingleton = Collections.singleton(t5);
        kotlin.jvm.internal.t.i(setSingleton, "singleton(...)");
        return setSingleton;
    }
}
