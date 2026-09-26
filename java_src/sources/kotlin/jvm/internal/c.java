package kotlin.jvm.internal;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class c {
    @NotNull
    public static final <T> Iterator<T> a(@NotNull T[] array) {
        t.j(array, "array");
        return new b(array);
    }
}
