package androidx.collection;

import kotlin.collections.m0;

/* JADX INFO: loaded from: classes2.dex */
public final class SparseArrayKt$keyIterator$1 extends m0 {
    final /* synthetic */ SparseArrayCompat $this_keyIterator;
    private int index;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.r();
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        SparseArrayCompat sparseArrayCompat = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseArrayCompat.n(i10);
    }
}
