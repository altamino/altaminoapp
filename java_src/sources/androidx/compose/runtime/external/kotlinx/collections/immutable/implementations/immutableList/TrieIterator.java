package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class TrieIterator<E> extends AbstractListIterator<E> {
    private int height;
    private boolean isInRightEdge;

    @NotNull
    private Object[] path;

    private final void k(int i10) {
        int i11 = 0;
        while (UtilsKt.a(c(), i11) == i10) {
            i11 += 5;
        }
        if (i11 > 0) {
            j(c(), ((this.height - 1) - (i11 / 5)) + 1);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public TrieIterator(@NotNull Object[] root, int i10, int i11, int i12) {
        super(i10, i11);
        t.j(root, "root");
        this.height = i12;
        Object[] objArr = new Object[i12];
        this.path = objArr;
        ?? r5 = i10 == i11 ? 1 : 0;
        this.isInRightEdge = r5;
        objArr[0] = root;
        j(i10 - r5, 1);
    }

    private final void j(int i10, int i11) {
        int i12 = (this.height - i11) * 5;
        while (i11 < this.height) {
            Object[] objArr = this.path;
            Object obj = objArr[i11 - 1];
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
            objArr[i11] = ((Object[]) obj)[UtilsKt.a(i10, i12)];
            i12 -= 5;
            i11++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    public final void l(@NotNull Object[] root, int i10, int i11, int i12) {
        t.j(root, "root");
        f(i10);
        g(i11);
        this.height = i12;
        if (this.path.length < i12) {
            this.path = new Object[i12];
        }
        this.path[0] = root;
        ?? r1 = i10 == i11 ? 1 : 0;
        this.isInRightEdge = r1;
        j(i10 - r1, 1);
    }

    private final E h() {
        int iC = c() & 31;
        Object obj = this.path[this.height - 1];
        if (obj != null) {
            return (E) ((Object[]) obj)[iC];
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<E of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.TrieIterator>");
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public E next() {
        if (hasNext()) {
            E eH = h();
            f(c() + 1);
            if (c() == e()) {
                this.isInRightEdge = true;
                return eH;
            }
            k(0);
            return eH;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public E previous() {
        if (hasPrevious()) {
            f(c() - 1);
            if (this.isInRightEdge) {
                this.isInRightEdge = false;
                return h();
            }
            k(31);
            return h();
        }
        throw new NoSuchElementException();
    }
}
