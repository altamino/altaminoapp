package io.ktor.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class n<From, To> implements Set<To>, f8.f {

    @NotNull
    private final e8.l<To, From> convert;

    @NotNull
    private final e8.l<From, To> convertTo;

    @NotNull
    private final Set<From> delegate;
    private final int size;

    public static final class a implements Iterator<To>, f8.a {

        @NotNull
        private final Iterator<From> delegateIterator;
        final /* synthetic */ n<From, To> this$0;

        a(n<From, To> nVar) {
            this.this$0 = nVar;
            this.delegateIterator = ((n) nVar).delegate.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.delegateIterator.hasNext();
        }

        @Override // java.util.Iterator
        public To next() {
            return (To) ((n) this.this$0).convertTo.invoke(this.delegateIterator.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.delegateIterator.remove();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof Set)) {
            return false;
        }
        Collection<To> collectionE = e(this.delegate);
        return ((Set) obj).containsAll(collectionE) && collectionE.containsAll((Collection) obj);
    }

    public int f() {
        return this.size;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return kotlin.jvm.internal.j.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(@NotNull Set<From> delegate, @NotNull e8.l<? super From, ? extends To> convertTo, @NotNull e8.l<? super To, ? extends From> convert) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(convertTo, "convertTo");
        kotlin.jvm.internal.t.j(convert, "convert");
        this.delegate = delegate;
        this.convertTo = convertTo;
        this.convert = convert;
        this.size = delegate.size();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(To to) {
        return this.delegate.add(this.convert.invoke(to));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends To> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return this.delegate.addAll(c(elements));
    }

    @NotNull
    public Collection<From> c(@NotNull Collection<? extends To> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        Collection<? extends To> collection2 = collection;
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(collection2, 10));
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.convert.invoke((To) it.next()));
        }
        return arrayList;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.delegate.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.delegate.contains(this.convert.invoke(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return this.delegate.containsAll(c(elements));
    }

    @NotNull
    public Collection<To> e(@NotNull Collection<? extends From> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        Collection<? extends From> collection2 = collection;
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(collection2, 10));
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.convertTo.invoke((From) it.next()));
        }
        return arrayList;
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.delegate.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<To> iterator() {
        return new a(this);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return this.delegate.remove(this.convert.invoke(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return this.delegate.removeAll(c(elements));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return this.delegate.retainAll(c(elements));
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.t.j(array, "array");
        return (T[]) kotlin.jvm.internal.j.b(this, array);
    }

    @NotNull
    public String toString() {
        return e(this.delegate).toString();
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return f();
    }
}
