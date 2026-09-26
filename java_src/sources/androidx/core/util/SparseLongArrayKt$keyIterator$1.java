package androidx.core.util;

import android.util.SparseLongArray;
import kotlin.collections.m0;

/* JADX INFO: loaded from: classes9.dex */
public final class SparseLongArrayKt$keyIterator$1 extends m0 {
    final /* synthetic */ SparseLongArray $this_keyIterator;
    private int index;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.size();
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        SparseLongArray sparseLongArray = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseLongArray.keyAt(i10);
    }
}
