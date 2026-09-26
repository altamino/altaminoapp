package j8;

import java.util.NoSuchElementException;
import kotlin.collections.s;
import kotlin.jvm.internal.t;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends s {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.s
    public char a() {
        int i10 = this.next;
        if (i10 != this.finalElement) {
            this.next = this.step + i10;
        } else {
            if (!this.hasNext) {
                throw new NoSuchElementException();
            }
            this.hasNext = false;
        }
        return (char) i10;
    }

    public b(char c7, char c10, int i10) {
        this.step = i10;
        this.finalElement = c10;
        boolean z6 = true;
        if (i10 <= 0 ? t.l(c7, c10) < 0 : t.l(c7, c10) > 0) {
            z6 = false;
        }
        this.hasNext = z6;
        this.next = z6 ? c7 : c10;
    }
}
