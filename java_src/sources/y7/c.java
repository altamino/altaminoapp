package y7;

import e8.l;
import java.util.Comparator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class c {
    private static final <T> int e(T t5, T t10, l<? super T, ? extends Comparable<?>>[] lVarArr) {
        for (l<? super T, ? extends Comparable<?>> lVar : lVarArr) {
            int iD = d(lVar.invoke(t5), lVar.invoke(t10));
            if (iD != 0) {
                return iD;
            }
        }
        return 0;
    }

    @NotNull
    public static <T> Comparator<T> b(@NotNull final l<? super T, ? extends Comparable<?>>... selectors) {
        t.j(selectors, "selectors");
        if (selectors.length > 0) {
            return new Comparator() { // from class: y7.b
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return c.c(selectors, obj, obj2);
                }
            };
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(l[] selectors, Object obj, Object obj2) {
        t.j(selectors, "$selectors");
        return e(obj, obj2, selectors);
    }

    public static <T extends Comparable<?>> int d(@Nullable T t5, @Nullable T t10) {
        if (t5 == t10) {
            return 0;
        }
        if (t5 == null) {
            return -1;
        }
        if (t10 == null) {
            return 1;
        }
        return t5.compareTo(t10);
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> f() {
        f fVar = f.INSTANCE;
        t.h(fVar, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>{ kotlin.TypeAliasesKt.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder> }");
        return fVar;
    }
}
