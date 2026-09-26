package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class s<T, R> implements g<R> {

    @NotNull
    private final g<T> sequence;

    @NotNull
    private final e8.l<T, R> transformer;

    public static final class a implements Iterator<R>, f8.a {

        @NotNull
        private final Iterator<T> iterator;
        final /* synthetic */ s<T, R> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(s<T, R> sVar) {
            this.this$0 = sVar;
            this.iterator = ((s) sVar).sequence.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) ((s) this.this$0).transformer.invoke(this.iterator.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(@NotNull g<? extends T> sequence, @NotNull e8.l<? super T, ? extends R> transformer) {
        t.j(sequence, "sequence");
        t.j(transformer, "transformer");
        this.sequence = sequence;
        this.transformer = transformer;
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<R> iterator() {
        return new a(this);
    }
}
