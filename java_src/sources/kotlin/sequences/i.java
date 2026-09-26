package kotlin.sequences;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class i<T> {
    @Nullable
    public abstract Object a(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @Nullable
    public abstract Object b(@NotNull Iterator<? extends T> it, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @Nullable
    public final Object c(@NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objB = b(gVar.iterator(), dVar);
        if (objB == kotlin.coroutines.intrinsics.d.e()) {
            return objB;
        }
        return l0.INSTANCE;
    }
}
