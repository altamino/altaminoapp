package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    @Nullable
    private MediaPeriod.Callback callback;

    @Nullable
    private ClippingMediaSource.IllegalClippingException clippingError;
    long endUs;
    public final MediaPeriod mediaPeriod;
    private long pendingInitialDiscontinuityPositionUs;
    private ClippingSampleStream[] sampleStreams = new ClippingSampleStream[0];
    long startUs;

    private final class ClippingSampleStream implements SampleStream {
        public final SampleStream childStream;
        private boolean sentEos;

        public void a() {
            this.sentEos = false;
        }

        public ClippingSampleStream(SampleStream sampleStream) {
            this.childStream = sampleStream;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (ClippingMediaPeriod.this.h()) {
                return -3;
            }
            if (this.sentEos) {
                decoderInputBuffer.l(4);
                return -4;
            }
            long bufferedPositionUs = ClippingMediaPeriod.this.getBufferedPositionUs();
            int iB = this.childStream.b(formatHolder, decoderInputBuffer, i10);
            if (iB == -5) {
                Format format = (Format) Assertions.e(formatHolder.format);
                int i11 = format.encoderDelay;
                if (i11 != 0 || format.encoderPadding != 0) {
                    ClippingMediaPeriod clippingMediaPeriod = ClippingMediaPeriod.this;
                    if (clippingMediaPeriod.startUs != 0) {
                        i11 = 0;
                    }
                    formatHolder.format = format.b().P(i11).Q(clippingMediaPeriod.endUs == Long.MIN_VALUE ? format.encoderPadding : 0).G();
                }
                return -5;
            }
            long j6 = ClippingMediaPeriod.this.endUs;
            if (j6 == Long.MIN_VALUE || ((iB != -4 || decoderInputBuffer.timeUs < j6) && !(iB == -3 && bufferedPositionUs == Long.MIN_VALUE && !decoderInputBuffer.waitingForKeys))) {
                return iB;
            }
            decoderInputBuffer.b();
            decoderInputBuffer.l(4);
            this.sentEos = true;
            return -4;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return !ClippingMediaPeriod.this.h() && this.childStream.isReady();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.childStream.maybeThrowError();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            if (ClippingMediaPeriod.this.h()) {
                return -3;
            }
            return this.childStream.skipData(j6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        long j10;
        boolean z6;
        this.sampleStreams = new ClippingSampleStream[sampleStreamArr.length];
        SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
        int i10 = 0;
        while (true) {
            SampleStream sampleStream = null;
            if (i10 >= sampleStreamArr.length) {
                break;
            }
            ClippingSampleStream[] clippingSampleStreamArr = this.sampleStreams;
            ClippingSampleStream clippingSampleStream = (ClippingSampleStream) sampleStreamArr[i10];
            clippingSampleStreamArr[i10] = clippingSampleStream;
            if (clippingSampleStream != null) {
                sampleStream = clippingSampleStream.childStream;
            }
            sampleStreamArr2[i10] = sampleStream;
            i10++;
        }
        long jC = this.mediaPeriod.c(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j6);
        if (h()) {
            long j11 = this.startUs;
            if (j6 == j11 && k(j11, exoTrackSelectionArr)) {
                j10 = jC;
            } else {
                j10 = -9223372036854775807L;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        this.pendingInitialDiscontinuityPositionUs = j10;
        if (jC != j6) {
            if (jC >= this.startUs) {
                long j12 = this.endUs;
                z6 = j12 == Long.MIN_VALUE || jC <= j12;
            }
        }
        Assertions.g(z6);
        for (int i11 = 0; i11 < sampleStreamArr.length; i11++) {
            SampleStream sampleStream2 = sampleStreamArr2[i11];
            if (sampleStream2 == null) {
                this.sampleStreams[i11] = null;
            } else {
                ClippingSampleStream[] clippingSampleStreamArr2 = this.sampleStreams;
                ClippingSampleStream clippingSampleStream2 = clippingSampleStreamArr2[i11];
                if (clippingSampleStream2 == null || clippingSampleStream2.childStream != sampleStream2) {
                    clippingSampleStreamArr2[i11] = new ClippingSampleStream(sampleStream2);
                }
            }
            sampleStreamArr[i11] = this.sampleStreams[i11];
        }
        return jC;
    }

    boolean h() {
        return this.pendingInitialDiscontinuityPositionUs != -9223372036854775807L;
    }

    public void j(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.clippingError = illegalClippingException;
    }

    public void l(long j6, long j10) {
        this.startUs = j6;
        this.endUs = j10;
    }

    private SeekParameters b(long j6, SeekParameters seekParameters) {
        long jR = Util.r(seekParameters.toleranceBeforeUs, 0L, j6 - this.startUs);
        long j10 = seekParameters.toleranceAfterUs;
        long j11 = this.endUs;
        long jR2 = Util.r(j10, 0L, j11 == Long.MIN_VALUE ? Long.MAX_VALUE : j11 - j6);
        return (jR == seekParameters.toleranceBeforeUs && jR2 == seekParameters.toleranceAfterUs) ? seekParameters : new SeekParameters(jR, jR2);
    }

    private static boolean k(long j6, ExoTrackSelection[] exoTrackSelectionArr) {
        if (j6 != 0) {
            for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
                if (exoTrackSelection != null) {
                    Format selectedFormat = exoTrackSelection.getSelectedFormat();
                    if (!MimeTypes.a(selectedFormat.sampleMimeType, selectedFormat.codecs)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        long j10 = this.startUs;
        if (j6 == j10) {
            return j10;
        }
        return this.mediaPeriod.a(j6, b(j6, seekParameters));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        return this.mediaPeriod.continueLoading(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void d(MediaPeriod mediaPeriod) {
        if (this.clippingError != null) {
            return;
        }
        ((MediaPeriod.Callback) Assertions.e(this.callback)).d(this);
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
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j6 = this.endUs;
            if (j6 == Long.MIN_VALUE || bufferedPositionUs < j6) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j6 = this.endUs;
            if (j6 == Long.MIN_VALUE || nextLoadPositionUs < j6) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void f(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.mediaPeriod.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.mediaPeriod.maybeThrowPrepareError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        this.mediaPeriod.reevaluateBuffer(j6);
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z6, long j6, long j10) {
        long j11;
        this.mediaPeriod = mediaPeriod;
        if (z6) {
            j11 = j6;
        } else {
            j11 = -9223372036854775807L;
        }
        this.pendingInitialDiscontinuityPositionUs = j11;
        this.startUs = j6;
        this.endUs = j10;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        boolean z6;
        if (h()) {
            long j6 = this.pendingInitialDiscontinuityPositionUs;
            this.pendingInitialDiscontinuityPositionUs = -9223372036854775807L;
            long discontinuity = readDiscontinuity();
            if (discontinuity != -9223372036854775807L) {
                return discontinuity;
            }
            return j6;
        }
        long discontinuity2 = this.mediaPeriod.readDiscontinuity();
        if (discontinuity2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z10 = false;
        if (discontinuity2 >= this.startUs) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        long j10 = this.endUs;
        if (j10 == Long.MIN_VALUE || discontinuity2 <= j10) {
            z10 = true;
        }
        Assertions.g(z10);
        return discontinuity2;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        this.pendingInitialDiscontinuityPositionUs = -9223372036854775807L;
        boolean z6 = false;
        for (ClippingSampleStream clippingSampleStream : this.sampleStreams) {
            if (clippingSampleStream != null) {
                clippingSampleStream.a();
            }
        }
        long jSeekToUs = this.mediaPeriod.seekToUs(j6);
        if (jSeekToUs != j6) {
            if (jSeekToUs >= this.startUs) {
                long j10 = this.endUs;
                if (j10 == Long.MIN_VALUE || jSeekToUs <= j10) {
                    z6 = true;
                }
            }
        } else {
            z6 = true;
        }
        Assertions.g(z6);
        return jSeekToUs;
    }
}
