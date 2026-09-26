package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.h;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class PersistentHashSetBuilder<E> extends h<E> implements PersistentSet.Builder<E> {
    private int modCount;

    @NotNull
    private TrieNode<E> node;

    @NotNull
    private MutabilityOwnership ownership;

    @NotNull
    private PersistentHashSet<E> set;
    private int size;

    @Override // kotlin.collections.h
    public int c() {
        return this.size;
    }

    public final int f() {
        return this.modCount;
    }

    @NotNull
    public final TrieNode<E> g() {
        return this.node;
    }

    @NotNull
    public final MutabilityOwnership j() {
        return this.ownership;
    }

    public void m(int i10) {
        this.size = i10;
        this.modCount++;
    }

    public PersistentHashSetBuilder(@NotNull PersistentHashSet<E> set) {
        t.j(set, "set");
        this.set = set;
        this.ownership = new MutabilityOwnership();
        this.node = this.set.c();
        this.size = this.set.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        PersistentHashSet<E> persistentHashSetE = elements instanceof PersistentHashSet ? (PersistentHashSet) elements : null;
        if (persistentHashSetE == null) {
            PersistentHashSetBuilder persistentHashSetBuilder = elements instanceof PersistentHashSetBuilder ? (PersistentHashSetBuilder) elements : null;
            persistentHashSetE = persistentHashSetBuilder != null ? persistentHashSetBuilder.e() : null;
        }
        if (persistentHashSetE == null) {
            return super.addAll(elements);
        }
        DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
        int size = size();
        TrieNode<E> trieNodeU = this.node.u(persistentHashSetE.c(), 0, deltaCounter, this);
        int size2 = (elements.size() + size) - deltaCounter.a();
        if (size != size2) {
            this.node = trieNodeU;
            m(size2);
        }
        return size != size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.node = TrieNode.Companion.a();
        m(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.node.i(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        if (elements instanceof PersistentHashSet) {
            return this.node.j(((PersistentHashSet) elements).c(), 0);
        }
        return elements instanceof PersistentHashSetBuilder ? this.node.j(((PersistentHashSetBuilder) elements).node, 0) : super.containsAll(elements);
    }

    @NotNull
    public PersistentHashSet<E> e() {
        PersistentHashSet<E> persistentHashSet;
        if (this.node == this.set.c()) {
            persistentHashSet = this.set;
        } else {
            this.ownership = new MutabilityOwnership();
            persistentHashSet = new PersistentHashSet<>(this.node, size());
        }
        this.set = persistentHashSet;
        return persistentHashSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentHashSetMutableIterator(this);
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        PersistentHashSet<E> persistentHashSetE = elements instanceof PersistentHashSet ? (PersistentHashSet) elements : null;
        if (persistentHashSetE == null) {
            PersistentHashSetBuilder persistentHashSetBuilder = elements instanceof PersistentHashSetBuilder ? (PersistentHashSetBuilder) elements : null;
            persistentHashSetE = persistentHashSetBuilder != null ? persistentHashSetBuilder.e() : null;
        }
        if (persistentHashSetE == null) {
            return super.removeAll(elements);
        }
        DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
        int size = size();
        Object objE = this.node.E(persistentHashSetE.c(), 0, deltaCounter, this);
        int iA = size - deltaCounter.a();
        if (iA == 0) {
            clear();
        } else if (iA != size) {
            if (objE == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder>");
            }
            this.node = (TrieNode) objE;
            m(iA);
        }
        return size != size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        PersistentHashSet<E> persistentHashSetE = elements instanceof PersistentHashSet ? (PersistentHashSet) elements : null;
        if (persistentHashSetE == null) {
            PersistentHashSetBuilder persistentHashSetBuilder = elements instanceof PersistentHashSetBuilder ? (PersistentHashSetBuilder) elements : null;
            persistentHashSetE = persistentHashSetBuilder != null ? persistentHashSetBuilder.e() : null;
        }
        if (persistentHashSetE == null) {
            return super.retainAll(elements);
        }
        DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
        int size = size();
        Object objG = this.node.G(persistentHashSetE.c(), 0, deltaCounter, this);
        int iA = deltaCounter.a();
        if (iA == 0) {
            clear();
        } else if (iA != size) {
            if (objG == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNode<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetBuilder>");
            }
            this.node = (TrieNode) objG;
            m(iA);
        }
        return size != size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        int iHashCode;
        int size = size();
        TrieNode<E> trieNode = this.node;
        if (e != null) {
            iHashCode = e.hashCode();
        } else {
            iHashCode = 0;
        }
        this.node = trieNode.t(iHashCode, e, 0, this);
        if (size == size()) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iHashCode;
        int size = size();
        TrieNode<E> trieNode = this.node;
        if (obj != null) {
            iHashCode = obj.hashCode();
        } else {
            iHashCode = 0;
        }
        this.node = trieNode.D(iHashCode, obj, 0, this);
        if (size == size()) {
            return false;
        }
        return true;
    }
}
