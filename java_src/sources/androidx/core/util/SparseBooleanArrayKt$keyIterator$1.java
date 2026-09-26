package androidx.core.util;

import android.util.SparseBooleanArray;
import kotlin.collections.m0;

/* JADX INFO: loaded from: classes6.dex */
public final class SparseBooleanArrayKt$keyIterator$1 extends m0 {
    final /* synthetic */ SparseBooleanArray $this_keyIterator;
    private int index;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.size();
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        SparseBooleanArray sparseBooleanArray = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseBooleanArray.keyAt(i10);
    }
}
