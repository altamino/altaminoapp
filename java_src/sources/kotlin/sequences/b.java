package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class b<T> implements g<T>, c<T> {
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

        private final void a() {
            while (this.left > 0 && this.iterator.hasNext()) {
                this.iterator.next();
                this.left--;
            }
        }

        a(b<T> bVar) {
            this.iterator = ((b) bVar).sequence.iterator();
            this.left = ((b) bVar).count;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            return this.iterator.next();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull g<? extends T> sequence, int i10) {
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
        int i11 = this.count + i10;
        return i11 < 0 ? new b(this, i10) : new b(this.sequence, i11);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public g<T> b(int i10) {
        int i11 = this.count;
        int i12 = i11 + i10;
        return i12 < 0 ? new q(this, i10) : new p(this.sequence, i11, i12);
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
