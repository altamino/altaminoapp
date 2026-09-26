package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import f8.a;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class PersistentOrderedMapLinksIterator<K, V> implements Iterator<LinkedValue<V>>, a {

    @NotNull
    private final Map<K, LinkedValue<V>> hashMap;
    private int index;

    @Nullable
    private Object nextKey;

    @Nullable
    public final Object a() {
        return this.nextKey;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public PersistentOrderedMapLinksIterator(@Nullable Object obj, @NotNull Map<K, LinkedValue<V>> hashMap) {
        t.j(hashMap, "hashMap");
        this.nextKey = obj;
        this.hashMap = hashMap;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.hashMap.size();
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinkedValue<V> next() {
        if (hasNext()) {
            LinkedValue<V> linkedValue = this.hashMap.get(this.nextKey);
            if (linkedValue != null) {
                LinkedValue<V> linkedValue2 = linkedValue;
                this.index++;
                this.nextKey = linkedValue2.c();
                return linkedValue2;
            }
            throw new ConcurrentModificationException("Hash code of a key (" + this.nextKey + ") has changed after it was added to the persistent map.");
        }
        throw new NoSuchElementException();
    }
}
