package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.util.UnstableApi;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface MediaChunkIterator {
    public static final MediaChunkIterator EMPTY = new MediaChunkIterator() { // from class: androidx.media3.exoplayer.source.chunk.MediaChunkIterator.1
        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public boolean next() {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long a() {
            throw new NoSuchElementException();
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long b() {
            throw new NoSuchElementException();
        }
    };

    long a();

    long b();

    boolean next();
}
