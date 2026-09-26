package kotlin.collections;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes8.dex */
public class y0 extends x0 {
    @NotNull
    public static <T> Set<T> e() {
        return h0.INSTANCE;
    }

    @NotNull
    public static <T> HashSet<T> f(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return (HashSet) p.r0(elements, new HashSet(r0.e(elements.length)));
    }

    @NotNull
    public static <T> Set<T> g(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return (Set) p.r0(elements, new LinkedHashSet(r0.e(elements.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Set<T> h(@NotNull Set<? extends T> set) {
        kotlin.jvm.internal.t.j(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : x0.d(set.iterator().next());
        }
        return e();
    }

    @NotNull
    public static <T> Set<T> i(@NotNull T... elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return elements.length > 0 ? p.x0(elements) : e();
    }
}
