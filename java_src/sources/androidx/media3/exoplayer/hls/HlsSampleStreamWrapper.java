package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectionUtil;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.extractor.DummyTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.metadata.emsg.EventMessageDecoder;
import androidx.media3.extractor.metadata.id3.PrivFrame;
import com.google.common.collect.a0;
import com.google.common.collect.h0;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, ExtractorOutput, SampleQueue.UpstreamFormatChangedListener {
    private static final Set<Integer> MAPPABLE_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL = -2;
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL = -3;
    public static final int SAMPLE_QUEUE_INDEX_PENDING = -1;
    private static final String TAG = "HlsSampleStreamWrapper";
    private final Allocator allocator;
    private final Callback callback;
    private final HlsChunkSource chunkSource;

    @Nullable
    private Format downstreamTrackFormat;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;

    @Nullable
    private DrmInitData drmInitData;
    private final DrmSessionManager drmSessionManager;
    private TrackOutput emsgUnwrappingTrackOutput;
    private int enabledTrackGroupCount;
    private final Handler handler;
    private boolean haveAudioVideoSampleQueues;
    private final ArrayList<HlsSampleStream> hlsSampleStreams;
    private long lastSeekPositionUs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;

    @Nullable
    private Chunk loadingChunk;
    private boolean loadingFinished;
    private final Runnable maybeFinishPrepareRunnable;
    private final ArrayList<HlsMediaChunk> mediaChunks;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private final int metadataType;

    @Nullable
    private final Format muxedAudioFormat;
    private final Runnable onTracksEndedRunnable;
    private Set<TrackGroup> optionalTrackGroups;
    private final Map<String, DrmInitData> overridingDrmInitData;
    private long pendingResetPositionUs;
    private boolean pendingResetUpstreamFormats;
    private boolean prepared;
    private int primarySampleQueueIndex;
    private int primarySampleQueueType;
    private int primaryTrackGroupIndex;
    private final List<HlsMediaChunk> readOnlyMediaChunks;
    private boolean released;
    private long sampleOffsetUs;
    private SparseIntArray sampleQueueIndicesByType;
    private boolean[] sampleQueueIsAudioVideoFlags;
    private Set<Integer> sampleQueueMappingDoneByType;
    private HlsSampleQueue[] sampleQueues;
    private boolean sampleQueuesBuilt;
    private boolean[] sampleQueuesEnabledStates;
    private boolean seenFirstTrackSelection;

    @Nullable
    private HlsMediaChunk sourceChunk;
    private int[] trackGroupToSampleQueueIndex;
    private TrackGroupArray trackGroups;
    private final int trackType;
    private boolean tracksEnded;
    private final String uid;
    private Format upstreamTrackFormat;
    private final Loader loader = new Loader("Loader:HlsSampleStreamWrapper");
    private final HlsChunkSource.HlsChunkHolder nextChunkHolder = new HlsChunkSource.HlsChunkHolder();
    private int[] sampleQueueTrackIds = new int[0];

    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void g(Uri uri);

        void onPrepared();
    }

    private static class EmsgUnwrappingTrackOutput implements TrackOutput {
        private byte[] buffer;
        private int bufferPosition;
        private final TrackOutput delegate;
        private final Format delegateFormat;
        private final EventMessageDecoder emsgDecoder = new EventMessageDecoder();
        private Format format;
        private static final Format ID3_FORMAT = new Format.Builder().g0("application/id3").G();
        private static final Format EMSG_FORMAT = new Format.Builder().g0("application/x-emsg").G();

        @Override // androidx.media3.extractor.TrackOutput
        public /* synthetic */ void b(ParsableByteArray parsableByteArray, int i10) {
            androidx.media3.extractor.f.b(this, parsableByteArray, i10);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public /* synthetic */ int e(DataReader dataReader, int i10, boolean z6) {
            return androidx.media3.extractor.f.a(this, dataReader, i10, z6);
        }

        private void h(int i10) {
            byte[] bArr = this.buffer;
            if (bArr.length < i10) {
                this.buffer = Arrays.copyOf(bArr, i10 + (i10 / 2));
            }
        }

        private ParsableByteArray i(int i10, int i11) {
            int i12 = this.bufferPosition - i11;
            ParsableByteArray parsableByteArray = new ParsableByteArray(Arrays.copyOfRange(this.buffer, i12 - i10, i12));
            byte[] bArr = this.buffer;
            System.arraycopy(bArr, i12, bArr, 0, i11);
            this.bufferPosition = i11;
            return parsableByteArray;
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void a(ParsableByteArray parsableByteArray, int i10, int i11) {
            h(this.bufferPosition + i10);
            parsableByteArray.l(this.buffer, this.bufferPosition, i10);
            this.bufferPosition += i10;
        }

        @Override // androidx.media3.extractor.TrackOutput
        public int c(DataReader dataReader, int i10, boolean z6, int i11) throws IOException {
            h(this.bufferPosition + i10);
            int i12 = dataReader.read(this.buffer, this.bufferPosition, i10);
            if (i12 != -1) {
                this.bufferPosition += i12;
                return i12;
            }
            if (z6) {
                return -1;
            }
            throw new EOFException();
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void d(Format format) {
            this.format = format;
            this.delegate.d(this.delegateFormat);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void f(long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
            Assertions.e(this.format);
            ParsableByteArray parsableByteArrayI = i(i11, i12);
            if (!Util.c(this.format.sampleMimeType, this.delegateFormat.sampleMimeType)) {
                if (!"application/x-emsg".equals(this.format.sampleMimeType)) {
                    Log.i(HlsSampleStreamWrapper.TAG, "Ignoring sample for unsupported format: " + this.format.sampleMimeType);
                    return;
                }
                EventMessage eventMessageC = this.emsgDecoder.c(parsableByteArrayI);
                if (!g(eventMessageC)) {
                    Log.i(HlsSampleStreamWrapper.TAG, String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.delegateFormat.sampleMimeType, eventMessageC.r()));
                    return;
                }
                parsableByteArrayI = new ParsableByteArray((byte[]) Assertions.e(eventMessageC.q()));
            }
            int iA = parsableByteArrayI.a();
            this.delegate.b(parsableByteArrayI, iA);
            this.delegate.f(j6, i10, iA, i12, cryptoData);
        }

        public EmsgUnwrappingTrackOutput(TrackOutput trackOutput, int i10) {
            this.delegate = trackOutput;
            if (i10 != 1) {
                if (i10 == 3) {
                    this.delegateFormat = EMSG_FORMAT;
                } else {
                    throw new IllegalArgumentException("Unknown metadataType: " + i10);
                }
            } else {
                this.delegateFormat = ID3_FORMAT;
            }
            this.buffer = new byte[0];
            this.bufferPosition = 0;
        }

        private boolean g(EventMessage eventMessage) {
            Format formatR = eventMessage.r();
            if (formatR != null && Util.c(this.delegateFormat.sampleMimeType, formatR.sampleMimeType)) {
                return true;
            }
            return false;
        }
    }

    private static final class HlsSampleQueue extends SampleQueue {

        @Nullable
        private DrmInitData drmInitData;
        private final Map<String, DrmInitData> overridingDrmInitData;

        @Nullable
        private Metadata h0(@Nullable Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int iH = metadata.h();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= iH) {
                    i11 = -1;
                    break;
                }
                Metadata.Entry entryG = metadata.g(i11);
                if ((entryG instanceof PrivFrame) && HlsMediaChunk.PRIV_TIMESTAMP_FRAME_OWNER.equals(((PrivFrame) entryG).owner)) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return metadata;
            }
            if (iH == 1) {
                return null;
            }
            Metadata.Entry[] entryArr = new Metadata.Entry[iH - 1];
            while (i10 < iH) {
                if (i10 != i11) {
                    entryArr[i10 < i11 ? i10 : i10 - 1] = metadata.g(i10);
                }
                i10++;
            }
            return new Metadata(entryArr);
        }

        private HlsSampleQueue(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, Map<String, DrmInitData> map) {
            super(allocator, drmSessionManager, eventDispatcher);
            this.overridingDrmInitData = map;
        }

        public void i0(@Nullable DrmInitData drmInitData) {
            this.drmInitData = drmInitData;
            I();
        }

        public void j0(HlsMediaChunk hlsMediaChunk) {
            f0(hlsMediaChunk.uid);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue
        public Format w(Format format) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.drmInitData;
            if (drmInitData2 == null) {
                drmInitData2 = format.drmInitData;
            }
            if (drmInitData2 != null && (drmInitData = this.overridingDrmInitData.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            Metadata metadataH0 = h0(format.metadata);
            if (drmInitData2 != format.drmInitData || metadataH0 != format.metadata) {
                format = format.b().O(drmInitData2).Z(metadataH0).G();
            }
            return super.w(format);
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue, androidx.media3.extractor.TrackOutput
        public void f(long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
            super.f(j6, i10, i11, i12, cryptoData);
        }
    }

    private boolean A() {
        return this.pendingResetPositionUs != -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        this.sampleQueuesBuilt = true;
        E();
    }

    private void X() {
        this.prepared = true;
    }

    private boolean k(int i10) {
        for (int i11 = i10; i11 < this.mediaChunks.size(); i11++) {
            if (this.mediaChunks.get(i11).shouldSpliceIn) {
                return false;
            }
        }
        HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(i10);
        for (int i12 = 0; i12 < this.sampleQueues.length; i12++) {
            if (this.sampleQueues[i12].C() > hlsMediaChunk.k(i12)) {
                return false;
            }
        }
        return true;
    }

    private TrackGroupArray o(TrackGroup[] trackGroupArr) {
        for (int i10 = 0; i10 < trackGroupArr.length; i10++) {
            TrackGroup trackGroup = trackGroupArr[i10];
            Format[] formatArr = new Format[trackGroup.length];
            for (int i11 = 0; i11 < trackGroup.length; i11++) {
                Format formatC = trackGroup.c(i11);
                formatArr[i11] = formatC.c(this.drmSessionManager.a(formatC));
            }
            trackGroupArr[i10] = new TrackGroup(trackGroup.id, formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    private static int x(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 0 : 1;
        }
        return 3;
    }

    public boolean C() {
        return this.primarySampleQueueType == 2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public void H(Chunk chunk, long j6, long j10, boolean z6) {
        this.loadingChunk = null;
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.d(), chunk.c(), j6, j10, chunk.a());
        this.loadErrorHandlingPolicy.a(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.q(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (z6) {
            return;
        }
        if (A() || this.enabledTrackGroupCount == 0) {
            S();
        }
        if (this.enabledTrackGroupCount > 0) {
            this.callback.f(this);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public void Y(Chunk chunk, long j6, long j10) {
        this.loadingChunk = null;
        this.chunkSource.q(chunk);
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.d(), chunk.c(), j6, j10, chunk.a());
        this.loadErrorHandlingPolicy.a(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.t(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (this.prepared) {
            this.callback.f(this);
        } else {
            continueLoading(this.lastSeekPositionUs);
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void d(SeekMap seekMap) {
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        this.tracksEnded = true;
        this.handler.post(this.onTracksEndedRunnable);
    }

    private void D() {
        int i10 = this.trackGroups.length;
        int[] iArr = new int[i10];
        this.trackGroupToSampleQueueIndex = iArr;
        Arrays.fill(iArr, -1);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = 0;
            while (true) {
                HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
                if (i12 >= hlsSampleQueueArr.length) {
                    break;
                }
                if (t((Format) Assertions.i(hlsSampleQueueArr[i12].F()), this.trackGroups.b(i11).c(0))) {
                    this.trackGroupToSampleQueueIndex[i11] = i12;
                    break;
                }
                i12++;
            }
        }
        Iterator<HlsSampleStream> it = this.hlsSampleStreams.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        if (!this.released && this.trackGroupToSampleQueueIndex == null && this.sampleQueuesBuilt) {
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                if (hlsSampleQueue.F() == null) {
                    return;
                }
            }
            if (this.trackGroups != null) {
                D();
                return;
            }
            j();
            X();
            this.callback.onPrepared();
        }
    }

    private void S() {
        for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            hlsSampleQueue.W(this.pendingResetUpstreamFormats);
        }
        this.pendingResetUpstreamFormats = false;
    }

    private boolean T(long j6) {
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.sampleQueues[i10].Z(j6, false) && (this.sampleQueueIsAudioVideoFlags[i10] || !this.haveAudioVideoSampleQueues)) {
                return false;
            }
        }
        return true;
    }

    private void d0(SampleStream[] sampleStreamArr) {
        this.hlsSampleStreams.clear();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream != null) {
                this.hlsSampleStreams.add((HlsSampleStream) sampleStream);
            }
        }
    }

    private void h() {
        Assertions.g(this.prepared);
        Assertions.e(this.trackGroups);
        Assertions.e(this.optionalTrackGroups);
    }

    private void j() {
        Format format;
        int length = this.sampleQueues.length;
        int i10 = -2;
        int i11 = -1;
        int i12 = 0;
        while (true) {
            int i13 = 2;
            if (i12 >= length) {
                break;
            }
            String str = ((Format) Assertions.i(this.sampleQueues[i12].F())).sampleMimeType;
            if (!MimeTypes.s(str)) {
                i13 = MimeTypes.o(str) ? 1 : MimeTypes.r(str) ? 3 : -2;
            }
            if (x(i13) > x(i10)) {
                i11 = i12;
                i10 = i13;
            } else if (i13 == i10 && i11 != -1) {
                i11 = -1;
            }
            i12++;
        }
        TrackGroup trackGroupK = this.chunkSource.k();
        int i14 = trackGroupK.length;
        this.primaryTrackGroupIndex = -1;
        this.trackGroupToSampleQueueIndex = new int[length];
        for (int i15 = 0; i15 < length; i15++) {
            this.trackGroupToSampleQueueIndex[i15] = i15;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        int i16 = 0;
        while (i16 < length) {
            Format format2 = (Format) Assertions.i(this.sampleQueues[i16].F());
            if (i16 == i11) {
                Format[] formatArr = new Format[i14];
                for (int i17 = 0; i17 < i14; i17++) {
                    Format formatC = trackGroupK.c(i17);
                    if (i10 == 1 && (format = this.muxedAudioFormat) != null) {
                        formatC = formatC.k(format);
                    }
                    formatArr[i17] = i14 == 1 ? format2.k(formatC) : p(formatC, format2, true);
                }
                trackGroupArr[i16] = new TrackGroup(this.uid, formatArr);
                this.primaryTrackGroupIndex = i16;
            } else {
                Format format3 = (i10 == 2 && MimeTypes.o(format2.sampleMimeType)) ? this.muxedAudioFormat : null;
                StringBuilder sb = new StringBuilder();
                sb.append(this.uid);
                sb.append(":muxed:");
                sb.append(i16 < i11 ? i16 : i16 - 1);
                trackGroupArr[i16] = new TrackGroup(sb.toString(), p(format3, format2, false));
            }
            i16++;
        }
        this.trackGroups = o(trackGroupArr);
        Assertions.g(this.optionalTrackGroups == null);
        this.optionalTrackGroups = Collections.emptySet();
    }

    private static DummyTrackOutput m(int i10, int i11) {
        Log.i(TAG, "Unmapped track with id " + i10 + " of type " + i11);
        return new DummyTrackOutput();
    }

    private SampleQueue n(int i10, int i11) {
        int length = this.sampleQueues.length;
        boolean z6 = true;
        if (i11 != 1 && i11 != 2) {
            z6 = false;
        }
        HlsSampleQueue hlsSampleQueue = new HlsSampleQueue(this.allocator, this.drmSessionManager, this.drmEventDispatcher, this.overridingDrmInitData);
        hlsSampleQueue.b0(this.lastSeekPositionUs);
        if (z6) {
            hlsSampleQueue.i0(this.drmInitData);
        }
        hlsSampleQueue.a0(this.sampleOffsetUs);
        HlsMediaChunk hlsMediaChunk = this.sourceChunk;
        if (hlsMediaChunk != null) {
            hlsSampleQueue.j0(hlsMediaChunk);
        }
        hlsSampleQueue.d0(this);
        int i12 = length + 1;
        int[] iArrCopyOf = Arrays.copyOf(this.sampleQueueTrackIds, i12);
        this.sampleQueueTrackIds = iArrCopyOf;
        iArrCopyOf[length] = i10;
        this.sampleQueues = (HlsSampleQueue[]) Util.N0(this.sampleQueues, hlsSampleQueue);
        boolean[] zArrCopyOf = Arrays.copyOf(this.sampleQueueIsAudioVideoFlags, i12);
        this.sampleQueueIsAudioVideoFlags = zArrCopyOf;
        zArrCopyOf[length] = z6;
        this.haveAudioVideoSampleQueues |= z6;
        this.sampleQueueMappingDoneByType.add(Integer.valueOf(i11));
        this.sampleQueueIndicesByType.append(i11, length);
        if (x(i11) > x(this.primarySampleQueueType)) {
            this.primarySampleQueueIndex = length;
            this.primarySampleQueueType = i11;
        }
        this.sampleQueuesEnabledStates = Arrays.copyOf(this.sampleQueuesEnabledStates, i12);
        return hlsSampleQueue;
    }

    private static Format p(@Nullable Format format, Format format2, boolean z6) {
        String strD;
        String strG;
        if (format == null) {
            return format2;
        }
        int iK = MimeTypes.k(format2.sampleMimeType);
        if (Util.L(format.codecs, iK) == 1) {
            strD = Util.M(format.codecs, iK);
            strG = MimeTypes.g(strD);
        } else {
            strD = MimeTypes.d(format.codecs, format2.sampleMimeType);
            strG = format2.sampleMimeType;
        }
        Format.Builder builderK = format2.b().U(format.id).W(format.label).X(format.language).i0(format.selectionFlags).e0(format.roleFlags).I(z6 ? format.averageBitrate : -1).b0(z6 ? format.peakBitrate : -1).K(strD);
        if (iK == 2) {
            builderK.n0(format.width).S(format.height).R(format.frameRate);
        }
        if (strG != null) {
            builderK.g0(strG);
        }
        int i10 = format.channelCount;
        if (i10 != -1 && iK == 1) {
            builderK.J(i10);
        }
        Metadata metadataC = format.metadata;
        if (metadataC != null) {
            Metadata metadata = format2.metadata;
            if (metadata != null) {
                metadataC = metadata.c(metadataC);
            }
            builderK.Z(metadataC);
        }
        return builderK.G();
    }

    private void q(int i10) {
        Assertions.g(!this.loader.i());
        while (true) {
            if (i10 >= this.mediaChunks.size()) {
                i10 = -1;
                break;
            } else if (k(i10)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 == -1) {
            return;
        }
        long j6 = u().endTimeUs;
        HlsMediaChunk hlsMediaChunkR = r(i10);
        if (this.mediaChunks.isEmpty()) {
            this.pendingResetPositionUs = this.lastSeekPositionUs;
        } else {
            ((HlsMediaChunk) h0.e(this.mediaChunks)).m();
        }
        this.loadingFinished = false;
        this.mediaSourceEventDispatcher.C(this.primarySampleQueueType, hlsMediaChunkR.startTimeUs, j6);
    }

    private HlsMediaChunk r(int i10) {
        HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(i10);
        ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
        Util.V0(arrayList, i10, arrayList.size());
        for (int i11 = 0; i11 < this.sampleQueues.length; i11++) {
            this.sampleQueues[i11].u(hlsMediaChunk.k(i11));
        }
        return hlsMediaChunk;
    }

    private boolean s(HlsMediaChunk hlsMediaChunk) {
        int i10 = hlsMediaChunk.uid;
        int length = this.sampleQueues.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.sampleQueuesEnabledStates[i11] && this.sampleQueues[i11].Q() == i10) {
                return false;
            }
        }
        return true;
    }

    private static boolean t(Format format, Format format2) {
        String str = format.sampleMimeType;
        String str2 = format2.sampleMimeType;
        int iK = MimeTypes.k(str);
        if (iK != 3) {
            return iK == MimeTypes.k(str2);
        }
        if (Util.c(str, str2)) {
            return !("application/cea-608".equals(str) || "application/cea-708".equals(str)) || format.accessibilityChannel == format2.accessibilityChannel;
        }
        return false;
    }

    private HlsMediaChunk u() {
        ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
        return arrayList.get(arrayList.size() - 1);
    }

    @Nullable
    private TrackOutput v(int i10, int i11) {
        Assertions.a(MAPPABLE_TYPES.contains(Integer.valueOf(i11)));
        int i12 = this.sampleQueueIndicesByType.get(i11, -1);
        if (i12 == -1) {
            return null;
        }
        if (this.sampleQueueMappingDoneByType.add(Integer.valueOf(i11))) {
            this.sampleQueueTrackIds[i12] = i10;
        }
        return this.sampleQueueTrackIds[i12] == i10 ? this.sampleQueues[i12] : m(i10, i11);
    }

    private void y(HlsMediaChunk hlsMediaChunk) {
        this.sourceChunk = hlsMediaChunk;
        this.upstreamTrackFormat = hlsMediaChunk.trackFormat;
        this.pendingResetPositionUs = -9223372036854775807L;
        this.mediaChunks.add(hlsMediaChunk);
        a0.a aVarR = a0.r();
        for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            aVarR.d(Integer.valueOf(hlsSampleQueue.G()));
        }
        hlsMediaChunk.l(this, aVarR.k());
        for (HlsSampleQueue hlsSampleQueue2 : this.sampleQueues) {
            hlsSampleQueue2.j0(hlsMediaChunk);
            if (hlsMediaChunk.shouldSpliceIn) {
                hlsSampleQueue2.g0();
            }
        }
    }

    private static boolean z(Chunk chunk) {
        return chunk instanceof HlsMediaChunk;
    }

    public void F() throws IOException {
        this.loader.maybeThrowError();
        this.chunkSource.o();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public Loader.LoadErrorAction w(Chunk chunk, long j6, long j10, IOException iOException, int i10) {
        Loader.LoadErrorAction loadErrorActionG;
        int i11;
        boolean z6 = z(chunk);
        if (z6 && !((HlsMediaChunk) chunk).o() && (iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((i11 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode) == 410 || i11 == 404)) {
            return Loader.RETRY;
        }
        long jA = chunk.a();
        LoadEventInfo loadEventInfo = new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.d(), chunk.c(), j6, j10, jA);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, Util.q1(chunk.startTimeUs), Util.q1(chunk.endTimeUs)), iOException, i10);
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC = this.loadErrorHandlingPolicy.c(TrackSelectionUtil.c(this.chunkSource.l()), loadErrorInfo);
        boolean zN = (fallbackSelectionC == null || fallbackSelectionC.type != 2) ? false : this.chunkSource.n(chunk, fallbackSelectionC.exclusionDurationMs);
        if (zN) {
            if (z6 && jA == 0) {
                ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
                Assertions.g(arrayList.remove(arrayList.size() - 1) == chunk);
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                } else {
                    ((HlsMediaChunk) h0.e(this.mediaChunks)).m();
                }
            }
            loadErrorActionG = Loader.DONT_RETRY;
        } else {
            long jD = this.loadErrorHandlingPolicy.d(loadErrorInfo);
            loadErrorActionG = jD != -9223372036854775807L ? Loader.g(false, jD) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = loadErrorActionG;
        boolean z10 = !loadErrorAction.c();
        this.mediaSourceEventDispatcher.v(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, iOException, z10);
        if (z10) {
            this.loadingChunk = null;
            this.loadErrorHandlingPolicy.a(chunk.loadTaskId);
        }
        if (zN) {
            if (this.prepared) {
                this.callback.f(this);
            } else {
                continueLoading(this.lastSeekPositionUs);
            }
        }
        return loadErrorAction;
    }

    public void L() {
        this.sampleQueueMappingDoneByType.clear();
    }

    public boolean M(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6) {
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC;
        if (!this.chunkSource.p(uri)) {
            return true;
        }
        long j6 = (z6 || (fallbackSelectionC = this.loadErrorHandlingPolicy.c(TrackSelectionUtil.c(this.chunkSource.l()), loadErrorInfo)) == null || fallbackSelectionC.type != 2) ? -9223372036854775807L : fallbackSelectionC.exclusionDurationMs;
        return this.chunkSource.r(uri, j6) && j6 != -9223372036854775807L;
    }

    public void N() {
        if (this.mediaChunks.isEmpty()) {
            return;
        }
        HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) h0.e(this.mediaChunks);
        int iC = this.chunkSource.c(hlsMediaChunk);
        if (iC == 1) {
            hlsMediaChunk.t();
        } else if (iC == 2 && !this.loadingFinished && this.loader.i()) {
            this.loader.e();
        }
    }

    public void R() {
        if (this.prepared) {
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.R();
            }
        }
        this.loader.l(this);
        this.handler.removeCallbacksAndMessages(null);
        this.released = true;
        this.hlsSampleStreams.clear();
    }

    public boolean U(long j6, boolean z6) {
        this.lastSeekPositionUs = j6;
        if (A()) {
            this.pendingResetPositionUs = j6;
            return true;
        }
        if (this.sampleQueuesBuilt && !z6 && T(j6)) {
            return false;
        }
        this.pendingResetPositionUs = j6;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        if (this.loader.i()) {
            if (this.sampleQueuesBuilt) {
                for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                    hlsSampleQueue.r();
                }
            }
            this.loader.e();
        } else {
            this.loader.f();
            S();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0122  */
    public boolean V(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6, boolean z6) {
        boolean z10;
        h();
        int i10 = this.enabledTrackGroupCount;
        int i11 = 0;
        for (int i12 = 0; i12 < exoTrackSelectionArr.length; i12++) {
            HlsSampleStream hlsSampleStream = (HlsSampleStream) sampleStreamArr[i12];
            if (hlsSampleStream != null && (exoTrackSelectionArr[i12] == null || !zArr[i12])) {
                this.enabledTrackGroupCount--;
                hlsSampleStream.d();
                sampleStreamArr[i12] = null;
            }
        }
        boolean z11 = z6 || (!this.seenFirstTrackSelection ? j6 == this.lastSeekPositionUs : i10 != 0);
        ExoTrackSelection exoTrackSelectionL = this.chunkSource.l();
        boolean z12 = z11;
        ExoTrackSelection exoTrackSelection = exoTrackSelectionL;
        for (int i13 = 0; i13 < exoTrackSelectionArr.length; i13++) {
            ExoTrackSelection exoTrackSelection2 = exoTrackSelectionArr[i13];
            if (exoTrackSelection2 != null) {
                int iC = this.trackGroups.c(exoTrackSelection2.getTrackGroup());
                if (iC == this.primaryTrackGroupIndex) {
                    this.chunkSource.v(exoTrackSelection2);
                    exoTrackSelection = exoTrackSelection2;
                }
                if (sampleStreamArr[i13] == null) {
                    this.enabledTrackGroupCount++;
                    HlsSampleStream hlsSampleStream2 = new HlsSampleStream(this, iC);
                    sampleStreamArr[i13] = hlsSampleStream2;
                    zArr2[i13] = true;
                    if (this.trackGroupToSampleQueueIndex != null) {
                        hlsSampleStream2.a();
                        if (!z12) {
                            HlsSampleQueue hlsSampleQueue = this.sampleQueues[this.trackGroupToSampleQueueIndex[iC]];
                            z12 = (hlsSampleQueue.Z(j6, true) || hlsSampleQueue.C() == 0) ? false : true;
                        }
                    }
                }
            }
        }
        if (this.enabledTrackGroupCount == 0) {
            this.chunkSource.s();
            this.downstreamTrackFormat = null;
            this.pendingResetUpstreamFormats = true;
            this.mediaChunks.clear();
            if (this.loader.i()) {
                if (this.sampleQueuesBuilt) {
                    HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
                    int length = hlsSampleQueueArr.length;
                    while (i11 < length) {
                        hlsSampleQueueArr[i11].r();
                        i11++;
                    }
                }
                this.loader.e();
            } else {
                S();
            }
        } else {
            if (this.mediaChunks.isEmpty() || Util.c(exoTrackSelection, exoTrackSelectionL)) {
                z10 = z6;
            } else {
                if (!this.seenFirstTrackSelection) {
                    long j10 = j6 < 0 ? -j6 : 0L;
                    HlsMediaChunk hlsMediaChunkU = u();
                    exoTrackSelection.i(j6, j10, -9223372036854775807L, this.readOnlyMediaChunks, this.chunkSource.a(hlsMediaChunkU, j6));
                    if (exoTrackSelection.getSelectedIndexInTrackGroup() == this.chunkSource.k().d(hlsMediaChunkU.trackFormat)) {
                        z10 = z6;
                    }
                }
                this.pendingResetUpstreamFormats = true;
                z10 = true;
                z12 = true;
            }
            if (z12) {
                U(j6, z10);
                while (i11 < sampleStreamArr.length) {
                    if (sampleStreamArr[i11] != null) {
                        zArr2[i11] = true;
                    }
                    i11++;
                }
            }
        }
        d0(sampleStreamArr);
        this.seenFirstTrackSelection = true;
        return z12;
    }

    public void W(@Nullable DrmInitData drmInitData) {
        if (Util.c(this.drmInitData, drmInitData)) {
            return;
        }
        this.drmInitData = drmInitData;
        int i10 = 0;
        while (true) {
            HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
            if (i10 >= hlsSampleQueueArr.length) {
                return;
            }
            if (this.sampleQueueIsAudioVideoFlags[i10]) {
                hlsSampleQueueArr[i10].i0(drmInitData);
            }
            i10++;
        }
    }

    public void Z(boolean z6) {
        this.chunkSource.u(z6);
    }

    public long a(long j6, SeekParameters seekParameters) {
        return this.chunkSource.b(j6, seekParameters);
    }

    public void a0(long j6) {
        if (this.sampleOffsetUs != j6) {
            this.sampleOffsetUs = j6;
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.a0(j6);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public void b(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        List<HlsMediaChunk> listEmptyList;
        long jMax;
        if (this.loadingFinished || this.loader.i() || this.loader.h()) {
            return false;
        }
        if (A()) {
            listEmptyList = Collections.emptyList();
            jMax = this.pendingResetPositionUs;
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.b0(this.pendingResetPositionUs);
            }
        } else {
            listEmptyList = this.readOnlyMediaChunks;
            HlsMediaChunk hlsMediaChunkU = u();
            jMax = hlsMediaChunkU.f() ? hlsMediaChunkU.endTimeUs : Math.max(this.lastSeekPositionUs, hlsMediaChunkU.startTimeUs);
        }
        List<HlsMediaChunk> list = listEmptyList;
        long j10 = jMax;
        this.nextChunkHolder.a();
        this.chunkSource.f(j6, j10, list, this.prepared || !list.isEmpty(), this.nextChunkHolder);
        HlsChunkSource.HlsChunkHolder hlsChunkHolder = this.nextChunkHolder;
        boolean z6 = hlsChunkHolder.endOfStream;
        Chunk chunk = hlsChunkHolder.chunk;
        Uri uri = hlsChunkHolder.playlistUrl;
        if (z6) {
            this.pendingResetPositionUs = -9223372036854775807L;
            this.loadingFinished = true;
            return true;
        }
        if (chunk == null) {
            if (uri != null) {
                this.callback.g(uri);
            }
            return false;
        }
        if (z(chunk)) {
            y((HlsMediaChunk) chunk);
        }
        this.loadingChunk = chunk;
        this.mediaSourceEventDispatcher.z(new LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, this.loader.m(chunk, this, this.loadErrorHandlingPolicy.b(chunk.type))), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        return true;
    }

    public void discardBuffer(long j6, boolean z6) {
        if (!this.sampleQueuesBuilt || A()) {
            return;
        }
        int length = this.sampleQueues.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.sampleQueues[i10].q(j6, z6, this.sampleQueuesEnabledStates[i10]);
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (A()) {
            return this.pendingResetPositionUs;
        }
        long jMax = this.lastSeekPositionUs;
        HlsMediaChunk hlsMediaChunkU = u();
        if (!hlsMediaChunkU.f()) {
            if (this.mediaChunks.size() > 1) {
                ArrayList<HlsMediaChunk> arrayList = this.mediaChunks;
                hlsMediaChunkU = arrayList.get(arrayList.size() - 2);
            } else {
                hlsMediaChunkU = null;
            }
        }
        if (hlsMediaChunkU != null) {
            jMax = Math.max(jMax, hlsMediaChunkU.endTimeUs);
        }
        if (this.sampleQueuesBuilt) {
            for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                jMax = Math.max(jMax, hlsSampleQueue.z());
            }
        }
        return jMax;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.i();
    }

    public void l() {
        if (this.prepared) {
            return;
        }
        continueLoading(this.lastSeekPositionUs);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            hlsSampleQueue.T();
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        if (this.loader.h() || A()) {
            return;
        }
        if (this.loader.i()) {
            Assertions.e(this.loadingChunk);
            if (this.chunkSource.w(j6, this.loadingChunk, this.readOnlyMediaChunks)) {
                this.loader.e();
                return;
            }
            return;
        }
        int size = this.readOnlyMediaChunks.size();
        while (size > 0 && this.chunkSource.c(this.readOnlyMediaChunks.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.readOnlyMediaChunks.size()) {
            q(size);
        }
        int i10 = this.chunkSource.i(j6, this.readOnlyMediaChunks);
        if (i10 < this.mediaChunks.size()) {
            q(i10);
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int i10, int i11) {
        TrackOutput trackOutputN;
        if (!MAPPABLE_TYPES.contains(Integer.valueOf(i11))) {
            int i12 = 0;
            while (true) {
                TrackOutput[] trackOutputArr = this.sampleQueues;
                if (i12 >= trackOutputArr.length) {
                    trackOutputN = null;
                    break;
                }
                if (this.sampleQueueTrackIds[i12] == i10) {
                    trackOutputN = trackOutputArr[i12];
                    break;
                }
                i12++;
            }
        } else {
            trackOutputN = v(i10, i11);
        }
        if (trackOutputN == null) {
            if (this.tracksEnded) {
                return m(i10, i11);
            }
            trackOutputN = n(i10, i11);
        }
        if (i11 != 5) {
            return trackOutputN;
        }
        if (this.emsgUnwrappingTrackOutput == null) {
            this.emsgUnwrappingTrackOutput = new EmsgUnwrappingTrackOutput(trackOutputN, this.metadataType);
        }
        return this.emsgUnwrappingTrackOutput;
    }

    public HlsSampleStreamWrapper(String str, int i10, Callback callback, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, Allocator allocator, long j6, @Nullable Format format, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, int i11) {
        this.uid = str;
        this.trackType = i10;
        this.callback = callback;
        this.chunkSource = hlsChunkSource;
        this.overridingDrmInitData = map;
        this.allocator = allocator;
        this.muxedAudioFormat = format;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.metadataType = i11;
        Set<Integer> set = MAPPABLE_TYPES;
        this.sampleQueueMappingDoneByType = new HashSet(set.size());
        this.sampleQueueIndicesByType = new SparseIntArray(set.size());
        this.sampleQueues = new HlsSampleQueue[0];
        this.sampleQueueIsAudioVideoFlags = new boolean[0];
        this.sampleQueuesEnabledStates = new boolean[0];
        ArrayList<HlsMediaChunk> arrayList = new ArrayList<>();
        this.mediaChunks = arrayList;
        this.readOnlyMediaChunks = Collections.unmodifiableList(arrayList);
        this.hlsSampleStreams = new ArrayList<>();
        this.maybeFinishPrepareRunnable = new Runnable() { // from class: androidx.media3.exoplayer.hls.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f529a.E();
            }
        };
        this.onTracksEndedRunnable = new Runnable() { // from class: androidx.media3.exoplayer.hls.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f530a.O();
            }
        };
        this.handler = Util.w();
        this.lastSeekPositionUs = j6;
        this.pendingResetPositionUs = j6;
    }

    public boolean B(int i10) {
        if (!A() && this.sampleQueues[i10].K(this.loadingFinished)) {
            return true;
        }
        return false;
    }

    public void G(int i10) throws IOException {
        F();
        this.sampleQueues[i10].N();
    }

    public void P(TrackGroup[] trackGroupArr, int i10, int... iArr) {
        this.trackGroups = o(trackGroupArr);
        this.optionalTrackGroups = new HashSet();
        for (int i11 : iArr) {
            this.optionalTrackGroups.add(this.trackGroups.b(i11));
        }
        this.primaryTrackGroupIndex = i10;
        Handler handler = this.handler;
        final Callback callback = this.callback;
        Objects.requireNonNull(callback);
        handler.post(new Runnable() { // from class: androidx.media3.exoplayer.hls.a
            @Override // java.lang.Runnable
            public final void run() {
                callback.onPrepared();
            }
        });
        X();
    }

    public int Q(int i10, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i11) {
        Format format;
        if (A()) {
            return -3;
        }
        int i12 = 0;
        if (!this.mediaChunks.isEmpty()) {
            int i13 = 0;
            while (i13 < this.mediaChunks.size() - 1 && s(this.mediaChunks.get(i13))) {
                i13++;
            }
            Util.V0(this.mediaChunks, 0, i13);
            HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(0);
            Format format2 = hlsMediaChunk.trackFormat;
            if (!format2.equals(this.downstreamTrackFormat)) {
                this.mediaSourceEventDispatcher.h(this.trackType, format2, hlsMediaChunk.trackSelectionReason, hlsMediaChunk.trackSelectionData, hlsMediaChunk.startTimeUs);
            }
            this.downstreamTrackFormat = format2;
        }
        if (!this.mediaChunks.isEmpty() && !this.mediaChunks.get(0).o()) {
            return -3;
        }
        int iS = this.sampleQueues[i10].S(formatHolder, decoderInputBuffer, i11, this.loadingFinished);
        if (iS == -5) {
            Format formatK = (Format) Assertions.e(formatHolder.format);
            if (i10 == this.primarySampleQueueIndex) {
                int iD = com.google.common.primitives.e.d(this.sampleQueues[i10].Q());
                while (i12 < this.mediaChunks.size() && this.mediaChunks.get(i12).uid != iD) {
                    i12++;
                }
                if (i12 < this.mediaChunks.size()) {
                    format = this.mediaChunks.get(i12).trackFormat;
                } else {
                    format = (Format) Assertions.e(this.upstreamTrackFormat);
                }
                formatK = formatK.k(format);
            }
            formatHolder.format = formatK;
        }
        return iS;
    }

    public int b0(int i10, long j6) {
        if (A()) {
            return 0;
        }
        HlsSampleQueue hlsSampleQueue = this.sampleQueues[i10];
        int iE = hlsSampleQueue.E(j6, this.loadingFinished);
        HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) h0.f(this.mediaChunks, null);
        if (hlsMediaChunk != null && !hlsMediaChunk.o()) {
            iE = Math.min(iE, hlsMediaChunk.k(i10) - hlsSampleQueue.C());
        }
        hlsSampleQueue.e0(iE);
        return iE;
    }

    public void c0(int i10) {
        h();
        Assertions.e(this.trackGroupToSampleQueueIndex);
        int i11 = this.trackGroupToSampleQueueIndex[i10];
        Assertions.g(this.sampleQueuesEnabledStates[i11]);
        this.sampleQueuesEnabledStates[i11] = false;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (A()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return u().endTimeUs;
    }

    public TrackGroupArray getTrackGroups() {
        h();
        return this.trackGroups;
    }

    public int i(int i10) {
        h();
        Assertions.e(this.trackGroupToSampleQueueIndex);
        int i11 = this.trackGroupToSampleQueueIndex[i10];
        if (i11 == -1) {
            if (!this.optionalTrackGroups.contains(this.trackGroups.b(i10))) {
                return -2;
            }
            return -3;
        }
        boolean[] zArr = this.sampleQueuesEnabledStates;
        if (zArr[i11]) {
            return -2;
        }
        zArr[i11] = true;
        return i11;
    }

    public void maybeThrowPrepareError() throws IOException {
        F();
        if (this.loadingFinished && !this.prepared) {
            throw ParserException.a("Loading finished before preparation is complete.", null);
        }
    }
}
