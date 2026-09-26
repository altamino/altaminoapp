package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class HlsMediaPeriod implements MediaPeriod, HlsPlaylistTracker.PlaylistEventListener {
    private final Allocator allocator;
    private final boolean allowChunklessPreparation;
    private int audioVideoSampleStreamWrapperCount;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final HlsDataSourceFactory dataSourceFactory;
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    private final DrmSessionManager drmSessionManager;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private final HlsExtractorFactory extractorFactory;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;

    @Nullable
    private MediaPeriod.Callback mediaPeriodCallback;

    @Nullable
    private final TransferListener mediaTransferListener;
    private final int metadataType;
    private int pendingPrepareCount;
    private final PlayerId playerId;
    private final HlsPlaylistTracker playlistTracker;
    private final long timestampAdjusterInitializationTimeoutMs;
    private TrackGroupArray trackGroups;
    private final boolean useSessionKeys;
    private final HlsSampleStreamWrapper.Callback sampleStreamWrapperCallback = new SampleStreamWrapperCallback();
    private final IdentityHashMap<SampleStream, Integer> streamWrapperIndices = new IdentityHashMap<>();
    private final TimestampAdjusterProvider timestampAdjusterProvider = new TimestampAdjusterProvider();
    private HlsSampleStreamWrapper[] sampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private HlsSampleStreamWrapper[] enabledSampleStreamWrappers = new HlsSampleStreamWrapper[0];
    private int[][] manifestUrlIndicesPerWrapper = new int[0][];

    private class SampleStreamWrapperCallback implements HlsSampleStreamWrapper.Callback {
        private SampleStreamWrapperCallback() {
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void f(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
            HlsMediaPeriod.this.mediaPeriodCallback.f(HlsMediaPeriod.this);
        }

        @Override // androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback
        public void g(Uri uri) {
            HlsMediaPeriod.this.playlistTracker.g(uri);
        }

        @Override // androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback
        public void onPrepared() {
            if (HlsMediaPeriod.f(HlsMediaPeriod.this) > 0) {
                return;
            }
            int i10 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : HlsMediaPeriod.this.sampleStreamWrappers) {
                i10 += hlsSampleStreamWrapper.getTrackGroups().length;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i10];
            int i11 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper2 : HlsMediaPeriod.this.sampleStreamWrappers) {
                int i12 = hlsSampleStreamWrapper2.getTrackGroups().length;
                int i13 = 0;
                while (i13 < i12) {
                    trackGroupArr[i11] = hlsSampleStreamWrapper2.getTrackGroups().b(i13);
                    i13++;
                    i11++;
                }
            }
            HlsMediaPeriod.this.trackGroups = new TrackGroupArray(trackGroupArr);
            HlsMediaPeriod.this.mediaPeriodCallback.d(HlsMediaPeriod.this);
        }
    }

    public HlsMediaPeriod(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, @Nullable TransferListener transferListener, @Nullable CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z6, int i10, boolean z10, PlayerId playerId, long j6) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.mediaTransferListener = transferListener;
        this.cmcdConfiguration = cmcdConfiguration;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher2;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.allowChunklessPreparation = z6;
        this.metadataType = i10;
        this.useSessionKeys = z10;
        this.playerId = playerId;
        this.timestampAdjusterInitializationTimeoutMs = j6;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.a(new SequenceableLoader[0]);
    }

    private static Format o(Format format, @Nullable Format format2, boolean z6) {
        String strM;
        Metadata metadata;
        int i10;
        String str;
        int i11;
        int i12;
        String str2;
        if (format2 != null) {
            strM = format2.codecs;
            metadata = format2.metadata;
            i11 = format2.channelCount;
            i10 = format2.selectionFlags;
            i12 = format2.roleFlags;
            str = format2.language;
            str2 = format2.label;
        } else {
            strM = Util.M(format.codecs, 1);
            metadata = format.metadata;
            if (z6) {
                i11 = format.channelCount;
                i10 = format.selectionFlags;
                i12 = format.roleFlags;
                str = format.language;
                str2 = format.label;
            } else {
                i10 = 0;
                str = null;
                i11 = -1;
                i12 = 0;
                str2 = null;
            }
        }
        return new Format.Builder().U(format.id).W(str2).M(format.containerMimeType).g0(MimeTypes.g(strM)).K(strM).Z(metadata).I(z6 ? format.averageBitrate : -1).b0(z6 ? format.peakBitrate : -1).J(i11).i0(i10).e0(i12).X(str).G();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    static /* synthetic */ int f(HlsMediaPeriod hlsMediaPeriod) {
        int i10 = hlsMediaPeriod.pendingPrepareCount - 1;
        hlsMediaPeriod.pendingPrepareCount = i10;
        return i10;
    }

    private void k(long j6, List<HlsMultivariantPlaylist.Rendition> list, List<HlsSampleStreamWrapper> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10).name;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z6 = true;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    if (Util.c(str, list.get(i11).name)) {
                        HlsMultivariantPlaylist.Rendition rendition = list.get(i11);
                        arrayList3.add(Integer.valueOf(i11));
                        arrayList.add(rendition.url);
                        arrayList2.add(rendition.format);
                        z6 &= Util.L(rendition.format.codecs, 1) == 1;
                    }
                }
                String str2 = "audio:" + str;
                HlsSampleStreamWrapper hlsSampleStreamWrapperN = n(str2, 1, (Uri[]) arrayList.toArray((Uri[]) Util.k(new Uri[0])), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j6);
                list3.add(com.google.common.primitives.e.l(arrayList3));
                list2.add(hlsSampleStreamWrapperN);
                if (this.allowChunklessPreparation && z6) {
                    hlsSampleStreamWrapperN.P(new TrackGroup[]{new TrackGroup(str2, (Format[]) arrayList2.toArray(new Format[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void l(HlsMultivariantPlaylist hlsMultivariantPlaylist, long j6, List<HlsSampleStreamWrapper> list, List<int[]> list2, Map<String, DrmInitData> map) {
        boolean z6;
        boolean z10;
        int size = hlsMultivariantPlaylist.variants.size();
        int[] iArr = new int[size];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < hlsMultivariantPlaylist.variants.size(); i12++) {
            Format format = hlsMultivariantPlaylist.variants.get(i12).format;
            if (format.height > 0 || Util.M(format.codecs, 2) != null) {
                iArr[i12] = 2;
                i10++;
            } else if (Util.M(format.codecs, 1) != null) {
                iArr[i12] = 1;
                i11++;
            } else {
                iArr[i12] = -1;
            }
        }
        if (i10 > 0) {
            size = i10;
            z6 = true;
            z10 = false;
        } else if (i11 < size) {
            size -= i11;
            z6 = false;
            z10 = true;
        } else {
            z6 = false;
            z10 = false;
        }
        Uri[] uriArr = new Uri[size];
        Format[] formatArr = new Format[size];
        int[] iArr2 = new int[size];
        int i13 = 0;
        for (int i14 = 0; i14 < hlsMultivariantPlaylist.variants.size(); i14++) {
            if ((!z6 || iArr[i14] == 2) && (!z10 || iArr[i14] != 1)) {
                HlsMultivariantPlaylist.Variant variant = hlsMultivariantPlaylist.variants.get(i14);
                uriArr[i13] = variant.url;
                formatArr[i13] = variant.format;
                iArr2[i13] = i14;
                i13++;
            }
        }
        String str = formatArr[0].codecs;
        int iL = Util.L(str, 2);
        int iL2 = Util.L(str, 1);
        boolean z11 = (iL2 == 1 || (iL2 == 0 && hlsMultivariantPlaylist.audios.isEmpty())) && iL <= 1 && iL2 + iL > 0;
        HlsSampleStreamWrapper hlsSampleStreamWrapperN = n("main", (z6 || iL2 <= 0) ? 0 : 1, uriArr, formatArr, hlsMultivariantPlaylist.muxedAudioFormat, hlsMultivariantPlaylist.muxedCaptionFormats, map, j6);
        list.add(hlsSampleStreamWrapperN);
        list2.add(iArr2);
        if (this.allowChunklessPreparation && z11) {
            ArrayList arrayList = new ArrayList();
            if (iL > 0) {
                Format[] formatArr2 = new Format[size];
                for (int i15 = 0; i15 < size; i15++) {
                    formatArr2[i15] = q(formatArr[i15]);
                }
                arrayList.add(new TrackGroup("main", formatArr2));
                if (iL2 > 0 && (hlsMultivariantPlaylist.muxedAudioFormat != null || hlsMultivariantPlaylist.audios.isEmpty())) {
                    arrayList.add(new TrackGroup("main:audio", o(formatArr[0], hlsMultivariantPlaylist.muxedAudioFormat, false)));
                }
                List<Format> list3 = hlsMultivariantPlaylist.muxedCaptionFormats;
                if (list3 != null) {
                    for (int i16 = 0; i16 < list3.size(); i16++) {
                        arrayList.add(new TrackGroup("main:cc:" + i16, list3.get(i16)));
                    }
                }
            } else {
                Format[] formatArr3 = new Format[size];
                for (int i17 = 0; i17 < size; i17++) {
                    formatArr3[i17] = o(formatArr[i17], hlsMultivariantPlaylist.muxedAudioFormat, true);
                }
                arrayList.add(new TrackGroup("main", formatArr3));
            }
            TrackGroup trackGroup = new TrackGroup("main:id3", new Format.Builder().U("ID3").g0("application/id3").G());
            arrayList.add(trackGroup);
            hlsSampleStreamWrapperN.P((TrackGroup[]) arrayList.toArray(new TrackGroup[0]), 0, arrayList.indexOf(trackGroup));
        }
    }

    private void m(long j6) {
        HlsMultivariantPlaylist hlsMultivariantPlaylist = (HlsMultivariantPlaylist) Assertions.e(this.playlistTracker.f());
        Map<String, DrmInitData> mapP = this.useSessionKeys ? p(hlsMultivariantPlaylist.sessionKeyDrmInitData) : Collections.emptyMap();
        int i10 = 1;
        boolean z6 = !hlsMultivariantPlaylist.variants.isEmpty();
        List<HlsMultivariantPlaylist.Rendition> list = hlsMultivariantPlaylist.audios;
        List<HlsMultivariantPlaylist.Rendition> list2 = hlsMultivariantPlaylist.subtitles;
        int i11 = 0;
        this.pendingPrepareCount = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (z6) {
            l(hlsMultivariantPlaylist, j6, arrayList, arrayList2, mapP);
        }
        k(j6, list, arrayList, arrayList2, mapP);
        this.audioVideoSampleStreamWrapperCount = arrayList.size();
        int i12 = 0;
        while (i12 < list2.size()) {
            HlsMultivariantPlaylist.Rendition rendition = list2.get(i12);
            String str = "subtitle:" + i12 + ":" + rendition.name;
            Uri[] uriArr = new Uri[i10];
            uriArr[i11] = rendition.url;
            Format[] formatArr = new Format[i10];
            formatArr[i11] = rendition.format;
            ArrayList arrayList3 = arrayList2;
            int i13 = i12;
            HlsSampleStreamWrapper hlsSampleStreamWrapperN = n(str, 3, uriArr, formatArr, null, Collections.emptyList(), mapP, j6);
            arrayList3.add(new int[]{i13});
            arrayList.add(hlsSampleStreamWrapperN);
            hlsSampleStreamWrapperN.P(new TrackGroup[]{new TrackGroup(str, rendition.format)}, 0, new int[0]);
            i12 = i13 + 1;
            i11 = 0;
            arrayList2 = arrayList3;
            i10 = 1;
        }
        int i14 = i11;
        this.sampleStreamWrappers = (HlsSampleStreamWrapper[]) arrayList.toArray(new HlsSampleStreamWrapper[i14]);
        this.manifestUrlIndicesPerWrapper = (int[][]) arrayList2.toArray(new int[i14][]);
        this.pendingPrepareCount = this.sampleStreamWrappers.length;
        for (int i15 = i14; i15 < this.audioVideoSampleStreamWrapperCount; i15++) {
            this.sampleStreamWrappers[i15].Z(true);
        }
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
        int length = hlsSampleStreamWrapperArr.length;
        for (int i16 = i14; i16 < length; i16++) {
            hlsSampleStreamWrapperArr[i16].l();
        }
        this.enabledSampleStreamWrappers = this.sampleStreamWrappers;
    }

    private HlsSampleStreamWrapper n(String str, int i10, Uri[] uriArr, Format[] formatArr, @Nullable Format format, @Nullable List<Format> list, Map<String, DrmInitData> map, long j6) {
        return new HlsSampleStreamWrapper(str, i10, this.sampleStreamWrapperCallback, new HlsChunkSource(this.extractorFactory, this.playlistTracker, uriArr, formatArr, this.dataSourceFactory, this.mediaTransferListener, this.timestampAdjusterProvider, this.timestampAdjusterInitializationTimeoutMs, list, this.playerId, this.cmcdConfiguration), map, this.allocator, j6, format, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.eventDispatcher, this.metadataType);
    }

    private static Map<String, DrmInitData> p(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap map = new HashMap();
        int i10 = 0;
        while (i10 < arrayList.size()) {
            DrmInitData drmInitDataI = list.get(i10);
            String str = drmInitDataI.schemeType;
            i10++;
            int i11 = i10;
            while (i11 < arrayList.size()) {
                DrmInitData drmInitData = (DrmInitData) arrayList.get(i11);
                if (TextUtils.equals(drmInitData.schemeType, str)) {
                    drmInitDataI = drmInitDataI.i(drmInitData);
                    arrayList.remove(i11);
                } else {
                    i11++;
                }
            }
            map.put(str, drmInitDataI);
        }
        return map;
    }

    private static Format q(Format format) {
        String strM = Util.M(format.codecs, 2);
        return new Format.Builder().U(format.id).W(format.label).M(format.containerMimeType).g0(MimeTypes.g(strM)).K(strM).Z(format.metadata).I(format.averageBitrate).b0(format.peakBitrate).n0(format.width).S(format.height).R(format.frameRate).i0(format.selectionFlags).e0(format.roleFlags).G();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long a(long j6, SeekParameters seekParameters) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            if (hlsSampleStreamWrapper.C()) {
                return hlsSampleStreamWrapper.a(j6, seekParameters);
            }
        }
        return j6;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public void b() {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.N();
        }
        this.mediaPeriodCallback.f(this);
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00df  */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long c(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j6) {
        SampleStream[] sampleStreamArr2 = sampleStreamArr;
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        for (int i10 = 0; i10 < exoTrackSelectionArr.length; i10++) {
            SampleStream sampleStream = sampleStreamArr2[i10];
            iArr[i10] = sampleStream == null ? -1 : this.streamWrapperIndices.get(sampleStream).intValue();
            iArr2[i10] = -1;
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i10];
            if (exoTrackSelection != null) {
                TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                int i11 = 0;
                while (true) {
                    HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.sampleStreamWrappers;
                    if (i11 >= hlsSampleStreamWrapperArr.length) {
                        break;
                    }
                    if (hlsSampleStreamWrapperArr[i11].getTrackGroups().c(trackGroup) != -1) {
                        iArr2[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
        }
        this.streamWrapperIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr3 = new SampleStream[length];
        SampleStream[] sampleStreamArr4 = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[exoTrackSelectionArr.length];
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = new HlsSampleStreamWrapper[this.sampleStreamWrappers.length];
        int i12 = 0;
        int i13 = 0;
        boolean z6 = false;
        while (i13 < this.sampleStreamWrappers.length) {
            for (int i14 = 0; i14 < exoTrackSelectionArr.length; i14++) {
                ExoTrackSelection exoTrackSelection2 = null;
                sampleStreamArr4[i14] = iArr[i14] == i13 ? sampleStreamArr2[i14] : null;
                if (iArr2[i14] == i13) {
                    exoTrackSelection2 = exoTrackSelectionArr[i14];
                }
                exoTrackSelectionArr2[i14] = exoTrackSelection2;
            }
            HlsSampleStreamWrapper hlsSampleStreamWrapper = this.sampleStreamWrappers[i13];
            int i15 = i12;
            int i16 = length;
            int i17 = i13;
            ExoTrackSelection[] exoTrackSelectionArr3 = exoTrackSelectionArr2;
            HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr3 = hlsSampleStreamWrapperArr2;
            boolean zV = hlsSampleStreamWrapper.V(exoTrackSelectionArr2, zArr, sampleStreamArr4, zArr2, j6, z6);
            int i18 = 0;
            boolean z10 = false;
            while (true) {
                if (i18 >= exoTrackSelectionArr.length) {
                    break;
                }
                SampleStream sampleStream2 = sampleStreamArr4[i18];
                if (iArr2[i18] == i17) {
                    Assertions.e(sampleStream2);
                    sampleStreamArr3[i18] = sampleStream2;
                    this.streamWrapperIndices.put(sampleStream2, Integer.valueOf(i17));
                    z10 = true;
                } else if (iArr[i18] == i17) {
                    Assertions.g(sampleStream2 == null);
                }
                i18++;
            }
            if (z10) {
                hlsSampleStreamWrapperArr3[i15] = hlsSampleStreamWrapper;
                i12 = i15 + 1;
                if (i15 == 0) {
                    hlsSampleStreamWrapper.Z(true);
                    if (zV) {
                        this.timestampAdjusterProvider.b();
                        z6 = true;
                    } else {
                        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr4 = this.enabledSampleStreamWrappers;
                        if (hlsSampleStreamWrapperArr4.length == 0 || hlsSampleStreamWrapper != hlsSampleStreamWrapperArr4[0]) {
                            this.timestampAdjusterProvider.b();
                            z6 = true;
                        }
                    }
                } else {
                    hlsSampleStreamWrapper.Z(i17 < this.audioVideoSampleStreamWrapperCount);
                }
            } else {
                i12 = i15;
            }
            i13 = i17 + 1;
            sampleStreamArr2 = sampleStreamArr;
            hlsSampleStreamWrapperArr2 = hlsSampleStreamWrapperArr3;
            length = i16;
            exoTrackSelectionArr2 = exoTrackSelectionArr3;
        }
        System.arraycopy(sampleStreamArr3, 0, sampleStreamArr2, 0, length);
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr5 = (HlsSampleStreamWrapper[]) Util.P0(hlsSampleStreamWrapperArr2, i12);
        this.enabledSampleStreamWrappers = hlsSampleStreamWrapperArr5;
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.a(hlsSampleStreamWrapperArr5);
        return j6;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(long j6) {
        if (this.trackGroups != null) {
            return this.compositeSequenceableLoader.continueLoading(j6);
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.l();
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public boolean d(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6) {
        boolean zM = true;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            zM &= hlsSampleStreamWrapper.M(uri, loadErrorInfo, z6);
        }
        this.mediaPeriodCallback.f(this);
        return zM;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j6, boolean z6) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.enabledSampleStreamWrappers) {
            hlsSampleStreamWrapper.discardBuffer(j6, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void e(MediaPeriod.Callback callback, long j6) {
        this.mediaPeriodCallback = callback;
        this.playlistTracker.c(this);
        m(j6);
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

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.maybeThrowPrepareError();
        }
    }

    public void r() {
        this.playlistTracker.b(this);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.sampleStreamWrappers) {
            hlsSampleStreamWrapper.R();
        }
        this.mediaPeriodCallback = null;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j6) {
        this.compositeSequenceableLoader.reevaluateBuffer(j6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j6) {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.enabledSampleStreamWrappers;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean zU = hlsSampleStreamWrapperArr[0].U(j6, false);
            int i10 = 1;
            while (true) {
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.enabledSampleStreamWrappers;
                if (i10 >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i10].U(j6, zU);
                i10++;
            }
            if (zU) {
                this.timestampAdjusterProvider.b();
            }
        }
        return j6;
    }
}
