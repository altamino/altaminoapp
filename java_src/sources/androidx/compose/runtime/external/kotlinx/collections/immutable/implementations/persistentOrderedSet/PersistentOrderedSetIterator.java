package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import f8.a;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class PersistentOrderedSetIterator<E> implements Iterator<E>, a {
    private int index;

    @NotNull
    private final Map<E, Links> map;

    @Nullable
    private Object nextElement;

    public final int b() {
        return this.index;
    }

    public final void c(int i10) {
        this.index = i10;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public PersistentOrderedSetIterator(@Nullable Object obj, @NotNull Map<E, Links> map) {
        t.j(map, "map");
        this.nextElement = obj;
        this.map = map;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.map.size();
    }

    private final void a() {
        if (hasNext()) {
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    public E next() {
        a();
        E e = (E) this.nextElement;
        this.index++;
        Links links = this.map.get(e);
        if (links != null) {
            this.nextElement = links.c();
            return e;
        }
        throw new ConcurrentModificationException("Hash code of an element (" + e + ") has changed after it was added to the persistent set.");
    }
}
