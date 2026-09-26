package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class StateListIterator<T> implements ListIterator<T>, f8.a {
    private int index;

    @NotNull
    private final SnapshotStateList<T> list;
    private int modification;

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.index >= 0;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.index + 1;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.index;
    }

    public StateListIterator(@NotNull SnapshotStateList<T> list, int i10) {
        t.j(list, "list");
        this.list = list;
        this.index = i10 - 1;
        this.modification = list.c();
    }

    private final void a() {
        if (this.list.c() != this.modification) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.index < this.list.size() - 1;
    }

    @Override // java.util.ListIterator
    public void add(T t5) {
        a();
        this.list.add(this.index + 1, t5);
        this.index++;
        this.modification = this.list.c();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public T next() {
        a();
        int i10 = this.index + 1;
        SnapshotStateListKt.e(i10, this.list.size());
        T t5 = this.list.get(i10);
        this.index = i10;
        return t5;
    }

    @Override // java.util.ListIterator
    public T previous() {
        a();
        SnapshotStateListKt.e(this.index, this.list.size());
        T t5 = this.list.get(this.index);
        this.index--;
        return t5;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        a();
        this.list.remove(this.index);
        this.index--;
        this.modification = this.list.c();
    }

    @Override // java.util.ListIterator
    public void set(T t5) {
        a();
        this.list.set(this.index, t5);
        this.modification = this.list.c();
    }
}
