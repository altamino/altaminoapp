package androidx.compose.runtime;

import java.util.Iterator;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SlotWriter$groupSlots$1 implements Iterator<Object>, f8.a {
    final /* synthetic */ int $end;
    private int current;
    final /* synthetic */ SlotWriter this$0;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.current < this.$end;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    SlotWriter$groupSlots$1(int i10, int i11, SlotWriter slotWriter) {
        this.$end = i11;
        this.this$0 = slotWriter;
        this.current = i10;
    }

    @Override // java.util.Iterator
    @Nullable
    public Object next() {
        if (hasNext()) {
            Object[] objArr = this.this$0.slots;
            SlotWriter slotWriter = this.this$0;
            int i10 = this.current;
            this.current = i10 + 1;
            return objArr[slotWriter.L(i10)];
        }
        return null;
    }
}
