package androidx.media3.exoplayer.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class RandomTrackSelection extends BaseTrackSelection {
    private final Random random;
    private int selectedIndex;

    public static final class Factory implements ExoTrackSelection.Factory {
        private final Random random;

        public Factory() {
            this.random = new Random();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ ExoTrackSelection c(ExoTrackSelection.Definition definition) {
            return new RandomTrackSelection(definition.group, definition.tracks, definition.type, this.random);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
        public ExoTrackSelection[] a(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            return TrackSelectionUtil.d(definitionArr, new TrackSelectionUtil.AdaptiveTrackSelectionFactory() { // from class: androidx.media3.exoplayer.trackselection.w
                @Override // androidx.media3.exoplayer.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
                public final ExoTrackSelection a(ExoTrackSelection.Definition definition) {
                    return this.f650a.c(definition);
                }
            });
        }

        public Factory(int i10) {
            this.random = new Random(i10);
        }
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    @Nullable
    public Object getSelectionData() {
        return null;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return 3;
    }

    public RandomTrackSelection(TrackGroup trackGroup, int[] iArr, int i10, Random random) {
        super(trackGroup, iArr, i10);
        this.random = random;
        this.selectedIndex = random.nextInt(this.length);
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void i(long j6, long j10, long j11, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i10 = 0;
        for (int i11 = 0; i11 < this.length; i11++) {
            if (!e(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        this.selectedIndex = this.random.nextInt(i10);
        if (i10 != this.length) {
            int i12 = 0;
            for (int i13 = 0; i13 < this.length; i13++) {
                if (!e(i13, jElapsedRealtime)) {
                    int i14 = i12 + 1;
                    if (this.selectedIndex == i12) {
                        this.selectedIndex = i13;
                        return;
                    }
                    i12 = i14;
                }
            }
        }
    }
}
