package androidx.core.util;

import android.util.SparseBooleanArray;
import kotlin.collections.r;

/* JADX INFO: loaded from: classes8.dex */
public final class SparseBooleanArrayKt$valueIterator$1 extends r {
    final /* synthetic */ SparseBooleanArray $this_valueIterator;
    private int index;

    @Override // kotlin.collections.r
    public boolean a() {
        SparseBooleanArray sparseBooleanArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseBooleanArray.valueAt(i10);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }
}
