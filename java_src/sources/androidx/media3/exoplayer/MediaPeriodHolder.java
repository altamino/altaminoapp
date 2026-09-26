package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.source.ClippingMediaPeriod;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;

/* JADX INFO: loaded from: classes8.dex */
final class MediaPeriodHolder {
    private static final String TAG = "MediaPeriodHolder";
    public boolean allRenderersInCorrectState;
    public boolean hasEnabledTracks;
    public MediaPeriodInfo info;
    private final boolean[] mayRetainStreamFlags;
    public final MediaPeriod mediaPeriod;
    private final MediaSourceList mediaSourceList;

    @Nullable
    private MediaPeriodHolder next;
    public boolean prepared;
    private final RendererCapabilities[] rendererCapabilities;
    private long rendererPositionOffsetUs;
    public final SampleStream[] sampleStreams;
    private TrackGroupArray trackGroups;
    private final TrackSelector trackSelector;
    private TrackSelectorResult trackSelectorResult;
    public final Object uid;

    private void c(SampleStream[] sampleStreamArr) {
        int i10 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i10 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i10].getTrackType() == -2 && this.trackSelectorResult.c(i10)) {
                sampleStreamArr[i10] = new EmptySampleStream();
            }
            i10++;
        }
    }

    private void g(SampleStream[] sampleStreamArr) {
        int i10 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i10 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i10].getTrackType() == -2) {
                sampleStreamArr[i10] = null;
            }
            i10++;
        }
    }

    private boolean r() {
        return this.next == null;
    }

    public long b(TrackSelectorResult trackSelectorResult, long j6, boolean z6, boolean[] zArr) {
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z6 || !trackSelectorResult.b(this.trackSelectorResult, i10)) {
                z10 = false;
            }
            zArr2[i10] = z10;
            i10++;
        }
        g(this.sampleStreams);
        f();
        this.trackSelectorResult = trackSelectorResult;
        h();
        long jC = this.mediaPeriod.c(trackSelectorResult.selections, this.mayRetainStreamFlags, this.sampleStreams, zArr, j6);
        c(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i11 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i11 >= sampleStreamArr.length) {
                return jC;
            }
            if (sampleStreamArr[i11] != null) {
                Assertions.g(trackSelectorResult.c(i11));
                if (this.rendererCapabilities[i11].getTrackType() != -2) {
                    this.hasEnabledTracks = true;
                }
            } else {
                Assertions.g(trackSelectorResult.selections[i11] == null);
            }
            i11++;
        }
    }

    @Nullable
    public MediaPeriodHolder j() {
        return this.next;
    }

    public long l() {
        return this.rendererPositionOffsetUs;
    }

    public TrackGroupArray n() {
        return this.trackGroups;
    }

    public TrackSelectorResult o() {
        return this.trackSelectorResult;
    }

    public void p(float f, Timeline timeline) throws ExoPlaybackException {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        TrackSelectorResult trackSelectorResultV = v(f, timeline);
        MediaPeriodInfo mediaPeriodInfo = this.info;
        long jMax = mediaPeriodInfo.startPositionUs;
        long j6 = mediaPeriodInfo.durationUs;
        if (j6 != -9223372036854775807L && jMax >= j6) {
            jMax = Math.max(0L, j6 - 1);
        }
        long jA = a(trackSelectorResultV, jMax, false);
        long j10 = this.rendererPositionOffsetUs;
        MediaPeriodInfo mediaPeriodInfo2 = this.info;
        this.rendererPositionOffsetUs = j10 + (mediaPeriodInfo2.startPositionUs - jA);
        this.info = mediaPeriodInfo2.b(jA);
    }

    public void x(long j6) {
        this.rendererPositionOffsetUs = j6;
    }

    private static void u(MediaSourceList mediaSourceList, MediaPeriod mediaPeriod) {
        try {
            if (mediaPeriod instanceof ClippingMediaPeriod) {
                mediaSourceList.A(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
            } else {
                mediaSourceList.A(mediaPeriod);
            }
        } catch (RuntimeException e) {
            Log.d(TAG, "Period release failed.", e);
        }
    }

    public void A() {
        MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod instanceof ClippingMediaPeriod) {
            long j6 = this.info.endPositionUs;
            if (j6 == -9223372036854775807L) {
                j6 = Long.MIN_VALUE;
            }
            ((ClippingMediaPeriod) mediaPeriod).l(0L, j6);
        }
    }

    public long a(TrackSelectorResult trackSelectorResult, long j6, boolean z6) {
        return b(trackSelectorResult, j6, z6, new boolean[this.rendererCapabilities.length]);
    }

    public long i() {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        long bufferedPositionUs = this.hasEnabledTracks ? this.mediaPeriod.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.info.durationUs : bufferedPositionUs;
    }

    public long k() {
        if (this.prepared) {
            return this.mediaPeriod.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long m() {
        return this.info.startPositionUs + this.rendererPositionOffsetUs;
    }

    public boolean q() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public TrackSelectorResult v(float f, Timeline timeline) throws ExoPlaybackException {
        TrackSelectorResult trackSelectorResultK = this.trackSelector.k(this.rendererCapabilities, n(), this.info.id, timeline);
        for (ExoTrackSelection exoTrackSelection : trackSelectorResultK.selections) {
            if (exoTrackSelection != null) {
                exoTrackSelection.onPlaybackSpeed(f);
            }
        }
        return trackSelectorResultK;
    }

    public void w(@Nullable MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == this.next) {
            return;
        }
        f();
        this.next = mediaPeriodHolder;
        h();
    }

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j6, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, MediaPeriodInfo mediaPeriodInfo, TrackSelectorResult trackSelectorResult) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.rendererPositionOffsetUs = j6;
        this.trackSelector = trackSelector;
        this.mediaSourceList = mediaSourceList;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        this.uid = mediaPeriodId.periodUid;
        this.info = mediaPeriodInfo;
        this.trackGroups = TrackGroupArray.EMPTY;
        this.trackSelectorResult = trackSelectorResult;
        this.sampleStreams = new SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        this.mediaPeriod = e(mediaPeriodId, mediaSourceList, allocator, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.endPositionUs);
    }

    private static MediaPeriod e(MediaSource.MediaPeriodId mediaPeriodId, MediaSourceList mediaSourceList, Allocator allocator, long j6, long j10) {
        MediaPeriod mediaPeriodH = mediaSourceList.h(mediaPeriodId, allocator, j6);
        if (j10 != -9223372036854775807L) {
            return new ClippingMediaPeriod(mediaPeriodH, true, 0L, j10);
        }
        return mediaPeriodH;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            if (i10 < trackSelectorResult.length) {
                boolean zC = trackSelectorResult.c(i10);
                ExoTrackSelection exoTrackSelection = this.trackSelectorResult.selections[i10];
                if (zC && exoTrackSelection != null) {
                    exoTrackSelection.disable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            if (i10 < trackSelectorResult.length) {
                boolean zC = trackSelectorResult.c(i10);
                ExoTrackSelection exoTrackSelection = this.trackSelectorResult.selections[i10];
                if (zC && exoTrackSelection != null) {
                    exoTrackSelection.enable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    public void d(long j6) {
        Assertions.g(r());
        this.mediaPeriod.continueLoading(y(j6));
    }

    public void s(long j6) {
        Assertions.g(r());
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(y(j6));
        }
    }

    public void t() {
        f();
        u(this.mediaSourceList, this.mediaPeriod);
    }

    public long y(long j6) {
        return j6 - l();
    }

    public long z(long j6) {
        return j6 + l();
    }
}
