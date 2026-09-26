package androidx.media3.exoplayer.dash;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.dash.manifest.AdaptationSet;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.dash.manifest.Descriptor;
import androidx.media3.exoplayer.dash.manifest.EventStream;
import androidx.media3.exoplayer.dash.manifest.Period;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.ChunkSampleStream;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import com.google.common.collect.l0;
import com.google.common.primitives.e;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
final class DashMediaPeriod implements MediaPeriod, SequenceableLoader.Callback<ChunkSampleStream<DashChunkSource>>, ChunkSampleStream.ReleaseCallback<DashChunkSource> {
    private static final Pattern CEA608_SERVICE_DESCRIPTOR_REGEX = Pattern.compile("CC([1-4])=(.+)");
    private static final Pattern CEA708_SERVICE_DESCRIPTOR_REGEX = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");
    private final Allocator allocator;
    private final BaseUrlExclusionList baseUrlExclusionList;

    @Nullable
    private MediaPeriod.Callback callback;
    private final DashChunkSource.Factory chunkSourceFactory;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private final long elapsedRealtimeOffsetMs;
    private List<EventStream> eventStreams;
    final int id;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private DashManifest manifest;
    private final LoaderErrorThrower manifestLoaderErrorThrower;
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    private int periodIndex;
    private final PlayerEmsgHandler playerEmsgHandler;
    private final PlayerId playerId;
    private final TrackGroupInfo[] trackGroupInfos;
    private final TrackGroupArray trackGroups;

    @Nullable
    private final TransferListener transferListener;
    private ChunkSampleStream<DashChunkSource>[] sampleStreams = u(0);
    private EventSampleStream[] eventSampleStreams = new EventSampleStream[0];
    private final IdentityHashMap<ChunkSampleStream<DashChunkSource>, PlayerEmsgHandler.PlayerTrackEmsgHandler> trackEmsgHandlerBySampleStream = new IdentityHashMap<>();

    private static final class TrackGroupInfo {
        private static final int CATEGORY_EMBEDDED = 1;
        private static final int CATEGORY_MANIFEST_EVENTS = 2;
        private static final int CATEGORY_PRIMARY = 0;
        public final int[] adaptationSetIndices;
        public final int embeddedClosedCaptionTrackGroupIndex;
        public final int embeddedEventMessageTrackGroupIndex;
        public final int eventStreamGroupIndex;
        public final int primaryTrackGroupIndex;
        public final int trackGroupCategory;
        public final int trackType;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface TrackGroupCategory {
        }

        public static TrackGroupInfo a(int[] iArr, int i10) {
            return new TrackGroupInfo(3, 1, iArr, i10, -1, -1, -1);
        }

        public static TrackGroupInfo b(int[] iArr, int i10) {
            return new TrackGroupInfo(5, 1, iArr, i10, -1, -1, -1);
        }

        public static TrackGroupInfo c(int i10) {
            return new TrackGroupInfo(5, 2, new int[0], -1, -1, -1, i10);
        }

        public static TrackGroupInfo d(int i10, int[] iArr, int i11, int i12, int i13) {
            return new TrackGroupInfo(i10, 0, iArr, i11, i12, i13, -1);
        }

        private TrackGroupInfo(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15) {
            this.trackType = i10;
            this.adaptationSetIndices = iArr;
            this.trackGroupCategory = i11;
            this.primaryTrackGroupIndex = i12;
            this.embeddedEventMessageTrackGroupIndex = i13;
            this.embeddedClosedCaptionTrackGroupIndex = i14;
            this.eventStreamGroupIndex = i15;
        }
    }

    public DashMediaPeriod(int i10, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i11, DashChunkSource.Factory factory, @Nullable TransferListener transferListener, @Nullable CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, long j6, LoaderErrorThrower loaderErrorThrower, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback, PlayerId playerId) {
        this.id = i10;
        this.manifest = dashManifest;
        this.baseUrlExclusionList = baseUrlExclusionList;
        this.periodIndex = i11;
        this.chunkSourceFactory = factory;
        this.transferListener = transferListener;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.elapsedRealtimeOffsetMs = j6;
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.playerId = playerId;
        this.playerEmsgHandler = new PlayerEmsgHandler(dashManifest, playerEmsgCallback, allocator);
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.a(this.sampleStreams);
        Period periodC = dashManifest.c(i11);
        List<EventStream> list = periodC.eventStreams;
        this.eventStreams = list;
        Pair<TrackGroupArray, TrackGroupInfo[]> pairK = k(drmSessionManager, periodC.adaptationSets, list);
        this.trackGroups = (TrackGroupArray) pairK.first;
        this.trackGroupInfos = (TrackGroupInfo[]) pairK.second;
    }

    private void A(ExoTrackSelection[] exoTrackSelectionArr, SampleStream[] sampleStreamArr, boolean[] zArr, long j6, int[] iArr) {
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i10];
            if (exoTrackSelection != null) {
                SampleStream sampleStream = sampleStreamArr[i10];
                if (sampleStream == null) {
                    zArr[i10] = true;
                    TrackGroupInfo trackGroupInfo = this.trackGroupInfos[iArr[i10]];
                    int i11 = trackGroupInfo.trackGroupCategory;
                    if (i11 == 0) {
                        sampleStreamArr[i10] = j(trackGroupInfo, exoTrackSelection, j6);
                    } else if (i11 == 2) {
                        sampleStreamArr[i10] = new EventSampleStream(this.eventStreams.get(trackGroupInfo.eventStreamGroupIndex), exoTrackSelection.getTrackGroup().c(0), this.manifest.dynamic);
                    }
                } else if (sampleStream instanceof ChunkSampleStream) {
                    ((DashChunkSource) ((ChunkSampleStream) sampleStream).n()).b(exoTrackSelection);
                }
            }
        }
        for (int i12 = 0; i12 < exoTrackSelectionArr.length; i12++) {
            if (sampleStreamArr[i12] == null && exoTrackSelectionArr[i12] != null) {
                TrackGroupInfo trackGroupInfo2 = this.trackGroupInfos[iArr[i12]];
                if (trackGroupInfo2.trackGroupCategory == 1) {
                    int iQ = q(i12, iArr);
                    if (iQ == -1) {
                        sampleStreamArr[i12] = new EmptySampleStream();
                    } else {
                        sampleStreamArr[i12] = ((ChunkSampleStream) sampleStreamArr[iQ]).D(j6, trackGroupInfo2.trackType);
                    }
                }
            }
        }
    }

    private static void h(List<EventStream> list, TrackGroup[] trackGroupArr, TrackGroupInfo[] trackGroupInfoArr, int i10) {
        int i11 = 0;
        while (i11 < list.size()) {
            EventStream eventStream = list.get(i11);
            trackGroupArr[i10] = new TrackGroup(eventStream.a() + ":" + i11, new Format.Builder().U(eventStream.a()).g0("application/x-emsg").G());
            trackGroupInfoArr[i10] = TrackGroupInfo.c(i11);
            i11++;
            i10++;
        }
    }

    @Nullable
    private static Descriptor m(List<Descriptor> list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Descriptor descriptor = list.get(i10);
            if (str.equals(descriptor.schemeIdUri)) {
                return descriptor;
            }
        }
        return null;
    }

    private static Format[] o(List<AdaptationSet> list, int[] iArr) {
        for (int i10 : iArr) {
            AdaptationSet adaptationSet = list.get(i10);
            List<Descriptor> list2 = list.get(i10).accessibilityDescriptors;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                Descriptor descriptor = list2.get(i11);
                if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri)) {
                    return w(descriptor, CEA608_SERVICE_DESCRIPTOR_REGEX, new Format.Builder().g0("application/cea-608").U(adaptationSet.id + ":cea608").G());
                }
                if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri)) {
                    return w(descriptor, CEA708_SERVICE_DESCRIPTOR_REGEX, new Format.Builder().g0("application/cea-708").U(adaptationSet.id + ":cea708").G());
                }
            }
        }
        return new Format[0];
    }

    private int[] r(ExoTrackSelection[] exoTrackSelectionArr) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i10];
            if (exoTrackSelection != null) {
                iArr[i10] = this.trackGroups.c(exoTrackSelection.getTrackGroup());
            } else {
                iArr[i10] = -1;
            }
        }
        return iArr;
    }

    private static boolean s(List<AdaptationSet> list, int[] iArr) {
        for (int i10 : iArr) {
            List<Representation> list2 = list.get(i10).representations;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (!list2.get(i11).inbandEventStreams.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int t(int i10, List<AdaptationSet> list, int[][] iArr, boolean[] zArr, Format[][] formatArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (s(list, iArr[i12])) {
                zArr[i12] = true;
                i11++;
            }
            Format[] formatArrO = o(list, iArr[i12]);
            formatArr[i12] = formatArrO;
            if (formatArrO.length != 0) {
                i11++;
            }
        }
        return i11;
    }

    private void y(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr) {
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            if (exoTrackSelectionArr[i10] == null || !zArr[i10]) {
                SampleStream sampleStream = sampleStreamArr[i10];
                if (sampleStream instanceof ChunkSampleStream) {
                    ((ChunkSampleStream) sampleStream).A(this);
                } else if (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream) {
                    ((ChunkSampleStream.EmbeddedSampleStream) sampleStream).c();
                }
                sampleStreamArr[i10] = null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0031  */
    private void z(ExoTrackSelection[] exoTrackSelectionArr, SampleStream[] sampleStreamArr, int[] iArr) {
        SampleStream sampleStream;
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            SampleStream sampleStream2 = sampleStreamArr[i10];
            if ((sampleStream2 instanceof EmptySampleStream) || (sampleStream2 instanceof ChunkSampleStream.EmbeddedSampleStream)) {
                int iQ = q(i10, iArr);
                if (iQ != -1) {
                    SampleStream sampleStream3 = sampleStreamArr[i10];
                    if (!(sampleStream3 instanceof ChunkSampleStream.EmbeddedSampleStream) || ((ChunkSampleStream.EmbeddedSampleStream) sampleStream3).parent != sampleStreamArr[iQ]) {
                        sampleStream = sampleStreamArr[i10];
                        if (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream) {
                            ((ChunkSampleStream.EmbeddedSampleStream) sampleStream).c();
                        }
                        sampleStreamArr[i10] = null;
                    }
                } else if (!(sampleStreamArr[i10] instanceof EmptySampleStream)) {
                    sampleStream = sampleStreamArr[i10];
                    if (sampleStream instanceof ChunkSampleStream.EmbeddedSampleStream) {
                        ((ChunkSampleStream.EmbeddedSampleStream) sampleStream).c();
                    }
                    sampleStreamArr[i10] = null;
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkSampleStream.ReleaseCallback
    public synchronized void b(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandlerRemove = this.trackEmsgHandlerBySampleStream.remove(chunkSampleStream);
        if (playerTrackEmsgHandlerRemove != null) {
            playerTrackEmsgHandlerRemove.n();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    private static int i(DrmSessionManager drmSessionManager, List<AdaptationSet> list, int[][] iArr, int i10, boolean[] zArr, Format[][] formatArr, TrackGroup[] trackGroupArr, TrackGroupInfo[] trackGroupInfoArr) {
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i10) {
            int[] iArr2 = iArr[i13];
            ArrayList arrayList = new ArrayList();
            for (int i15 : iArr2) {
                arrayList.addAll(list.get(i15).representations);
            }
            int size = arrayList.size();
            Format[] formatArr2 = new Format[size];
            for (int i16 = 0; i16 < size; i16++) {
                Format format = ((Representation) arrayList.get(i16)).format;
                formatArr2[i16] = format.c(drmSessionManager.a(format));
            }
            AdaptationSet adaptationSet = list.get(iArr2[0]);
            long j6 = adaptationSet.id;
            String string = j6 != -1 ? Long.toString(j6) : "unset:" + i13;
            int i17 = i14 + 1;
            if (zArr[i13]) {
                i11 = i14 + 2;
            } else {
                i11 = i17;
                i17 = -1;
            }
            if (formatArr[i13].length != 0) {
                i12 = i11 + 1;
            } else {
                i12 = i11;
                i11 = -1;
            }
            trackGroupArr[i14] = new TrackGroup(string, formatArr2);
            trackGroupInfoArr[i14] = TrackGroupInfo.d(adaptationSet.type, iArr2, i14, i17, i11);
            if (i17 != -1) {
                String str = string + ":emsg";
                trackGroupArr[i17] = new TrackGroup(str, new Format.Builder().U(str).g0("application/x-emsg").G());
                trackGroupInfoArr[i17] = TrackGroupInfo.b(iArr2, i14);
            }
            if (i11 != -1) {
                trackGroupArr[i11] = new TrackGroup(string + ":cc", formatArr[i13]);
                trackGroupInfoArr[i11] = TrackGroupInfo.a(iArr2, i14);
            }
            i13++;
            i14 = i12;
        }
        return i14;
    }

    private ChunkSampleStream<DashChunkSource> j(TrackGroupInfo trackGroupInfo, ExoTrackSelection exoTrackSelection, long j6) {
        int i10;
        TrackGroup trackGroupB;
        TrackGroup trackGroupB2;
        int i11;
        int i12 = trackGroupInfo.embeddedEventMessageTrackGroupIndex;
        boolean z6 = i12 != -1;
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandlerK = null;
        if (z6) {
            trackGroupB = this.trackGroups.b(i12);
            i10 = 1;
        } else {
            i10 = 0;
            trackGroupB = null;
        }
        int i13 = trackGroupInfo.embeddedClosedCaptionTrackGroupIndex;
        boolean z10 = i13 != -1;
        if (z10) {
            trackGroupB2 = this.trackGroups.b(i13);
            i10 += trackGroupB2.length;
        } else {
            trackGroupB2 = null;
        }
        Format[] formatArr = new Format[i10];
        int[] iArr = new int[i10];
        if (z6) {
            formatArr[0] = trackGroupB.c(0);
            iArr[0] = 5;
            i11 = 1;
        } else {
            i11 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (z10) {
            for (int i14 = 0; i14 < trackGroupB2.length; i14++) {
                Format formatC = trackGroupB2.c(i14);
                formatArr[i11] = formatC;
                iArr[i11] = 3;
                arrayList.add(formatC);
                i11++;
            }
        }
        if (this.manifest.dynamic && z6) {
            playerTrackEmsgHandlerK = this.playerEmsgHandler.k();
        }
        PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = playerTrackEmsgHandlerK;
        ChunkSampleStream<DashChunkSource> chunkSampleStream = new ChunkSampleStream<>(trackGroupInfo.trackType, iArr, formatArr, this.chunkSourceFactory.a(this.manifestLoaderErrorThrower, this.manifest, this.baseUrlExclusionList, this.periodIndex, trackGroupInfo.adaptationSetIndices, exoTrackSelection, trackGroupInfo.trackType, this.elapsedRealtimeOffsetMs, z6, arrayList, playerTrackEmsgHandler, this.transferListener, this.playerId, this.cmcdConfiguration), this, this.allocator, j6, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.mediaSourceEventDispatcher);
        synchronized (this) {
            this.trackEmsgHandlerBySampleStream.put(chunkSampleStream, playerTrackEmsgHandler);
        }
        return chunkSampleStream;
    }

    @Nullable
    private static Descriptor l(List<Descriptor> list) {
        return m(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    @Nullable
    private static Descriptor n(List<Descriptor> list) {
        return m(list, "http://dashif.org/guidelines/trickmode");
    }

    private int q(int i10, int[] iArr) {
        int i11 = iArr[i10];
        if (i11 == -1) {
            return -1;
        }
        int i12 = this.trackGroupInfos[i11].primaryTrackGroupIndex;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            if (i14 == i12 && this.trackGroupInfos[i14].trackGroupCategory == 0) {
                return i13;
            }
        }
        return -1;
    }

    private static ChunkSampleStream<DashChunkSource>[] u(int i10) {
        return new ChunkSampleStream[i10];
    }

    private static Format[] w(Descriptor descriptor, Pattern pattern, Format format) {
        String str = descriptor.value;
        if (str == null) {
            return new Format[]{format};
        }
        String[] strArrD1 = Util.d1(str, ";");
        Format[] formatArr = new Format[strArrD1.length];
        for (int i10 = 0; i10 < strArrD1.length; i10++) {
            Matcher matcher = pattern.matcher(strArrD1[i10]);
            if (!matcher.matches()) {
                return new Format[]{format};
            }
            int i11 = Integer.parseInt(matcher.group(1));
            formatArr[i10] = format.b().U(format.id + ":" + i11).H(i11).X(matcher.group(2)).G();
        }
        return formatArr;
    }

    public void B(DashManifest dashManifest, int i10) {
        this.manifest = dashManifest;
        this.periodIndex = i10;
        this.playerEmsgHandler.q(dashManifest);
        ChunkSampleStream<DashChunkSource>[] chunkSampleStreamArr = this.sampleStreams;
        if (chunkSampleStreamArr != null) {
            for (ChunkSampleStream<DashChunkSource> chunkSampleStream : chunkSampleStreamArr) {
                ((DashChunkSource) chunkSampleStream.n()).f(dashManifest, i10);
            }
            this.callback.f(this);
        }
        this.eventStreams = dashManifest.c(i10).eventStreams;
        for (EventSampleStream eventSampleStream : this.eventSampleStreams) {
            for (EventStream eventStream : this.eventStreams) {
                if (eventStream.a().equals(eventSampleStream.a())) {
                    eventSampleStream.d(eventStream, dashManifest.dynamic && i10 == dashManifest.d() - 1);
                    break;
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.a(j6, seekParameters);
            }
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        return this.compositeSequenceableLoader.continueLoading(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.discardBuffer(j6, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        this.callback = callback;
        callback.d(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        this.compositeSequenceableLoader.reevaluateBuffer(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.C(j6);
        }
        for (EventSampleStream eventSampleStream : this.eventSampleStreams) {
            eventSampleStream.c(j6);
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public void f(ChunkSampleStream<DashChunkSource> chunkSampleStream) {
        this.callback.f(this);
    }

    public void x() {
        this.playerEmsgHandler.o();
        for (ChunkSampleStream<DashChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.A(this);
        }
        this.callback = null;
    }

    private static Pair<TrackGroupArray, TrackGroupInfo[]> k(DrmSessionManager drmSessionManager, List<AdaptationSet> list, List<EventStream> list2) {
        int[][] iArrP = p(list);
        int length = iArrP.length;
        boolean[] zArr = new boolean[length];
        Format[][] formatArr = new Format[length][];
        int iT = t(length, list, iArrP, zArr, formatArr) + length + list2.size();
        TrackGroup[] trackGroupArr = new TrackGroup[iT];
        TrackGroupInfo[] trackGroupInfoArr = new TrackGroupInfo[iT];
        h(list2, trackGroupArr, trackGroupInfoArr, i(drmSessionManager, list, iArrP, length, zArr, formatArr, trackGroupArr, trackGroupInfoArr));
        return Pair.create(new TrackGroupArray(trackGroupArr), trackGroupInfoArr);
    }

    private static int[][] p(List<AdaptationSet> list) {
        int iMin;
        Descriptor descriptorL;
        Integer num;
        int size = list.size();
        HashMap mapG = l0.g(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            mapG.put(Long.valueOf(list.get(i10).id), Integer.valueOf(i10));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i10));
            arrayList.add(arrayList2);
            sparseArray.put(i10, arrayList2);
        }
        for (int i11 = 0; i11 < size; i11++) {
            AdaptationSet adaptationSet = list.get(i11);
            Descriptor descriptorN = n(adaptationSet.essentialProperties);
            if (descriptorN == null) {
                descriptorN = n(adaptationSet.supplementalProperties);
            }
            if (descriptorN != null && (num = (Integer) mapG.get(Long.valueOf(Long.parseLong(descriptorN.value)))) != null) {
                iMin = num.intValue();
            } else {
                iMin = i11;
            }
            if (iMin == i11 && (descriptorL = l(adaptationSet.supplementalProperties)) != null) {
                for (String str : Util.d1(descriptorL.value, ",")) {
                    Integer num2 = (Integer) mapG.get(Long.valueOf(Long.parseLong(str)));
                    if (num2 != null) {
                        iMin = Math.min(iMin, num2.intValue());
                    }
                }
            }
            if (iMin != i11) {
                List list2 = (List) sparseArray.get(i11);
                List list3 = (List) sparseArray.get(iMin);
                list3.addAll(list2);
                sparseArray.put(i11, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2][];
        for (int i12 = 0; i12 < size2; i12++) {
            int[] iArrL = e.l((Collection) arrayList.get(i12));
            iArr[i12] = iArrL;
            Arrays.sort(iArrL);
        }
        return iArr;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        int[] iArrR = r(exoTrackSelectionArr);
        y(exoTrackSelectionArr, zArr, sampleStreamArr);
        z(exoTrackSelectionArr, sampleStreamArr, iArrR);
        A(exoTrackSelectionArr, sampleStreamArr, zArr2, j6, iArrR);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream instanceof ChunkSampleStream) {
                arrayList.add((ChunkSampleStream) sampleStream);
            } else if (sampleStream instanceof EventSampleStream) {
                arrayList2.add((EventSampleStream) sampleStream);
            }
        }
        ChunkSampleStream<DashChunkSource>[] chunkSampleStreamArrU = u(arrayList.size());
        this.sampleStreams = chunkSampleStreamArrU;
        arrayList.toArray(chunkSampleStreamArrU);
        EventSampleStream[] eventSampleStreamArr = new EventSampleStream[arrayList2.size()];
        this.eventSampleStreams = eventSampleStreamArr;
        arrayList2.toArray(eventSampleStreamArr);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.a(this.sampleStreams);
        return j6;
    }
}
