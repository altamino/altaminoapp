package androidx.core.graphics;

import android.graphics.Rect;
import android.graphics.RegionIterator;
import f8.a;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class RegionKt$iterator$1 implements Iterator<Rect>, a {
    private boolean hasMore;

    @NotNull
    private final RegionIterator iterator;

    @NotNull
    private final Rect rect;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasMore;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Rect next() {
        if (!this.hasMore) {
            throw new IndexOutOfBoundsException();
        }
        Rect rect = new Rect(this.rect);
        this.hasMore = this.iterator.next(this.rect);
        return rect;
    }
}
