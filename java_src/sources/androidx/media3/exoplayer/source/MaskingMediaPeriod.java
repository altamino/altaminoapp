package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class MaskingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private final Allocator allocator;

    @Nullable
    private MediaPeriod.Callback callback;
    public final MediaSource.MediaPeriodId id;

    @Nullable
    private PrepareListener listener;
    private MediaPeriod mediaPeriod;
    private MediaSource mediaSource;
    private boolean notifiedPrepareError;
    private long preparePositionOverrideUs = -9223372036854775807L;
    private final long preparePositionUs;

    public interface PrepareListener {
        void a(MediaSource.MediaPeriodId mediaPeriodId);

        void b(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException);
    }

    private long j(long j6) {
        long j10 = this.preparePositionOverrideUs;
        return j10 != -9223372036854775807L ? j10 : j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        long j10;
        long j11 = this.preparePositionOverrideUs;
        if (j11 == -9223372036854775807L || j6 != this.preparePositionUs) {
            j10 = j6;
        } else {
            this.preparePositionOverrideUs = -9223372036854775807L;
            j10 = j11;
        }
        return ((MediaPeriod) Util.j(this.mediaPeriod)).c(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j10);
    }

    public long h() {
        return this.preparePositionOverrideUs;
    }

    public long i() {
        return this.preparePositionUs;
    }

    public void l(long j6) {
        this.preparePositionOverrideUs = j6;
    }

    public void o(PrepareListener prepareListener) {
        this.listener = prepareListener;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        return ((MediaPeriod) Util.j(this.mediaPeriod)).a(j6, seekParameters);
    }

    public void b(MediaSource.MediaPeriodId mediaPeriodId) {
        long j6 = j(this.preparePositionUs);
        MediaPeriod mediaPeriodM = ((MediaSource) Assertions.e(this.mediaSource)).M(mediaPeriodId, this.allocator, j6);
        this.mediaPeriod = mediaPeriodM;
        if (this.callback != null) {
            mediaPeriodM.e(this, j6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        return mediaPeriod != null && mediaPeriod.continueLoading(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void d(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Util.j(this.callback)).d(this);
        PrepareListener prepareListener = this.listener;
        if (prepareListener != null) {
            prepareListener.a(this.id);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
        ((MediaPeriod) Util.j(this.mediaPeriod)).discardBuffer(j6, z6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        this.callback = callback;
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod != null) {
            mediaPeriod.e(this, j(this.preparePositionUs));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return ((MediaPeriod) Util.j(this.mediaPeriod)).getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return ((MediaPeriod) Util.j(this.mediaPeriod)).getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return ((MediaPeriod) Util.j(this.mediaPeriod)).getTrackGroups();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        return mediaPeriod != null && mediaPeriod.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void f(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Util.j(this.callback)).f(this);
    }

    public void m() {
        if (this.mediaPeriod != null) {
            ((MediaSource) Assertions.e(this.mediaSource)).A(this.mediaPeriod);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        try {
            MediaPeriod mediaPeriod = this.mediaPeriod;
            if (mediaPeriod != null) {
                mediaPeriod.maybeThrowPrepareError();
            } else {
                MediaSource mediaSource = this.mediaSource;
                if (mediaSource != null) {
                    mediaSource.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e) {
            PrepareListener prepareListener = this.listener;
            if (prepareListener == null) {
                throw e;
            }
            if (this.notifiedPrepareError) {
                return;
            }
            this.notifiedPrepareError = true;
            prepareListener.b(this.id, e);
        }
    }

    public void n(MediaSource mediaSource) {
        Assertions.g(this.mediaSource == null);
        this.mediaSource = mediaSource;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        return ((MediaPeriod) Util.j(this.mediaPeriod)).readDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        ((MediaPeriod) Util.j(this.mediaPeriod)).reevaluateBuffer(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        return ((MediaPeriod) Util.j(this.mediaPeriod)).seekToUs(j6);
    }

    public MaskingMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        this.id = mediaPeriodId;
        this.allocator = allocator;
        this.preparePositionUs = j6;
    }
}
