package androidx.core.util;

import android.util.SparseLongArray;
import kotlin.collections.n0;

/* JADX INFO: loaded from: classes8.dex */
public final class SparseLongArrayKt$valueIterator$1 extends n0 {
    final /* synthetic */ SparseLongArray $this_valueIterator;
    private int index;

    @Override // kotlin.collections.n0
    public long a() {
        SparseLongArray sparseLongArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseLongArray.valueAt(i10);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }
}
