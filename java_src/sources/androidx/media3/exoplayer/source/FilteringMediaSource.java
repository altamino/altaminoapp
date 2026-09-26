package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.d0;
import java.io.IOException;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public class FilteringMediaSource extends WrappingMediaSource {
    private final d0<Integer> trackTypes;

    private static final class FilteringMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

        @Nullable
        private MediaPeriod.Callback callback;

        @Nullable
        private TrackGroupArray filteredTrackGroups;
        public final MediaPeriod mediaPeriod;
        private final d0<Integer> trackTypes;

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long a(long j6, SeekParameters seekParameters) {
            return this.mediaPeriod.a(j6, seekParameters);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void f(MediaPeriod mediaPeriod) {
            ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
            return this.mediaPeriod.c(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j6) {
            return this.mediaPeriod.continueLoading(j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j6, boolean z6) {
            this.mediaPeriod.discardBuffer(j6, z6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void e(MediaPeriod.Callback callback, long j6) {
            this.callback = callback;
            this.mediaPeriod.e(this, j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.mediaPeriod.getBufferedPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.mediaPeriod.getNextLoadPositionUs();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return (TrackGroupArray) Assertions.e(this.filteredTrackGroups);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return this.mediaPeriod.isLoading();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            this.mediaPeriod.maybeThrowPrepareError();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return this.mediaPeriod.readDiscontinuity();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j6) {
            this.mediaPeriod.reevaluateBuffer(j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j6) {
            return this.mediaPeriod.seekToUs(j6);
        }

        public FilteringMediaPeriod(MediaPeriod mediaPeriod, d0<Integer> d0Var) {
            this.mediaPeriod = mediaPeriod;
            this.trackTypes = d0Var;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void d(MediaPeriod mediaPeriod) {
            TrackGroupArray trackGroups = mediaPeriod.getTrackGroups();
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (int i10 = 0; i10 < trackGroups.length; i10++) {
                TrackGroup trackGroupB = trackGroups.b(i10);
                if (this.trackTypes.contains(Integer.valueOf(trackGroupB.type))) {
                    aVarR.d(trackGroupB);
                }
            }
            this.filteredTrackGroups = new TrackGroupArray((TrackGroup[]) aVarR.k().toArray(new TrackGroup[0]));
            ((MediaPeriod.Callback) Assertions.e(this.callback)).d(this);
        }
    }

    public FilteringMediaSource(MediaSource mediaSource, int i10) {
        this(mediaSource, d0.y(Integer.valueOf(i10)));
    }

    public FilteringMediaSource(MediaSource mediaSource, Set<Integer> set) {
        super(mediaSource);
        this.trackTypes = d0.t(set);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
        super.A(((FilteringMediaPeriod) mediaPeriod).mediaPeriod);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        return new FilteringMediaPeriod(super.M(mediaPeriodId, allocator, j6), this.trackTypes);
    }
}
