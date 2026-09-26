package androidx.core.util;

import android.util.SparseIntArray;
import kotlin.collections.m0;

/* JADX INFO: loaded from: classes9.dex */
public final class SparseIntArrayKt$keyIterator$1 extends m0 {
    final /* synthetic */ SparseIntArray $this_keyIterator;
    private int index;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.size();
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        SparseIntArray sparseIntArray = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseIntArray.keyAt(i10);
    }
}
