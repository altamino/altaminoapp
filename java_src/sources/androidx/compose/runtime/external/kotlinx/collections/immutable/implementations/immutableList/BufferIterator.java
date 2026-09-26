package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class BufferIterator<T> extends AbstractListIterator<T> {

    @NotNull
    private final T[] buffer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferIterator(@NotNull T[] buffer, int i10, int i11) {
        super(i10, i11);
        t.j(buffer, "buffer");
        this.buffer = buffer;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public T next() {
        if (hasNext()) {
            T[] tArr = this.buffer;
            int iC = c();
            f(iC + 1);
            return tArr[iC];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public T previous() {
        if (hasPrevious()) {
            T[] tArr = this.buffer;
            f(c() - 1);
            return tArr[c()];
        }
        throw new NoSuchElementException();
    }
}
