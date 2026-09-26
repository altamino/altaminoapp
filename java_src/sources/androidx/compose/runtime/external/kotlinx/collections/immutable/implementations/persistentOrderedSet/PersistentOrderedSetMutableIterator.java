package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentOrderedSetMutableIterator<E> extends PersistentOrderedSetIterator<E> {

    @NotNull
    private final PersistentOrderedSetBuilder<E> builder;
    private int expectedModCount;

    @Nullable
    private E lastIteratedElement;
    private boolean nextWasInvoked;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentOrderedSetMutableIterator(@NotNull PersistentOrderedSetBuilder<E> builder) {
        super(builder.e(), builder.f());
        t.j(builder, "builder");
        this.builder = builder;
        this.expectedModCount = builder.f().j();
    }

    private final void e() {
        if (this.builder.f().j() != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final void f() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public E next() {
        e();
        E e = (E) super.next();
        this.lastIteratedElement = e;
        this.nextWasInvoked = true;
        return e;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSetIterator, java.util.Iterator
    public void remove() {
        f();
        v0.a(this.builder).remove(this.lastIteratedElement);
        this.lastIteratedElement = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.f().j();
        c(b() - 1);
    }
}
