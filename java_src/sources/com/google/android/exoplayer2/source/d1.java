package com.google.android.exoplayer2.source;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes7.dex */
final class d1<V> {
    private int memoizedReadIndex;
    private final com.google.android.exoplayer2.util.h<V> removeCallback;
    private final SparseArray<V> spans;

    public d1() {
        this(new com.google.android.exoplayer2.util.h() { // from class: com.google.android.exoplayer2.source.c1
            @Override // com.google.android.exoplayer2.util.h
            public final void accept(Object obj) {
                d1.i(obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Object obj) {
    }

    public void c() {
        for (int i10 = 0; i10 < this.spans.size(); i10++) {
            this.removeCallback.accept(this.spans.valueAt(i10));
        }
        this.memoizedReadIndex = -1;
        this.spans.clear();
    }

    public void e(int i10) {
        int i11 = 0;
        while (i11 < this.spans.size() - 1) {
            int i12 = i11 + 1;
            if (i10 < this.spans.keyAt(i12)) {
                return;
            }
            this.removeCallback.accept(this.spans.valueAt(i11));
            this.spans.removeAt(i11);
            int i13 = this.memoizedReadIndex;
            if (i13 > 0) {
                this.memoizedReadIndex = i13 - 1;
            }
            i11 = i12;
        }
    }

    public d1(com.google.android.exoplayer2.util.h<V> hVar) {
        this.spans = new SparseArray<>();
        this.removeCallback = hVar;
        this.memoizedReadIndex = -1;
    }

    public void b(int i10, V v5) {
        if (this.memoizedReadIndex == -1) {
            com.google.android.exoplayer2.util.a.g(this.spans.size() == 0);
            this.memoizedReadIndex = 0;
        }
        if (this.spans.size() > 0) {
            SparseArray<V> sparseArray = this.spans;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            com.google.android.exoplayer2.util.a.a(i10 >= iKeyAt);
            if (iKeyAt == i10) {
                com.google.android.exoplayer2.util.h<V> hVar = this.removeCallback;
                SparseArray<V> sparseArray2 = this.spans;
                hVar.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.spans.append(i10, v5);
    }

    public void d(int i10) {
        for (int size = this.spans.size() - 1; size >= 0 && i10 < this.spans.keyAt(size); size--) {
            this.removeCallback.accept(this.spans.valueAt(size));
            this.spans.removeAt(size);
        }
        this.memoizedReadIndex = this.spans.size() > 0 ? Math.min(this.memoizedReadIndex, this.spans.size() - 1) : -1;
    }

    public V f(int i10) {
        if (this.memoizedReadIndex == -1) {
            this.memoizedReadIndex = 0;
        }
        while (true) {
            int i11 = this.memoizedReadIndex;
            if (i11 <= 0 || i10 >= this.spans.keyAt(i11)) {
                break;
            }
            this.memoizedReadIndex--;
        }
        while (this.memoizedReadIndex < this.spans.size() - 1 && i10 >= this.spans.keyAt(this.memoizedReadIndex + 1)) {
            this.memoizedReadIndex++;
        }
        return this.spans.valueAt(this.memoizedReadIndex);
    }

    public V g() {
        SparseArray<V> sparseArray = this.spans;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean h() {
        return this.spans.size() == 0;
    }
}
