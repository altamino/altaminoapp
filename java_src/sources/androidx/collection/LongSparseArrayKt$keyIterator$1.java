package androidx.collection;

import kotlin.collections.n0;

/* JADX INFO: loaded from: classes10.dex */
public final class LongSparseArrayKt$keyIterator$1 extends n0 {
    final /* synthetic */ LongSparseArray $this_keyIterator;
    private int index;

    @Override // kotlin.collections.n0
    public long a() {
        LongSparseArray longSparseArray = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return longSparseArray.l(i10);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.p();
    }
}
