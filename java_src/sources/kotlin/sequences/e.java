package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class e<T> implements g<T> {

    @NotNull
    private final e8.l<T, Boolean> predicate;
    private final boolean sendWhen;

    @NotNull
    private final g<T> sequence;

    public static final class a implements Iterator<T>, f8.a {

        @NotNull
        private final Iterator<T> iterator;

        @Nullable
        private T nextItem;
        private int nextState = -1;
        final /* synthetic */ e<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(e<T> eVar) {
            this.this$0 = eVar;
            this.iterator = ((e) eVar).sequence.iterator();
        }

        private final void a() {
            while (this.iterator.hasNext()) {
                T next = this.iterator.next();
                if (((Boolean) ((e) this.this$0).predicate.invoke(next)).booleanValue() == ((e) this.this$0).sendWhen) {
                    this.nextItem = next;
                    this.nextState = 1;
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
    public e(@NotNull g<? extends T> sequence, boolean z6, @NotNull e8.l<? super T, Boolean> predicate) {
        t.j(sequence, "sequence");
        t.j(predicate, "predicate");
        this.sequence = sequence;
        this.sendWhen = z6;
        this.predicate = predicate;
    }

    public /* synthetic */ e(g gVar, boolean z6, e8.l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this(gVar, (i10 & 2) != 0 ? true : z6, lVar);
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
