package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public class CompositeSequenceableLoader implements SequenceableLoader {
    protected final SequenceableLoader[] loaders;

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        boolean zContinueLoading;
        boolean z6 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zContinueLoading = false;
            for (SequenceableLoader sequenceableLoader : this.loaders) {
                long nextLoadPositionUs2 = sequenceableLoader.getNextLoadPositionUs();
                boolean z10 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j6;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z10) {
                    zContinueLoading |= sequenceableLoader.continueLoading(j6);
                }
            }
            z6 |= zContinueLoading;
        } while (zContinueLoading);
        return z6;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            long bufferedPositionUs = sequenceableLoader.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            long nextLoadPositionUs = sequenceableLoader.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            if (sequenceableLoader.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void reevaluateBuffer(long j6) {
        for (SequenceableLoader sequenceableLoader : this.loaders) {
            sequenceableLoader.reevaluateBuffer(j6);
        }
    }

    public CompositeSequenceableLoader(SequenceableLoader[] sequenceableLoaderArr) {
        this.loaders = sequenceableLoaderArr;
    }
}
