package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Iterator;
import kotlin.collections.h;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class PersistentOrderedSetBuilder<E> extends h<E> implements PersistentSet.Builder<E> {

    @Nullable
    private Object firstElement;

    @NotNull
    private final PersistentHashMapBuilder<E, Links> hashMapBuilder;

    @Nullable
    private Object lastElement;

    @NotNull
    private PersistentOrderedSet<E> set;

    @Nullable
    public final Object e() {
        return this.firstElement;
    }

    @NotNull
    public final PersistentHashMapBuilder<E, Links> f() {
        return this.hashMapBuilder;
    }

    public PersistentOrderedSetBuilder(@NotNull PersistentOrderedSet<E> set) {
        t.j(set, "set");
        this.set = set;
        this.firstElement = set.e();
        this.lastElement = this.set.g();
        this.hashMapBuilder = this.set.f().builder();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.hashMapBuilder.containsKey(e)) {
            return false;
        }
        if (isEmpty()) {
            this.firstElement = e;
            this.lastElement = e;
            this.hashMapBuilder.put(e, new Links());
            return true;
        }
        Links links = this.hashMapBuilder.get(this.lastElement);
        t.g(links);
        this.hashMapBuilder.put((E) this.lastElement, links.e(e));
        this.hashMapBuilder.put(e, new Links(this.lastElement));
        this.lastElement = e;
        return true;
    }

    @Override // kotlin.collections.h
    public int c() {
        return this.hashMapBuilder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.hashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstElement = endOfChain;
        this.lastElement = endOfChain;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentOrderedSetMutableIterator(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Links linksRemove = this.hashMapBuilder.remove(obj);
        if (linksRemove == null) {
            return false;
        }
        if (linksRemove.b()) {
            Links links = this.hashMapBuilder.get(linksRemove.d());
            t.g(links);
            this.hashMapBuilder.put((E) linksRemove.d(), links.e(linksRemove.c()));
        } else {
            this.firstElement = linksRemove.c();
        }
        if (!linksRemove.a()) {
            this.lastElement = linksRemove.d();
            return true;
        }
        Links links2 = this.hashMapBuilder.get(linksRemove.c());
        t.g(links2);
        this.hashMapBuilder.put((E) linksRemove.c(), links2.f(linksRemove.d()));
        return true;
    }
}
