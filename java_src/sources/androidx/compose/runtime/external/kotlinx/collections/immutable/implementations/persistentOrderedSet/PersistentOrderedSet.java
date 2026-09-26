package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Iterator;
import kotlin.collections.i;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class PersistentOrderedSet<E> extends i<E> implements PersistentSet<E> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final PersistentOrderedSet EMPTY;

    @Nullable
    private final Object firstElement;

    @NotNull
    private final PersistentHashMap<E, Links> hashMap;

    @Nullable
    private final Object lastElement;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final <E> PersistentSet<E> a() {
            return PersistentOrderedSet.EMPTY;
        }
    }

    @Nullable
    public final Object e() {
        return this.firstElement;
    }

    @NotNull
    public final PersistentHashMap<E, Links> f() {
        return this.hashMap;
    }

    @Nullable
    public final Object g() {
        return this.lastElement;
    }

    static {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedSet(endOfChain, endOfChain, PersistentHashMap.Companion.a());
    }

    public PersistentOrderedSet(@Nullable Object obj, @Nullable Object obj2, @NotNull PersistentHashMap<E, Links> hashMap) {
        t.j(hashMap, "hashMap");
        this.firstElement = obj;
        this.lastElement = obj2;
        this.hashMap = hashMap;
    }

    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    @NotNull
    public PersistentSet<E> add(E e) {
        if (this.hashMap.containsKey(e)) {
            return this;
        }
        if (isEmpty()) {
            return new PersistentOrderedSet(e, e, this.hashMap.u(e, new Links()));
        }
        Object obj = this.lastElement;
        Links links = this.hashMap.get(obj);
        t.g(links);
        return new PersistentOrderedSet(this.firstElement, e, this.hashMap.u((E) obj, links.e(e)).u(e, new Links(obj)));
    }

    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Override // kotlin.collections.a
    public int getSize() {
        return this.hashMap.size();
    }

    @Override // kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new PersistentOrderedSetIterator(this.firstElement, this.hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.Set, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet
    @NotNull
    public PersistentSet<E> remove(E e) {
        Links links = this.hashMap.get(e);
        if (links == null) {
            return this;
        }
        PersistentHashMap persistentHashMapV = this.hashMap.v(e);
        if (links.b()) {
            V v5 = persistentHashMapV.get(links.d());
            t.g(v5);
            persistentHashMapV = persistentHashMapV.u(links.d(), ((Links) v5).e(links.c()));
        }
        if (links.a()) {
            V v6 = persistentHashMapV.get(links.c());
            t.g(v6);
            persistentHashMapV = persistentHashMapV.u(links.c(), ((Links) v6).f(links.d()));
        }
        return new PersistentOrderedSet(!links.b() ? links.c() : this.firstElement, !links.a() ? links.d() : this.lastElement, persistentHashMapV);
    }
}
