package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.util.UnstableApi;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public abstract class BaseMediaChunkIterator implements MediaChunkIterator {
    private long currentIndex;
    private final long fromIndex;
    private final long toIndex;

    protected final long d() {
        return this.currentIndex;
    }

    public boolean e() {
        return this.currentIndex > this.toIndex;
    }

    public void f() {
        this.currentIndex = this.fromIndex - 1;
    }

    protected final void c() {
        long j6 = this.currentIndex;
        if (j6 < this.fromIndex || j6 > this.toIndex) {
            throw new NoSuchElementException();
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
    public boolean next() {
        this.currentIndex++;
        return !e();
    }

    public BaseMediaChunkIterator(long j6, long j10) {
        this.fromIndex = j6;
        this.toIndex = j10;
        f();
    }
}
