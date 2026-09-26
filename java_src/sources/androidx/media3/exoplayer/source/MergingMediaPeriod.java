package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    @Nullable
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final MediaPeriod[] periods;

    @Nullable
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final HashMap<TrackGroup, TrackGroup> childTrackGroupByMergedTrackGroup = new HashMap<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private MediaPeriod[] enabledPeriods = new MediaPeriod[0];

    private static final class ForwardingTrackSelection implements ExoTrackSelection {
        private final TrackGroup trackGroup;
        private final ExoTrackSelection trackSelection;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ForwardingTrackSelection)) {
                return false;
            }
            ForwardingTrackSelection forwardingTrackSelection = (ForwardingTrackSelection) obj;
            return this.trackSelection.equals(forwardingTrackSelection.trackSelection) && this.trackGroup.equals(forwardingTrackSelection.trackGroup);
        }

        @Override // androidx.media3.exoplayer.trackselection.TrackSelection
        public TrackGroup getTrackGroup() {
            return this.trackGroup;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void i(long j6, long j10, long j11, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            this.trackSelection.i(j6, j10, j11, list, mediaChunkIteratorArr);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void a() {
            this.trackSelection.a();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void b() {
            this.trackSelection.b();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void c(boolean z6) {
            this.trackSelection.c(z6);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public long d() {
            return this.trackSelection.d();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void disable() {
            this.trackSelection.disable();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public boolean e(int i10, long j6) {
            return this.trackSelection.e(i10, j6);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void enable() {
            this.trackSelection.enable();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int evaluateQueueSize(long j6, List<? extends MediaChunk> list) {
            return this.trackSelection.evaluateQueueSize(j6, list);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public boolean f(int i10, long j6) {
            return this.trackSelection.f(i10, j6);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public boolean g(long j6, Chunk chunk, List<? extends MediaChunk> list) {
            return this.trackSelection.g(j6, chunk, list);
        }

        @Override // androidx.media3.exoplayer.trackselection.TrackSelection
        public Format getFormat(int i10) {
            return this.trackSelection.getFormat(i10);
        }

        @Override // androidx.media3.exoplayer.trackselection.TrackSelection
        public int getIndexInTrackGroup(int i10) {
            return this.trackSelection.getIndexInTrackGroup(i10);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Format getSelectedFormat() {
            return this.trackSelection.getSelectedFormat();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return this.trackSelection.getSelectedIndex();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectedIndexInTrackGroup() {
            return this.trackSelection.getSelectedIndexInTrackGroup();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        @Nullable
        public Object getSelectionData() {
            return this.trackSelection.getSelectionData();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return this.trackSelection.getSelectionReason();
        }

        @Override // androidx.media3.exoplayer.trackselection.TrackSelection
        public int h(Format format) {
            return this.trackSelection.h(format);
        }

        public int hashCode() {
            return ((527 + this.trackGroup.hashCode()) * 31) + this.trackSelection.hashCode();
        }

        @Override // androidx.media3.exoplayer.trackselection.TrackSelection
        public int indexOf(int i10) {
            return this.trackSelection.indexOf(i10);
        }

        @Override // androidx.media3.exoplayer.trackselection.TrackSelection
        public int length() {
            return this.trackSelection.length();
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void onPlaybackSpeed(float f) {
            this.trackSelection.onPlaybackSpeed(f);
        }

        public ForwardingTrackSelection(ExoTrackSelection exoTrackSelection, TrackGroup trackGroup) {
            this.trackSelection = exoTrackSelection;
            this.trackGroup = trackGroup;
        }
    }

    private static final class TimeOffsetMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
        private MediaPeriod.Callback callback;
        private final MediaPeriod mediaPeriod;
        private final long timeOffsetUs;

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
            SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
            int i10 = 0;
            while (true) {
                SampleStream sampleStreamA = null;
                if (i10 >= sampleStreamArr.length) {
                    break;
                }
                TimeOffsetSampleStream timeOffsetSampleStream = (TimeOffsetSampleStream) sampleStreamArr[i10];
                if (timeOffsetSampleStream != null) {
                    sampleStreamA = timeOffsetSampleStream.a();
                }
                sampleStreamArr2[i10] = sampleStreamA;
                i10++;
            }
            long jC = this.mediaPeriod.c(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j6 - this.timeOffsetUs);
            for (int i11 = 0; i11 < sampleStreamArr.length; i11++) {
                SampleStream sampleStream = sampleStreamArr2[i11];
                if (sampleStream == null) {
                    sampleStreamArr[i11] = null;
                } else {
                    SampleStream sampleStream2 = sampleStreamArr[i11];
                    if (sampleStream2 == null || ((TimeOffsetSampleStream) sampleStream2).a() != sampleStream) {
                        sampleStreamArr[i11] = new TimeOffsetSampleStream(sampleStream, this.timeOffsetUs);
                    }
                }
            }
            return jC + this.timeOffsetUs;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long a(long j6, SeekParameters seekParameters) {
            return this.mediaPeriod.a(j6 - this.timeOffsetUs, seekParameters) + this.timeOffsetUs;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j6) {
            return this.mediaPeriod.continueLoading(j6 - this.timeOffsetUs);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void d(MediaPeriod mediaPeriod) {
            ((MediaPeriod.Callback) Assertions.e(this.callback)).d(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j6, boolean z6) {
            this.mediaPeriod.discardBuffer(j6 - this.timeOffsetUs, z6);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void e(MediaPeriod.Callback callback, long j6) {
            this.callback = callback;
            this.mediaPeriod.e(this, j6 - this.timeOffsetUs);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + bufferedPositionUs;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + nextLoadPositionUs;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return this.mediaPeriod.getTrackGroups();
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void f(MediaPeriod mediaPeriod) {
            ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
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
            long discontinuity = this.mediaPeriod.readDiscontinuity();
            if (discontinuity == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.timeOffsetUs + discontinuity;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j6) {
            this.mediaPeriod.reevaluateBuffer(j6 - this.timeOffsetUs);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j6) {
            return this.mediaPeriod.seekToUs(j6 - this.timeOffsetUs) + this.timeOffsetUs;
        }

        public TimeOffsetMediaPeriod(MediaPeriod mediaPeriod, long j6) {
            this.mediaPeriod = mediaPeriod;
            this.timeOffsetUs = j6;
        }
    }

    private static final class TimeOffsetSampleStream implements SampleStream {
        private final SampleStream sampleStream;
        private final long timeOffsetUs;

        public SampleStream a() {
            return this.sampleStream;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int b(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i10) {
            int iB = this.sampleStream.b(formatHolder, decoderInputBuffer, i10);
            if (iB == -4) {
                decoderInputBuffer.timeUs = Math.max(0L, decoderInputBuffer.timeUs + this.timeOffsetUs);
            }
            return iB;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return this.sampleStream.isReady();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.sampleStream.maybeThrowError();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j6) {
            return this.sampleStream.skipData(j6 - this.timeOffsetUs);
        }

        public TimeOffsetSampleStream(SampleStream sampleStream, long j6) {
            this.sampleStream = sampleStream;
            this.timeOffsetUs = j6;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
        return (mediaPeriodArr.length > 0 ? mediaPeriodArr[0] : this.periods[0]).a(j6, seekParameters);
    }

    public MediaPeriod b(int i10) {
        MediaPeriod mediaPeriod = this.periods[i10];
        return mediaPeriod instanceof TimeOffsetMediaPeriod ? ((TimeOffsetMediaPeriod) mediaPeriod).mediaPeriod : mediaPeriod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        Integer num;
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            num = null;
            if (i11 >= exoTrackSelectionArr.length) {
                break;
            }
            SampleStream sampleStream = sampleStreamArr[i11];
            num = sampleStream != null ? this.streamPeriodIndices.get(sampleStream) : null;
            iArr[i11] = num == null ? -1 : num.intValue();
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i11];
            if (exoTrackSelection != null) {
                String str = exoTrackSelection.getTrackGroup().id;
                iArr2[i11] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i11] = -1;
            }
            i11++;
        }
        this.streamPeriodIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        Object[] objArr = new ExoTrackSelection[exoTrackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j10 = j6;
        int i12 = 0;
        while (i12 < this.periods.length) {
            for (int i13 = i10; i13 < exoTrackSelectionArr.length; i13++) {
                sampleStreamArr3[i13] = iArr[i13] == i12 ? sampleStreamArr[i13] : num;
                if (iArr2[i13] == i12) {
                    ExoTrackSelection exoTrackSelection2 = (ExoTrackSelection) Assertions.e(exoTrackSelectionArr[i13]);
                    objArr[i13] = new ForwardingTrackSelection(exoTrackSelection2, (TrackGroup) Assertions.e(this.childTrackGroupByMergedTrackGroup.get(exoTrackSelection2.getTrackGroup())));
                } else {
                    objArr[i13] = num;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            Object[] objArr2 = objArr;
            long jC = this.periods[i12].c(objArr, zArr, sampleStreamArr3, zArr2, j10);
            if (i14 == 0) {
                j10 = jC;
            } else if (jC != j10) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z6 = false;
            for (int i15 = 0; i15 < exoTrackSelectionArr.length; i15++) {
                if (iArr2[i15] == i14) {
                    SampleStream sampleStream2 = (SampleStream) Assertions.e(sampleStreamArr3[i15]);
                    sampleStreamArr2[i15] = sampleStreamArr3[i15];
                    this.streamPeriodIndices.put(sampleStream2, Integer.valueOf(i14));
                    z6 = true;
                } else if (iArr[i15] == i14) {
                    Assertions.g(sampleStreamArr3[i15] == 0);
                }
            }
            if (z6) {
                arrayList2.add(this.periods[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            objArr = objArr2;
            i10 = 0;
            num = null;
        }
        int i16 = i10;
        System.arraycopy(sampleStreamArr2, i16, sampleStreamArr, i16, length);
        MediaPeriod[] mediaPeriodArr = (MediaPeriod[]) arrayList.toArray(new MediaPeriod[i16]);
        this.enabledPeriods = mediaPeriodArr;
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.a(mediaPeriodArr);
        return j10;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(j6);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.childrenPendingPreparation.get(i10).continueLoading(j6);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void d(MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (!this.childrenPendingPreparation.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (MediaPeriod mediaPeriod2 : this.periods) {
            i10 += mediaPeriod2.getTrackGroups().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.periods;
            if (i11 >= mediaPeriodArr.length) {
                this.trackGroups = new TrackGroupArray(trackGroupArr);
                ((MediaPeriod.Callback) Assertions.e(this.callback)).d(this);
                return;
            }
            TrackGroupArray trackGroups = mediaPeriodArr[i11].getTrackGroups();
            int i13 = trackGroups.length;
            int i14 = 0;
            while (i14 < i13) {
                TrackGroup trackGroupB = trackGroups.b(i14);
                TrackGroup trackGroupB2 = trackGroupB.b(i11 + ":" + trackGroupB.id);
                this.childTrackGroupByMergedTrackGroup.put(trackGroupB2, trackGroupB);
                trackGroupArr[i12] = trackGroupB2;
                i14++;
                i12++;
            }
            i11++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j6, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.e(this, j6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) Assertions.e(this.trackGroups);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void f(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) Assertions.e(this.callback)).f(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        long j6 = -9223372036854775807L;
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            long discontinuity = mediaPeriod.readDiscontinuity();
            if (discontinuity == -9223372036854775807L) {
                if (j6 != -9223372036854775807L && mediaPeriod.seekToUs(j6) != j6) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j6 == -9223372036854775807L) {
                for (MediaPeriod mediaPeriod2 : this.enabledPeriods) {
                    if (mediaPeriod2 == mediaPeriod) {
                        break;
                    }
                    if (mediaPeriod2.seekToUs(discontinuity) != discontinuity) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j6 = discontinuity;
            } else if (discontinuity != j6) {
                throw new IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        this.compositeSequenceableLoader.reevaluateBuffer(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        long jSeekToUs = this.enabledPeriods[0].seekToUs(j6);
        int i10 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i10 >= mediaPeriodArr.length) {
                return jSeekToUs;
            }
            if (mediaPeriodArr[i10].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i10++;
        }
    }

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] jArr, MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.a(new SequenceableLoader[0]);
        for (int i10 = 0; i10 < mediaPeriodArr.length; i10++) {
            long j6 = jArr[i10];
            if (j6 != 0) {
                this.periods[i10] = new TimeOffsetMediaPeriod(mediaPeriodArr[i10], j6);
            }
        }
    }
}
