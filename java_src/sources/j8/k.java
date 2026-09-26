package j8;

import java.util.NoSuchElementException;
import kotlin.collections.n0;

/* JADX INFO: loaded from: classes7.dex */
public final class k extends n0 {
    private final long finalElement;
    private boolean hasNext;
    private long next;
    private final long step;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.n0
    public long a() {
        long j6 = this.next;
        if (j6 != this.finalElement) {
            this.next = this.step + j6;
        } else {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            this.hasNext = false;
        }
        return j6;
    }

    public k(long j6, long j10, long j11) {
        this.step = j11;
        this.finalElement = j10;
        boolean z6 = true;
        if (j11 <= 0 ? j6 < j10 : j6 > j10) {
            z6 = false;
        }
        this.hasNext = z6;
        this.next = z6 ? j6 : j10;
    }
}
