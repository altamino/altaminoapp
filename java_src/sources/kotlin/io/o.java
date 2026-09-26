package kotlin.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class o implements kotlin.sequences.g<String> {

    @NotNull
    private final BufferedReader reader;

    public static final class a implements Iterator<String>, f8.a {
        private boolean done;

        @Nullable
        private String nextValue;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() throws IOException {
            if (this.nextValue == null && !this.done) {
                String line = o.this.reader.readLine();
                this.nextValue = line;
                if (line == null) {
                    this.done = true;
                }
            }
            return this.nextValue != null;
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String next() {
            if (hasNext()) {
                String str = this.nextValue;
                this.nextValue = null;
                t.g(str);
                return str;
            }
            throw new NoSuchElementException();
        }
    }

    public o(@NotNull BufferedReader reader) {
        t.j(reader, "reader");
        this.reader = reader;
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<String> iterator() {
        return new a();
    }
}
