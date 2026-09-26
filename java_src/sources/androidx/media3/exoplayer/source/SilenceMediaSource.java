package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class SilenceMediaSource extends BaseMediaSource {
    private static final int CHANNEL_COUNT = 2;
    private static final Format FORMAT;
    public static final String MEDIA_ID = "SilenceMediaSource";
    private static final MediaItem MEDIA_ITEM;
    private static final int PCM_ENCODING = 2;
    private static final int SAMPLE_RATE_HZ = 44100;
    private static final byte[] SILENCE_SAMPLE;
    private final long durationUs;
    private final MediaItem mediaItem;

    public static final class Factory {
        private long durationUs;

        @Nullable
        private Object tag;
    }

    private static final class SilenceMediaPeriod implements MediaPeriod {
        private static final TrackGroupArray TRACKS = new TrackGroupArray(new TrackGroup(SilenceMediaSource.FORMAT));
        private final long durationUs;
        private final ArrayList<SampleStream> sampleStreams = new ArrayList<>();

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j6) {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j6, boolean z6) {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return TRACKS;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return -9223372036854775807L;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j6) {
        }

        private long b(long j6) {
            return Util.r(j6, 0L, this.durationUs);
        }

        public SilenceMediaPeriod(long j6) {
            this.durationUs = j6;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long a(long j6, SeekParameters seekParameters) {
            return b(j6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
            long jB = b(j6);
            for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
                SampleStream sampleStream = sampleStreamArr[i10];
                if (sampleStream != null && (exoTrackSelectionArr[i10] == null || !zArr[i10])) {
                    this.sampleStreams.remove(sampleStream);
                    sampleStreamArr[i10] = null;
                }
                if (sampleStreamArr[i10] == null && exoTrackSelectionArr[i10] != null) {
                    SilenceSampleStream silenceSampleStream = new SilenceSampleStream(this.durationUs);
                    silenceSampleStream.a(jB);
                    this.sampleStreams.add(silenceSampleStream);
                    sampleStreamArr[i10] = silenceSampleStream;
                    zArr2[i10] = true;
                }
            }
            return jB;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void e(MediaPeriod.Callback callback, long j6) {
            callback.d(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j6) {
            long jB = b(j6);
            for (int i10 = 0; i10 < this.sampleStreams.size(); i10++) {
                ((SilenceSampleStream) this.sampleStreams.get(i10)).a(jB);
            }
            return jB;
        }
    }

    private static final class SilenceSampleStream implements SampleStream {
        private final long durationBytes;
        private long positionBytes;
        private boolean sentFormat;

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return true;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (!this.sentFormat || (i10 & 2) != 0) {
                formatHolder.format = SilenceMediaSource.FORMAT;
                this.sentFormat = true;
                return -5;
            }
            long j6 = this.durationBytes;
            long j10 = this.positionBytes;
            long j11 = j6 - j10;
            if (j11 == 0) {
                decoderInputBuffer.a(4);
                return -4;
            }
            decoderInputBuffer.timeUs = SilenceMediaSource.p0(j10);
            decoderInputBuffer.a(1);
            int iMin = (int) Math.min(SilenceMediaSource.SILENCE_SAMPLE.length, j11);
            if ((i10 & 4) == 0) {
                decoderInputBuffer.o(iMin);
                decoderInputBuffer.data.put(SilenceMediaSource.SILENCE_SAMPLE, 0, iMin);
            }
            if ((i10 & 1) == 0) {
                this.positionBytes += (long) iMin;
            }
            return -4;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            long j10 = this.positionBytes;
            a(j6);
            return (int) ((this.positionBytes - j10) / ((long) SilenceMediaSource.SILENCE_SAMPLE.length));
        }

        public SilenceSampleStream(long j6) {
            this.durationBytes = SilenceMediaSource.o0(j6);
            a(0L);
        }

        public void a(long j6) {
            this.positionBytes = Util.r(SilenceMediaSource.o0(j6), 0L, this.durationBytes);
        }
    }

    public SilenceMediaSource(long j6) {
        this(j6, MEDIA_ITEM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long p0(long j6) {
        return ((j6 / ((long) Util.h0(2, 2))) * 1000000) / 44100;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void A(MediaPeriod mediaPeriod) {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem j() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void j0() {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    static {
        Format formatG = new Format.Builder().g0("audio/raw").J(2).h0(44100).a0(2).G();
        FORMAT = formatG;
        MEDIA_ITEM = new MediaItem.Builder().e(MEDIA_ID).j(Uri.EMPTY).f(formatG.sampleMimeType).a();
        SILENCE_SAMPLE = new byte[Util.h0(2, 2) * 1024];
    }

    private SilenceMediaSource(long j6, MediaItem mediaItem) {
        Assertions.a(j6 >= 0);
        this.durationUs = j6;
        this.mediaItem = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod M(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j6) {
        return new SilenceMediaPeriod(this.durationUs);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void h0(@Nullable TransferListener transferListener) {
        i0(new SinglePeriodTimeline(this.durationUs, true, false, false, (Object) null, this.mediaItem));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long o0(long j6) {
        return ((long) Util.h0(2, 2)) * ((j6 * 44100) / 1000000);
    }
}
