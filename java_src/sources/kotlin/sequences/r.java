package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class r<T> implements g<T> {

    @NotNull
    private final e8.l<T, Boolean> predicate;

    @NotNull
    private final g<T> sequence;

    public static final class a implements Iterator<T>, f8.a {

        @NotNull
        private final Iterator<T> iterator;

        @Nullable
        private T nextItem;
        private int nextState = -1;
        final /* synthetic */ r<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(r<T> rVar) {
            this.this$0 = rVar;
            this.iterator = ((r) rVar).sequence.iterator();
        }

        private final void a() {
            if (this.iterator.hasNext()) {
                T next = this.iterator.next();
                if (((Boolean) ((r) this.this$0).predicate.invoke(next)).booleanValue()) {
                    this.nextState = 1;
                    this.nextItem = next;
                    return;
                }
            }
            this.nextState = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState == -1) {
                a();
            }
            return this.nextState == 1;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.nextState == -1) {
                a();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            T t5 = this.nextItem;
            this.nextItem = null;
            this.nextState = -1;
            return t5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r(@NotNull g<? extends T> sequence, @NotNull e8.l<? super T, Boolean> predicate) {
        t.j(sequence, "sequence");
        t.j(predicate, "predicate");
        this.sequence = sequence;
        this.predicate = predicate;
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
