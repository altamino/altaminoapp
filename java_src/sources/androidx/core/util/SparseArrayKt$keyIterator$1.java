package androidx.core.util;

import android.util.SparseArray;
import kotlin.collections.m0;

/* JADX INFO: loaded from: classes8.dex */
public final class SparseArrayKt$keyIterator$1 extends m0 {
    final /* synthetic */ SparseArray<Object> $this_keyIterator;
    private int index;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.size();
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        SparseArray<Object> sparseArray = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseArray.keyAt(i10);
    }
}
