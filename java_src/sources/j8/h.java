package j8;

import java.util.NoSuchElementException;
import kotlin.collections.m0;

/* JADX INFO: loaded from: classes7.dex */
public final class h extends m0 {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.m0
    public int nextInt() {
        int i10 = this.next;
        if (i10 != this.finalElement) {
            this.next = this.step + i10;
        } else {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            this.hasNext = false;
        }
        return i10;
    }

    public h(int i10, int i11, int i12) {
        this.step = i12;
        this.finalElement = i11;
        boolean z6 = true;
        if (i12 <= 0 ? i10 < i11 : i10 > i11) {
            z6 = false;
        }
        this.hasNext = z6;
        this.next = z6 ? i10 : i11;
    }
}
