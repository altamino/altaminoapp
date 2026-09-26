package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.LongSparseArray;
import kotlin.collections.n0;

/* JADX INFO: loaded from: classes11.dex */
public final class LongSparseArrayKt$keyIterator$1 extends n0 {
    final /* synthetic */ LongSparseArray<Object> $this_keyIterator;
    private int index;

    @Override // kotlin.collections.n0
    @SuppressLint({"ClassVerificationFailure"})
    public long a() {
        LongSparseArray<Object> longSparseArray = this.$this_keyIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return longSparseArray.keyAt(i10);
    }

    @Override // java.util.Iterator
    @SuppressLint({"ClassVerificationFailure"})
    public boolean hasNext() {
        return this.index < this.$this_keyIterator.size();
    }
}
