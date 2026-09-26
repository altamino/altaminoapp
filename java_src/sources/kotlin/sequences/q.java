package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class q<T> implements g<T>, c<T> {
    private final int count;

    @NotNull
    private final g<T> sequence;

    public static final class a implements Iterator<T>, f8.a {

        @NotNull
        private final Iterator<T> iterator;
        private int left;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.left > 0 && this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            int i10 = this.left;
            if (i10 == 0) {
                throw new NoSuchElementException();
            }
            this.left = i10 - 1;
            return this.iterator.next();
        }

        a(q<T> qVar) {
            this.left = ((q) qVar).count;
            this.iterator = ((q) qVar).sequence.iterator();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public q(@NotNull g<? extends T> sequence, int i10) {
        t.j(sequence, "sequence");
        this.sequence = sequence;
        this.count = i10;
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i10 + '.').toString());
    }

    @Override // kotlin.sequences.c
    @NotNull
    public g<T> a(int i10) {
        int i11 = this.count;
        return i10 >= i11 ? m.e() : new p(this.sequence, i10, i11);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public g<T> b(int i10) {
        return i10 >= this.count ? this : new q(this.sequence, i10);
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
