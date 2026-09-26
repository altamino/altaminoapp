package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.a;
import e8.l;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public abstract class AbstractPersistentList<E> extends c<E> implements PersistentList<E> {

    /* JADX INFO: renamed from: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList$removeAll$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<E, Boolean> {
        final /* synthetic */ Collection<E> $elements;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Collection<? extends E> collection) {
            super(1);
            this.$elements = collection;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(E e) {
            return Boolean.valueOf(this.$elements.contains(e));
        }
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> addAll(@NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        PersistentList.Builder<E> builder = builder();
        builder.addAll(elements);
        return builder.build();
    }

    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> removeAll(@NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        return i(new AnonymousClass1(elements));
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ImmutableList<E> subList(int i10, int i11) {
        return a.a(this, i10, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.c, kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> remove(E e) {
        int iIndexOf = indexOf(e);
        if (iIndexOf != -1) {
            return n(iIndexOf);
        }
        return this;
    }
}
