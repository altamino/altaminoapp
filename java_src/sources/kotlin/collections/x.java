package kotlin.collections;

import java.util.Enumeration;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class x extends w {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements Iterator<T>, f8.a {
        final /* synthetic */ Enumeration<T> $this_iterator;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a(Enumeration<T> enumeration) {
            this.$this_iterator = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.$this_iterator.hasMoreElements();
        }

        @Override // java.util.Iterator
        public T next() {
            return this.$this_iterator.nextElement();
        }
    }

    @NotNull
    public static <T> Iterator<T> A(@NotNull Enumeration<T> enumeration) {
        kotlin.jvm.internal.t.j(enumeration, "<this>");
        return new a(enumeration);
    }
}
