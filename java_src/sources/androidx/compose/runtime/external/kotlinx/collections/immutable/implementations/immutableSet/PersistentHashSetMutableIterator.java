package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import java.util.ConcurrentModificationException;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class PersistentHashSetMutableIterator<E> extends PersistentHashSetIterator<E> {

    @NotNull
    private final PersistentHashSetBuilder<E> builder;
    private int expectedModCount;

    @Nullable
    private E lastIteratedElement;
    private boolean nextWasInvoked;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersistentHashSetMutableIterator(@NotNull PersistentHashSetBuilder<E> builder) {
        super(builder.g());
        t.j(builder, "builder");
        this.builder = builder;
        this.expectedModCount = builder.f();
    }

    private final void g() {
        if (this.builder.f() != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final void h() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
    }

    private final boolean j(TrieNode<?> trieNode) {
        if (trieNode.m() == 0) {
            return true;
        }
        return false;
    }

    private final void k(int i10, TrieNode<?> trieNode, E e, int i11) {
        boolean z6 = true;
        if (j(trieNode)) {
            int iX = p.X(trieNode.n(), e);
            if (iX == -1) {
                z6 = false;
            }
            CommonFunctionsKt.a(z6);
            c().get(i11).h(trieNode.n(), iX);
            f(i11);
            return;
        }
        int iP = trieNode.p(1 << TrieNodeKt.d(i10, i11 * 5));
        c().get(i11).h(trieNode.n(), iP);
        Object obj = trieNode.n()[iP];
        if (obj instanceof TrieNode) {
            k(i10, (TrieNode) obj, e, i11 + 1);
        } else {
            f(i11);
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetIterator, java.util.Iterator
    public E next() {
        g();
        E e = (E) super.next();
        this.lastIteratedElement = e;
        this.nextWasInvoked = true;
        return e;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.PersistentHashSetIterator, java.util.Iterator
    public void remove() {
        int iHashCode;
        h();
        if (hasNext()) {
            E eA = a();
            v0.a(this.builder).remove(this.lastIteratedElement);
            if (eA != null) {
                iHashCode = eA.hashCode();
            } else {
                iHashCode = 0;
            }
            k(iHashCode, this.builder.g(), eA, 0);
        } else {
            v0.a(this.builder).remove(this.lastIteratedElement);
        }
        this.lastIteratedElement = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.f();
    }
}
