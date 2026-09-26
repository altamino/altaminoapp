package androidx.media3.exoplayer.trackselection;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.work.WorkRequest;
import com.google.common.collect.a0;
import com.google.common.collect.h0;
import com.google.common.collect.m0;
import com.google.common.collect.n0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.7f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MAX_HEIGHT_TO_DISCARD = 719;
    public static final int DEFAULT_MAX_WIDTH_TO_DISCARD = 1279;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    private static final long MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 1000;
    private static final String TAG = "AdaptiveTrackSelection";
    private final a0<AdaptationCheckpoint> adaptationCheckpoints;
    private final float bandwidthFraction;
    private final BandwidthMeter bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final Clock clock;

    @Nullable
    private MediaChunk lastBufferEvaluationMediaChunk;
    private long lastBufferEvaluationMs;
    private long latestBitrateEstimate;
    private final long maxDurationForQualityDecreaseUs;
    private final int maxHeightToDiscard;
    private final int maxWidthToDiscard;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    public static class Factory implements ExoTrackSelection.Factory {
        private final float bandwidthFraction;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final Clock clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int maxHeightToDiscard;
        private final int maxWidthToDiscard;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }

        public Factory(int i10, int i11, int i12, float f) {
            this(i10, i11, i12, 1279, 719, f, 0.75f, Clock.DEFAULT);
        }

        protected AdaptiveTrackSelection b(TrackGroup trackGroup, int[] iArr, int i10, BandwidthMeter bandwidthMeter, a0<AdaptationCheckpoint> a0Var) {
            return new AdaptiveTrackSelection(trackGroup, iArr, i10, bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.maxWidthToDiscard, this.maxHeightToDiscard, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, a0Var, this.clock);
        }

        public Factory(int i10, int i11, int i12, int i13, int i14, float f) {
            this(i10, i11, i12, i13, i14, f, 0.75f, Clock.DEFAULT);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
        public final ExoTrackSelection[] a(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            ExoTrackSelection exoTrackSelectionB;
            a0 a0VarP = AdaptiveTrackSelection.p(definitionArr);
            ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
            for (int i10 = 0; i10 < definitionArr.length; i10++) {
                ExoTrackSelection.Definition definition = definitionArr[i10];
                if (definition != null) {
                    int[] iArr = definition.tracks;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            exoTrackSelectionB = new FixedTrackSelection(definition.group, iArr[0], definition.type);
                        } else {
                            exoTrackSelectionB = b(definition.group, iArr, definition.type, bandwidthMeter, (a0) a0VarP.get(i10));
                        }
                        exoTrackSelectionArr[i10] = exoTrackSelectionB;
                    }
                }
            }
            return exoTrackSelectionArr;
        }

        public Factory(int i10, int i11, int i12, float f, float f6, Clock clock) {
            this(i10, i11, i12, 1279, 719, f, f6, clock);
        }

        public Factory(int i10, int i11, int i12, int i13, int i14, float f, float f6, Clock clock) {
            this.minDurationForQualityIncreaseMs = i10;
            this.maxDurationForQualityDecreaseMs = i11;
            this.minDurationToRetainAfterDiscardMs = i12;
            this.maxWidthToDiscard = i13;
            this.maxHeightToDiscard = i14;
            this.bandwidthFraction = f;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f6;
            this.clock = clock;
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, 0, bandwidthMeter, WorkRequest.MIN_BACKOFF_MILLIS, 25000L, 25000L, 1279, 719, 0.7f, 0.75f, a0.x(), Clock.DEFAULT);
    }

    private static long[][] u(ExoTrackSelection.Definition[] definitionArr) {
        long[][] jArr = new long[definitionArr.length][];
        for (int i10 = 0; i10 < definitionArr.length; i10++) {
            ExoTrackSelection.Definition definition = definitionArr[i10];
            if (definition == null) {
                jArr[i10] = new long[0];
            } else {
                jArr[i10] = new long[definition.tracks.length];
                int i11 = 0;
                while (true) {
                    int[] iArr = definition.tracks;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    long j6 = definition.group.c(iArr[i11]).bitrate;
                    long[] jArr2 = jArr[i10];
                    if (j6 == -1) {
                        j6 = 0;
                    }
                    jArr2[i11] = j6;
                    i11++;
                }
                Arrays.sort(jArr[i10]);
            }
        }
        return jArr;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public long d() {
        return this.latestBitrateEstimate;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    @CallSuper
    public void disable() {
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    @CallSuper
    public void enable() {
        this.lastBufferEvaluationMs = -9223372036854775807L;
        this.lastBufferEvaluationMediaChunk = null;
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
        return this.reason;
    }

    protected boolean n(Format format, int i10, long j6) {
        return ((long) i10) <= j6;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
        this.playbackSpeed = f;
    }

    protected long s() {
        return this.minDurationToRetainAfterDiscardUs;
    }

    public static final class AdaptationCheckpoint {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdaptationCheckpoint)) {
                return false;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) obj;
            return this.totalBandwidth == adaptationCheckpoint.totalBandwidth && this.allocatedBandwidth == adaptationCheckpoint.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }

        public AdaptationCheckpoint(long j6, long j10) {
            this.totalBandwidth = j6;
            this.allocatedBandwidth = j10;
        }
    }

    private static void m(List<a0.a<AdaptationCheckpoint>> list, long[] jArr) {
        long j6 = 0;
        for (long j10 : jArr) {
            j6 += j10;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            a0.a<AdaptationCheckpoint> aVar = list.get(i10);
            if (aVar != null) {
                aVar.d(new AdaptationCheckpoint(j6, jArr[i10]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a0<a0<AdaptationCheckpoint>> p(ExoTrackSelection.Definition[] definitionArr) {
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection.Definition definition : definitionArr) {
            if (definition == null || definition.tracks.length <= 1) {
                arrayList.add(null);
            } else {
                a0.a aVarR = a0.r();
                aVarR.d(new AdaptationCheckpoint(0L, 0L));
                arrayList.add(aVarR);
            }
        }
        long[][] jArrU = u(definitionArr);
        int[] iArr = new int[jArrU.length];
        long[] jArr = new long[jArrU.length];
        for (int i10 = 0; i10 < jArrU.length; i10++) {
            long[] jArr2 = jArrU[i10];
            jArr[i10] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        m(arrayList, jArr);
        a0<Integer> a0VarV = v(jArrU);
        for (int i11 = 0; i11 < a0VarV.size(); i11++) {
            int iIntValue = a0VarV.get(i11).intValue();
            int i12 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i12;
            jArr[iIntValue] = jArrU[iIntValue][i12];
            m(arrayList, jArr);
        }
        for (int i13 = 0; i13 < definitionArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        m(arrayList, jArr);
        a0.a aVarR2 = a0.r();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            a0.a aVar = (a0.a) arrayList.get(i14);
            aVarR2.d(aVar == null ? a0.x() : aVar.k());
        }
        return aVarR2.k();
    }

    private long t(MediaChunkIterator[] mediaChunkIteratorArr, List<? extends MediaChunk> list) {
        int i10 = this.selectedIndex;
        if (i10 < mediaChunkIteratorArr.length && mediaChunkIteratorArr[i10].next()) {
            MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[this.selectedIndex];
            return mediaChunkIterator.a() - mediaChunkIterator.b();
        }
        for (MediaChunkIterator mediaChunkIterator2 : mediaChunkIteratorArr) {
            if (mediaChunkIterator2.next()) {
                return mediaChunkIterator2.a() - mediaChunkIterator2.b();
            }
        }
        return r(list);
    }

    private long w(long j6) {
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        this.latestBitrateEstimate = bitrateEstimate;
        long j10 = (long) (bitrateEstimate * this.bandwidthFraction);
        long jB = this.bandwidthMeter.b();
        if (jB == -9223372036854775807L || j6 == -9223372036854775807L) {
            return (long) (j10 / this.playbackSpeed);
        }
        float f = j6;
        return (long) ((j10 * Math.max((f / this.playbackSpeed) - jB, 0.0f)) / f);
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j6, List<? extends MediaChunk> list) {
        int i10;
        int i11;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        if (!y(jElapsedRealtime, list)) {
            return list.size();
        }
        this.lastBufferEvaluationMs = jElapsedRealtime;
        this.lastBufferEvaluationMediaChunk = list.isEmpty() ? null : (MediaChunk) h0.e(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long jI0 = Util.i0(list.get(size - 1).startTimeUs - j6, this.playbackSpeed);
        long jS = s();
        if (jI0 < jS) {
            return size;
        }
        Format format = getFormat(o(jElapsedRealtime, r(list)));
        for (int i12 = 0; i12 < size; i12++) {
            MediaChunk mediaChunk = list.get(i12);
            Format format2 = mediaChunk.trackFormat;
            if (Util.i0(mediaChunk.startTimeUs - j6, this.playbackSpeed) >= jS && format2.bitrate < format.bitrate && (i10 = format2.height) != -1 && i10 <= this.maxHeightToDiscard && (i11 = format2.width) != -1 && i11 <= this.maxWidthToDiscard && i10 < format.height) {
                return i12;
            }
        }
        return size;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void i(long j6, long j10, long j11, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long jT = t(mediaChunkIteratorArr, list);
        int i10 = this.reason;
        if (i10 == 0) {
            this.reason = 1;
            this.selectedIndex = o(jElapsedRealtime, jT);
            return;
        }
        int i11 = this.selectedIndex;
        int iH = list.isEmpty() ? -1 : h(((MediaChunk) h0.e(list)).trackFormat);
        if (iH != -1) {
            i10 = ((MediaChunk) h0.e(list)).trackSelectionReason;
            i11 = iH;
        }
        int iO = o(jElapsedRealtime, jT);
        if (iO != i11 && !e(i11, jElapsedRealtime)) {
            Format format = getFormat(i11);
            Format format2 = getFormat(iO);
            long jX = x(j11, jT);
            int i12 = format2.bitrate;
            int i13 = format.bitrate;
            if ((i12 > i13 && j10 < jX) || (i12 < i13 && j10 >= this.maxDurationForQualityDecreaseUs)) {
                iO = i11;
            }
        }
        if (iO != i11) {
            i10 = 3;
        }
        this.reason = i10;
        this.selectedIndex = iO;
    }

    protected boolean y(long j6, List<? extends MediaChunk> list) {
        long j10 = this.lastBufferEvaluationMs;
        return j10 == -9223372036854775807L || j6 - j10 >= 1000 || !(list.isEmpty() || ((MediaChunk) h0.e(list)).equals(this.lastBufferEvaluationMediaChunk));
    }

    protected AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i10, BandwidthMeter bandwidthMeter, long j6, long j10, long j11, int i11, int i12, float f, float f6, List<AdaptationCheckpoint> list, Clock clock) {
        long j12;
        super(trackGroup, iArr, i10);
        if (j11 < j6) {
            Log.i(TAG, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j12 = j6;
        } else {
            j12 = j11;
        }
        this.bandwidthMeter = bandwidthMeter;
        this.minDurationForQualityIncreaseUs = j6 * 1000;
        this.maxDurationForQualityDecreaseUs = j10 * 1000;
        this.minDurationToRetainAfterDiscardUs = j12 * 1000;
        this.maxWidthToDiscard = i11;
        this.maxHeightToDiscard = i12;
        this.bandwidthFraction = f;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f6;
        this.adaptationCheckpoints = a0.t(list);
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = -9223372036854775807L;
        this.latestBitrateEstimate = Long.MIN_VALUE;
    }

    private int o(long j6, long j10) {
        long jQ = q(j10);
        int i10 = 0;
        for (int i11 = 0; i11 < this.length; i11++) {
            if (j6 == Long.MIN_VALUE || !e(i11, j6)) {
                Format format = getFormat(i11);
                if (n(format, format.bitrate, jQ)) {
                    return i11;
                }
                i10 = i11;
            }
        }
        return i10;
    }

    private long q(long j6) {
        long jW = w(j6);
        if (this.adaptationCheckpoints.isEmpty()) {
            return jW;
        }
        int i10 = 1;
        while (i10 < this.adaptationCheckpoints.size() - 1 && this.adaptationCheckpoints.get(i10).totalBandwidth < jW) {
            i10++;
        }
        AdaptationCheckpoint adaptationCheckpoint = this.adaptationCheckpoints.get(i10 - 1);
        AdaptationCheckpoint adaptationCheckpoint2 = this.adaptationCheckpoints.get(i10);
        long j10 = adaptationCheckpoint.totalBandwidth;
        float f = (jW - j10) / (adaptationCheckpoint2.totalBandwidth - j10);
        long j11 = adaptationCheckpoint.allocatedBandwidth;
        return j11 + ((long) (f * (adaptationCheckpoint2.allocatedBandwidth - j11)));
    }

    private long r(List<? extends MediaChunk> list) {
        if (list.isEmpty()) {
            return -9223372036854775807L;
        }
        MediaChunk mediaChunk = (MediaChunk) h0.e(list);
        long j6 = mediaChunk.startTimeUs;
        if (j6 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j10 = mediaChunk.endTimeUs;
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j10 - j6;
    }

    private static a0<Integer> v(long[][] jArr) {
        double d;
        m0 m0VarE = n0.c().a().e();
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long[] jArr2 = jArr[i10];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i11 = 0;
                while (true) {
                    long[] jArr3 = jArr[i10];
                    int length2 = jArr3.length;
                    double dLog = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
                    if (i11 >= length2) {
                        break;
                    }
                    long j6 = jArr3[i11];
                    if (j6 != -1) {
                        dLog = Math.log(j6);
                    }
                    dArr[i11] = dLog;
                    i11++;
                }
                int i12 = length - 1;
                double d2 = dArr[i12] - dArr[0];
                int i13 = 0;
                while (i13 < i12) {
                    double d6 = dArr[i13];
                    i13++;
                    double d7 = (d6 + dArr[i13]) * 0.5d;
                    if (d2 == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                        d = 1.0d;
                    } else {
                        d = (d7 - dArr[0]) / d2;
                    }
                    m0VarE.put(Double.valueOf(d), Integer.valueOf(i10));
                }
            }
        }
        return a0.t(m0VarE.values());
    }

    private long x(long j6, long j10) {
        if (j6 == -9223372036854775807L) {
            return this.minDurationForQualityIncreaseUs;
        }
        if (j10 != -9223372036854775807L) {
            j6 -= j10;
        }
        return Math.min((long) (j6 * this.bufferedFractionToLiveEdgeForQualityIncrease), this.minDurationForQualityIncreaseUs);
    }
}
