package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SparseArrayKt {
    @NotNull
    public static final <T> Iterator<T> a(@NotNull SparseArrayCompat<T> receiver$0) {
        t.k(receiver$0, "receiver$0");
        return new SparseArrayKt$valueIterator$1(receiver$0);
    }
}
