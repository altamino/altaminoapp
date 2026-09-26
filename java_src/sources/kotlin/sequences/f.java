package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class f<T> implements g<T> {

    @NotNull
    private final e8.a<T> getInitialValue;

    @NotNull
    private final e8.l<T, T> getNextValue;

    public static final class a implements Iterator<T>, f8.a {

        @Nullable
        private T nextItem;
        private int nextState = -2;
        final /* synthetic */ f<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(f<T> fVar) {
            this.this$0 = fVar;
        }

        private final void a() {
            T t5;
            if (this.nextState == -2) {
                t5 = (T) ((f) this.this$0).getInitialValue.invoke();
            } else {
                e8.l lVar = ((f) this.this$0).getNextValue;
                T t10 = this.nextItem;
                t.g(t10);
                t5 = (T) lVar.invoke(t10);
            }
            this.nextItem = t5;
            this.nextState = t5 == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState < 0) {
                a();
            }
            return this.nextState == 1;
        }

        @Override // java.util.Iterator
        @NotNull
        public T next() {
            if (this.nextState < 0) {
                a();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            T t5 = this.nextItem;
            t.h(t5, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.nextState = -1;
            return t5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull e8.a<? extends T> getInitialValue, @NotNull e8.l<? super T, ? extends T> getNextValue) {
        t.j(getInitialValue, "getInitialValue");
        t.j(getNextValue, "getNextValue");
        this.getInitialValue = getInitialValue;
        this.getNextValue = getNextValue;
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }
}
