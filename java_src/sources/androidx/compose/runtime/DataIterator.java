package androidx.compose.runtime;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class DataIterator implements Iterable<Object>, Iterator<Object>, f8.a {
    private final int end;
    private final int group;
    private int index;
    private final int start;

    @NotNull
    private final SlotTable table;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.end;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Object> iterator() {
        return this;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public DataIterator(@NotNull SlotTable table, int i10) {
        t.j(table, "table");
        this.table = table;
        this.group = i10;
        int iE = SlotTableKt.E(table.f(), i10);
        this.start = iE;
        this.end = i10 + 1 < table.g() ? SlotTableKt.E(table.f(), i10 + 1) : table.m();
        this.index = iE;
    }

    @Override // java.util.Iterator
    @Nullable
    public Object next() {
        int i10 = this.index;
        Object obj = (i10 < 0 || i10 >= this.table.j().length) ? null : this.table.j()[this.index];
        this.index++;
        return obj;
    }
}
