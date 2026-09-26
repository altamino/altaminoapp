package kotlin.collections;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class k0<T> implements Iterable<j0<? extends T>>, f8.a {

    @NotNull
    private final e8.a<Iterator<T>> iteratorFactory;

    /* JADX WARN: Multi-variable type inference failed */
    public k0(@NotNull e8.a<? extends Iterator<? extends T>> iteratorFactory) {
        kotlin.jvm.internal.t.j(iteratorFactory, "iteratorFactory");
        this.iteratorFactory = iteratorFactory;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<j0<T>> iterator() {
        return new l0(this.iteratorFactory.invoke());
    }
}
