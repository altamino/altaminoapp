package z7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    @NotNull
    public static final <E extends Enum<E>> a<E> a(@NotNull E[] entries) {
        t.j(entries, "entries");
        return new c(entries);
    }
}
