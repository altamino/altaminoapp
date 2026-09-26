package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
class v0<T> extends c<T> {

    @NotNull
    private final List<T> delegate;

    public static final class a implements ListIterator<T>, f8.a {

        @NotNull
        private final ListIterator<T> delegateIterator;
        final /* synthetic */ v0<T> this$0;

        @Override // java.util.ListIterator
        public void add(T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        /* JADX WARN: Multi-variable type inference failed */
        a(v0<? extends T> v0Var, int i10) {
            this.this$0 = v0Var;
            this.delegateIterator = ((v0) v0Var).delegate.listIterator(b0.W(v0Var, i10));
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.delegateIterator.hasPrevious();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.delegateIterator.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            return this.delegateIterator.previous();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return b0.V(this.this$0, this.delegateIterator.previousIndex());
        }

        @Override // java.util.ListIterator
        public T previous() {
            return this.delegateIterator.next();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return b0.V(this.this$0, this.delegateIterator.nextIndex());
        }
    }

    @Override // kotlin.collections.c, kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<T> iterator() {
        return listIterator(0);
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v0(@NotNull List<? extends T> delegate) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // kotlin.collections.c, java.util.List
    public T get(int i10) {
        return this.delegate.get(b0.U(this, i10));
    }

    @Override // kotlin.collections.c, kotlin.collections.a
    public int getSize() {
        return this.delegate.size();
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new a(this, i10);
    }
}
