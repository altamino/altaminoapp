package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface MediaPeriod extends SequenceableLoader {

    public interface Callback extends SequenceableLoader.Callback<MediaPeriod> {
        void d(MediaPeriod mediaPeriod);
    }

    long a(long j6, SeekParameters seekParameters);

    long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6);

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    boolean continueLoading(long j6);

    void discardBuffer(long j6, boolean z6);

    void e(Callback callback, long j6);

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    long getBufferedPositionUs();

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    long getNextLoadPositionUs();

    TrackGroupArray getTrackGroups();

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    boolean isLoading();

    void maybeThrowPrepareError() throws IOException;

    long readDiscontinuity();

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    void reevaluateBuffer(long j6);

    long seekToUs(long j6);
}
