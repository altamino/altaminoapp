package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class p<T> implements g<T>, c<T> {
    private final int endIndex;

    @NotNull
    private final g<T> sequence;
    private final int startIndex;

    public static final class a implements Iterator<T>, f8.a {

        @NotNull
        private final Iterator<T> iterator;
        private int position;
        final /* synthetic */ p<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(p<T> pVar) {
            this.this$0 = pVar;
            this.iterator = ((p) pVar).sequence.iterator();
        }

        private final void a() {
            while (this.position < ((p) this.this$0).startIndex && this.iterator.hasNext()) {
                this.iterator.next();
                this.position++;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            if (this.position < ((p) this.this$0).endIndex && this.iterator.hasNext()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (this.position < ((p) this.this$0).endIndex) {
                this.position++;
                return this.iterator.next();
            }
            throw new NoSuchElementException();
        }
    }

    private final int f() {
        return this.endIndex - this.startIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(@NotNull g<? extends T> sequence, int i10, int i11) {
        t.j(sequence, "sequence");
        this.sequence = sequence;
        this.startIndex = i10;
        this.endIndex = i11;
        if (i10 < 0) {
            throw new IllegalArgumentException(("startIndex should be non-negative, but is " + i10).toString());
        }
        if (i11 < 0) {
            throw new IllegalArgumentException(("endIndex should be non-negative, but is " + i11).toString());
        }
        if (i11 >= i10) {
            return;
        }
        throw new IllegalArgumentException(("endIndex should be not less than startIndex, but was " + i11 + " < " + i10).toString());
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public g<T> a(int i10) {
        if (i10 >= f()) {
            return m.e();
        }
        return new p(this.sequence, this.startIndex + i10, this.endIndex);
    }

    @Override // kotlin.sequences.c
    @NotNull
    public g<T> b(int i10) {
        if (i10 >= f()) {
            return this;
        }
        g<T> gVar = this.sequence;
        int i11 = this.startIndex;
        return new p(gVar, i11, i10 + i11);
    }
}
