package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import f8.a;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class PersistentOrderedMapBuilderLinksIterator<K, V> implements Iterator<LinkedValue<V>>, a {

    @NotNull
    private final PersistentOrderedMapBuilder<K, V> builder;
    private int expectedModCount;
    private int index;

    @Nullable
    private Object lastIteratedKey;

    @Nullable
    private Object nextKey;
    private boolean nextWasInvoked;

    @NotNull
    public final PersistentOrderedMapBuilder<K, V> e() {
        return this.builder;
    }

    @Nullable
    public final Object f() {
        return this.lastIteratedKey;
    }

    public PersistentOrderedMapBuilderLinksIterator(@Nullable Object obj, @NotNull PersistentOrderedMapBuilder<K, V> builder) {
        t.j(builder, "builder");
        this.nextKey = obj;
        this.builder = builder;
        this.lastIteratedKey = EndOfChain.INSTANCE;
        this.expectedModCount = builder.j().j();
    }

    private final void a() {
        if (this.builder.j().j() != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final void c() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.builder.size();
    }

    private final void b() {
        if (hasNext()) {
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public LinkedValue<V> next() {
        a();
        b();
        this.lastIteratedKey = this.nextKey;
        this.nextWasInvoked = true;
        this.index++;
        LinkedValue<V> linkedValue = this.builder.j().get(this.nextKey);
        if (linkedValue != null) {
            LinkedValue<V> linkedValue2 = linkedValue;
            this.nextKey = linkedValue2.c();
            return linkedValue2;
        }
        throw new ConcurrentModificationException("Hash code of a key (" + this.nextKey + ") has changed after it was added to the persistent map.");
    }

    @Override // java.util.Iterator
    public void remove() {
        c();
        v0.d(this.builder).remove(this.lastIteratedKey);
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.j().j();
        this.index--;
    }
}
