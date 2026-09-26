package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionGroup;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class GroupIterator implements Iterator<CompositionGroup>, f8.a {
    private final int end;
    private int index;

    @NotNull
    private final SlotTable table;
    private final int version;

    /* JADX INFO: renamed from: androidx.compose.runtime.GroupIterator$next$1, reason: invalid class name */
    public static final class AnonymousClass1 implements CompositionGroup, Iterable<CompositionGroup>, f8.a {
        final /* synthetic */ int $group;

        AnonymousClass1(int i10) {
            this.$group = i10;
        }

        @Override // java.lang.Iterable
        @NotNull
        public Iterator<CompositionGroup> iterator() {
            GroupIterator.this.e();
            SlotTable slotTableB = GroupIterator.this.b();
            int i10 = this.$group;
            return new GroupIterator(slotTableB, i10 + 1, i10 + SlotTableKt.G(GroupIterator.this.b().f(), this.$group));
        }
    }

    @NotNull
    public final SlotTable b() {
        return this.table;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.end;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public GroupIterator(@NotNull SlotTable table, int i10, int i11) {
        t.j(table, "table");
        this.table = table;
        this.end = i11;
        this.index = i10;
        this.version = table.p();
        if (table.q()) {
            throw new ConcurrentModificationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        if (this.table.p() != this.version) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public CompositionGroup next() {
        e();
        int i10 = this.index;
        this.index = SlotTableKt.G(this.table.f(), i10) + i10;
        return new AnonymousClass1(i10);
    }
}
