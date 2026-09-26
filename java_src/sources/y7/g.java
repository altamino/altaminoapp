package y7;

import java.util.Comparator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class g implements Comparator<Comparable<? super Object>> {

    @NotNull
    public static final g INSTANCE = new g();

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(@NotNull Comparable<Object> a7, @NotNull Comparable<Object> b7) {
        t.j(a7, "a");
        t.j(b7, "b");
        return b7.compareTo(a7);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return f.INSTANCE;
    }

    private g() {
    }
}
