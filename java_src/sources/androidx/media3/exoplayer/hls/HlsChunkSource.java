package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.DataChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.google.common.collect.a0;
import com.google.common.collect.b0;
import com.google.common.collect.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class HlsChunkSource {
    public static final int CHUNK_PUBLICATION_STATE_PRELOAD = 0;
    public static final int CHUNK_PUBLICATION_STATE_PUBLISHED = 1;
    public static final int CHUNK_PUBLICATION_STATE_REMOVED = 2;
    private static final int KEY_CACHE_SIZE = 4;

    @Nullable
    private final CmcdConfiguration cmcdConfiguration;
    private final DataSource encryptionDataSource;

    @Nullable
    private Uri expectedPlaylistUrl;
    private final HlsExtractorFactory extractorFactory;

    @Nullable
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isPrimaryTimestampSource;
    private final DataSource mediaDataSource;

    @Nullable
    private final List<Format> muxedCaptionFormats;
    private final PlayerId playerId;
    private final Format[] playlistFormats;
    private final HlsPlaylistTracker playlistTracker;
    private final Uri[] playlistUrls;
    private boolean seenExpectedPlaylistError;
    private final long timestampAdjusterInitializationTimeoutMs;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private ExoTrackSelection trackSelection;
    private final FullSegmentEncryptionKeyCache keyCache = new FullSegmentEncryptionKeyCache(4);
    private byte[] scratchSpace = Util.EMPTY_BYTE_ARRAY;
    private long liveEdgeInPeriodTimeUs = -9223372036854775807L;

    private Pair<Long, Integer> g(@Nullable HlsMediaChunk hlsMediaChunk, boolean z6, HlsMediaPlaylist hlsMediaPlaylist, long j6, long j10) {
        int i10 = -1;
        if (hlsMediaChunk != null && !z6) {
            if (!hlsMediaChunk.f()) {
                return new Pair<>(Long.valueOf(hlsMediaChunk.chunkIndex), Integer.valueOf(hlsMediaChunk.partIndex));
            }
            Long lValueOf = Long.valueOf(hlsMediaChunk.partIndex == -1 ? hlsMediaChunk.e() : hlsMediaChunk.chunkIndex);
            int i11 = hlsMediaChunk.partIndex;
            return new Pair<>(lValueOf, Integer.valueOf(i11 != -1 ? i11 + 1 : -1));
        }
        long j11 = hlsMediaPlaylist.durationUs + j6;
        if (hlsMediaChunk != null && !this.independentSegments) {
            j10 = hlsMediaChunk.startTimeUs;
        }
        if (!hlsMediaPlaylist.hasEndTag && j10 >= j11) {
            return new Pair<>(Long.valueOf(hlsMediaPlaylist.mediaSequence + ((long) hlsMediaPlaylist.segments.size())), -1);
        }
        long j12 = j10 - j6;
        int iG = Util.g(hlsMediaPlaylist.segments, Long.valueOf(j12), true, !this.playlistTracker.i() || hlsMediaChunk == null);
        long j13 = ((long) iG) + hlsMediaPlaylist.mediaSequence;
        if (iG >= 0) {
            HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(iG);
            List<HlsMediaPlaylist.Part> list = j12 < segment.relativeStartTimeUs + segment.durationUs ? segment.parts : hlsMediaPlaylist.trailingParts;
            for (int i12 = 0; i12 < list.size(); i12++) {
                HlsMediaPlaylist.Part part = list.get(i12);
                if (j12 < part.relativeStartTimeUs + part.durationUs) {
                    if (!part.isIndependent) {
                        break;
                    }
                    j13 += list == hlsMediaPlaylist.trailingParts ? 1L : 0L;
                    i10 = i12;
                    break;
                }
            }
        }
        return new Pair<>(Long.valueOf(j13), Integer.valueOf(i10));
    }

    @Nullable
    private Chunk m(@Nullable Uri uri, int i10, boolean z6, @Nullable CmcdHeadersFactory cmcdHeadersFactory) {
        if (uri == null) {
            return null;
        }
        byte[] bArrC = this.keyCache.c(uri);
        if (bArrC != null) {
            this.keyCache.b(uri, bArrC);
            return null;
        }
        b0<String, String> b0VarM = b0.m();
        if (cmcdHeadersFactory != null) {
            if (z6) {
                cmcdHeadersFactory.e(CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT);
            }
            b0VarM = cmcdHeadersFactory.a();
        }
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec.Builder().i(uri).b(1).e(b0VarM).a(), this.playlistFormats[i10], this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.scratchSpace);
    }

    private long t(long j6) {
        long j10 = this.liveEdgeInPeriodTimeUs;
        if (j10 != -9223372036854775807L) {
            return j10 - j6;
        }
        return -9223372036854775807L;
    }

    public TrackGroup k() {
        return this.trackGroup;
    }

    public ExoTrackSelection l() {
        return this.trackSelection;
    }

    public boolean r(Uri uri, long j6) {
        int iIndexOf;
        int i10 = 0;
        while (true) {
            Uri[] uriArr = this.playlistUrls;
            if (i10 >= uriArr.length) {
                i10 = -1;
                break;
            }
            if (uriArr[i10].equals(uri)) {
                break;
            }
            i10++;
        }
        if (i10 == -1 || (iIndexOf = this.trackSelection.indexOf(i10)) == -1) {
            return true;
        }
        this.seenExpectedPlaylistError |= uri.equals(this.expectedPlaylistUrl);
        return j6 == -9223372036854775807L || (this.trackSelection.f(iIndexOf, j6) && this.playlistTracker.j(uri, j6));
    }

    public void s() {
        this.fatalError = null;
    }

    public void u(boolean z6) {
        this.isPrimaryTimestampSource = z6;
    }

    public void v(ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }

    private static final class EncryptionKeyChunk extends DataChunk {
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i10, @Nullable Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i10, obj, bArr);
        }

        @Nullable
        public byte[] h() {
            return this.result;
        }

        @Override // androidx.media3.exoplayer.source.chunk.DataChunk
        protected void e(byte[] bArr, int i10) {
            this.result = Arrays.copyOf(bArr, i10);
        }
    }

    public static final class HlsChunkHolder {

        @Nullable
        public Chunk chunk;
        public boolean endOfStream;

        @Nullable
        public Uri playlistUrl;

        public void a() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }

        public HlsChunkHolder() {
            a();
        }
    }

    @VisibleForTesting
    static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {
        private final String playlistBaseUri;
        private final List<HlsMediaPlaylist.SegmentBase> segmentBases;
        private final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(String str, long j6, List<HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.playlistBaseUri = str;
            this.startOfPlaylistInPeriodUs = j6;
            this.segmentBases = list;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long a() {
            c();
            HlsMediaPlaylist.SegmentBase segmentBase = this.segmentBases.get((int) d());
            return this.startOfPlaylistInPeriodUs + segmentBase.relativeStartTimeUs + segmentBase.durationUs;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public long b() {
            c();
            return this.startOfPlaylistInPeriodUs + this.segmentBases.get((int) d()).relativeStartTimeUs;
        }
    }

    private static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

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
            return 0;
        }

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = h(trackGroup.c(iArr[0]));
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public void i(long j6, long j10, long j11, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (!e(this.selectedIndex, jElapsedRealtime)) {
                return;
            }
            for (int i10 = this.length - 1; i10 >= 0; i10--) {
                if (!e(i10, jElapsedRealtime)) {
                    this.selectedIndex = i10;
                    return;
                }
            }
            throw new IllegalStateException();
        }
    }

    static final class SegmentBaseHolder {
        public final boolean isPreload;
        public final long mediaSequence;
        public final int partIndex;
        public final HlsMediaPlaylist.SegmentBase segmentBase;

        public SegmentBaseHolder(HlsMediaPlaylist.SegmentBase segmentBase, long j6, int i10) {
            boolean z6;
            this.segmentBase = segmentBase;
            this.mediaSequence = j6;
            this.partIndex = i10;
            if ((segmentBase instanceof HlsMediaPlaylist.Part) && ((HlsMediaPlaylist.Part) segmentBase).isPreload) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.isPreload = z6;
        }
    }

    @Nullable
    private static Uri d(HlsMediaPlaylist hlsMediaPlaylist, @Nullable HlsMediaPlaylist.SegmentBase segmentBase) {
        String str;
        if (segmentBase == null || (str = segmentBase.fullSegmentEncryptionKeyUri) == null) {
            return null;
        }
        return UriUtil.e(hlsMediaPlaylist.baseUri, str);
    }

    private boolean e() {
        Format formatC = this.trackGroup.c(this.trackSelection.getSelectedIndex());
        return (MimeTypes.c(formatC.codecs) == null || MimeTypes.n(formatC.codecs) == null) ? false : true;
    }

    @Nullable
    private static SegmentBaseHolder h(HlsMediaPlaylist hlsMediaPlaylist, long j6, int i10) {
        int i11 = (int) (j6 - hlsMediaPlaylist.mediaSequence);
        if (i11 == hlsMediaPlaylist.segments.size()) {
            if (i10 == -1) {
                i10 = 0;
            }
            if (i10 < hlsMediaPlaylist.trailingParts.size()) {
                return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(i10), j6, i10);
            }
            return null;
        }
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i11);
        if (i10 == -1) {
            return new SegmentBaseHolder(segment, j6, -1);
        }
        if (i10 < segment.parts.size()) {
            return new SegmentBaseHolder(segment.parts.get(i10), j6, i10);
        }
        int i12 = i11 + 1;
        if (i12 < hlsMediaPlaylist.segments.size()) {
            return new SegmentBaseHolder(hlsMediaPlaylist.segments.get(i12), j6 + 1, -1);
        }
        if (hlsMediaPlaylist.trailingParts.isEmpty()) {
            return null;
        }
        return new SegmentBaseHolder(hlsMediaPlaylist.trailingParts.get(0), j6 + 1, 0);
    }

    @VisibleForTesting
    static List<HlsMediaPlaylist.SegmentBase> j(HlsMediaPlaylist hlsMediaPlaylist, long j6, int i10) {
        int i11 = (int) (j6 - hlsMediaPlaylist.mediaSequence);
        if (i11 < 0 || hlsMediaPlaylist.segments.size() < i11) {
            return a0.x();
        }
        ArrayList arrayList = new ArrayList();
        if (i11 < hlsMediaPlaylist.segments.size()) {
            if (i10 != -1) {
                HlsMediaPlaylist.Segment segment = hlsMediaPlaylist.segments.get(i11);
                if (i10 == 0) {
                    arrayList.add(segment);
                } else if (i10 < segment.parts.size()) {
                    List<HlsMediaPlaylist.Part> list = segment.parts;
                    arrayList.addAll(list.subList(i10, list.size()));
                }
                i11++;
            }
            List<HlsMediaPlaylist.Segment> list2 = hlsMediaPlaylist.segments;
            arrayList.addAll(list2.subList(i11, list2.size()));
            i10 = 0;
        }
        if (hlsMediaPlaylist.partTargetDurationUs != -9223372036854775807L) {
            int i12 = i10 != -1 ? i10 : 0;
            if (i12 < hlsMediaPlaylist.trailingParts.size()) {
                List<HlsMediaPlaylist.Part> list3 = hlsMediaPlaylist.trailingParts;
                arrayList.addAll(list3.subList(i12, list3.size()));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private void x(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? -9223372036854775807L : hlsMediaPlaylist.d() - this.playlistTracker.a();
    }

    public MediaChunkIterator[] a(@Nullable HlsMediaChunk hlsMediaChunk, long j6) {
        int i10;
        int iD = hlsMediaChunk == null ? -1 : this.trackGroup.d(hlsMediaChunk.trackFormat);
        int length = this.trackSelection.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        boolean z6 = false;
        int i11 = 0;
        while (i11 < length) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i11);
            Uri uri = this.playlistUrls[indexInTrackGroup];
            if (this.playlistTracker.h(uri)) {
                HlsMediaPlaylist hlsMediaPlaylistL = this.playlistTracker.l(uri, z6);
                Assertions.e(hlsMediaPlaylistL);
                long jA = hlsMediaPlaylistL.startTimeUs - this.playlistTracker.a();
                i10 = i11;
                Pair<Long, Integer> pairG = g(hlsMediaChunk, indexInTrackGroup != iD ? true : z6, hlsMediaPlaylistL, jA, j6);
                mediaChunkIteratorArr[i10] = new HlsMediaPlaylistSegmentIterator(hlsMediaPlaylistL.baseUri, jA, j(hlsMediaPlaylistL, ((Long) pairG.first).longValue(), ((Integer) pairG.second).intValue()));
            } else {
                mediaChunkIteratorArr[i11] = MediaChunkIterator.EMPTY;
                i10 = i11;
            }
            i11 = i10 + 1;
            z6 = false;
        }
        return mediaChunkIteratorArr;
    }

    public long b(long j6, SeekParameters seekParameters) {
        int selectedIndex = this.trackSelection.getSelectedIndex();
        Uri[] uriArr = this.playlistUrls;
        HlsMediaPlaylist hlsMediaPlaylistL = (selectedIndex >= uriArr.length || selectedIndex == -1) ? null : this.playlistTracker.l(uriArr[this.trackSelection.getSelectedIndexInTrackGroup()], true);
        if (hlsMediaPlaylistL == null || hlsMediaPlaylistL.segments.isEmpty() || !hlsMediaPlaylistL.hasIndependentSegments) {
            return j6;
        }
        long jA = hlsMediaPlaylistL.startTimeUs - this.playlistTracker.a();
        long j10 = j6 - jA;
        int iG = Util.g(hlsMediaPlaylistL.segments, Long.valueOf(j10), true, true);
        long j11 = hlsMediaPlaylistL.segments.get(iG).relativeStartTimeUs;
        return seekParameters.a(j10, j11, iG != hlsMediaPlaylistL.segments.size() - 1 ? hlsMediaPlaylistL.segments.get(iG + 1).relativeStartTimeUs : j11) + jA;
    }

    public int c(HlsMediaChunk hlsMediaChunk) {
        if (hlsMediaChunk.partIndex == -1) {
            return 1;
        }
        HlsMediaPlaylist hlsMediaPlaylist = (HlsMediaPlaylist) Assertions.e(this.playlistTracker.l(this.playlistUrls[this.trackGroup.d(hlsMediaChunk.trackFormat)], false));
        int i10 = (int) (hlsMediaChunk.chunkIndex - hlsMediaPlaylist.mediaSequence);
        if (i10 < 0) {
            return 1;
        }
        List<HlsMediaPlaylist.Part> list = i10 < hlsMediaPlaylist.segments.size() ? hlsMediaPlaylist.segments.get(i10).parts : hlsMediaPlaylist.trailingParts;
        if (hlsMediaChunk.partIndex >= list.size()) {
            return 2;
        }
        HlsMediaPlaylist.Part part = list.get(hlsMediaChunk.partIndex);
        if (part.isPreload) {
            return 0;
        }
        return Util.c(Uri.parse(UriUtil.d(hlsMediaPlaylist.baseUri, part.url)), hlsMediaChunk.dataSpec.uri) ? 1 : 2;
    }

    public void f(long j6, long j10, List<HlsMediaChunk> list, boolean z6, HlsChunkHolder hlsChunkHolder) {
        HlsMediaPlaylist hlsMediaPlaylist;
        long jA;
        Uri uri;
        int i10;
        CmcdHeadersFactory cmcdHeadersFactoryE;
        HlsMediaChunk hlsMediaChunk = list.isEmpty() ? null : (HlsMediaChunk) h0.e(list);
        int iD = hlsMediaChunk == null ? -1 : this.trackGroup.d(hlsMediaChunk.trackFormat);
        long jMax = j10 - j6;
        long jT = t(j6);
        if (hlsMediaChunk != null && !this.independentSegments) {
            long jB = hlsMediaChunk.b();
            jMax = Math.max(0L, jMax - jB);
            if (jT != -9223372036854775807L) {
                jT = Math.max(0L, jT - jB);
            }
        }
        long j11 = jMax;
        this.trackSelection.i(j6, j11, jT, list, a(hlsMediaChunk, j10));
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z10 = iD != selectedIndexInTrackGroup;
        Uri uri2 = this.playlistUrls[selectedIndexInTrackGroup];
        if (!this.playlistTracker.h(uri2)) {
            hlsChunkHolder.playlistUrl = uri2;
            this.seenExpectedPlaylistError &= uri2.equals(this.expectedPlaylistUrl);
            this.expectedPlaylistUrl = uri2;
            return;
        }
        HlsMediaPlaylist hlsMediaPlaylistL = this.playlistTracker.l(uri2, true);
        Assertions.e(hlsMediaPlaylistL);
        this.independentSegments = hlsMediaPlaylistL.hasIndependentSegments;
        x(hlsMediaPlaylistL);
        long jA2 = hlsMediaPlaylistL.startTimeUs - this.playlistTracker.a();
        Pair<Long, Integer> pairG = g(hlsMediaChunk, z10, hlsMediaPlaylistL, jA2, j10);
        long jLongValue = ((Long) pairG.first).longValue();
        int iIntValue = ((Integer) pairG.second).intValue();
        if (jLongValue >= hlsMediaPlaylistL.mediaSequence || hlsMediaChunk == null || !z10) {
            hlsMediaPlaylist = hlsMediaPlaylistL;
            jA = jA2;
            uri = uri2;
            i10 = selectedIndexInTrackGroup;
        } else {
            Uri uri3 = this.playlistUrls[iD];
            HlsMediaPlaylist hlsMediaPlaylistL2 = this.playlistTracker.l(uri3, true);
            Assertions.e(hlsMediaPlaylistL2);
            jA = hlsMediaPlaylistL2.startTimeUs - this.playlistTracker.a();
            Pair<Long, Integer> pairG2 = g(hlsMediaChunk, false, hlsMediaPlaylistL2, jA, j10);
            jLongValue = ((Long) pairG2.first).longValue();
            iIntValue = ((Integer) pairG2.second).intValue();
            i10 = iD;
            uri = uri3;
            hlsMediaPlaylist = hlsMediaPlaylistL2;
        }
        if (jLongValue < hlsMediaPlaylist.mediaSequence) {
            this.fatalError = new BehindLiveWindowException();
            return;
        }
        SegmentBaseHolder segmentBaseHolderH = h(hlsMediaPlaylist, jLongValue, iIntValue);
        if (segmentBaseHolderH == null) {
            if (!hlsMediaPlaylist.hasEndTag) {
                hlsChunkHolder.playlistUrl = uri;
                this.seenExpectedPlaylistError &= uri.equals(this.expectedPlaylistUrl);
                this.expectedPlaylistUrl = uri;
                return;
            } else {
                if (z6 || hlsMediaPlaylist.segments.isEmpty()) {
                    hlsChunkHolder.endOfStream = true;
                    return;
                }
                segmentBaseHolderH = new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) h0.e(hlsMediaPlaylist.segments), (hlsMediaPlaylist.mediaSequence + ((long) hlsMediaPlaylist.segments.size())) - 1, -1);
            }
        }
        this.seenExpectedPlaylistError = false;
        this.expectedPlaylistUrl = null;
        CmcdConfiguration cmcdConfiguration = this.cmcdConfiguration;
        if (cmcdConfiguration == null) {
            cmcdHeadersFactoryE = null;
        } else {
            cmcdHeadersFactoryE = new CmcdHeadersFactory(cmcdConfiguration, this.trackSelection, j11, CmcdHeadersFactory.STREAMING_FORMAT_HLS, !hlsMediaPlaylist.hasEndTag).e(e() ? CmcdHeadersFactory.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO : CmcdHeadersFactory.c(this.trackSelection));
        }
        Uri uriD = d(hlsMediaPlaylist, segmentBaseHolderH.segmentBase.initializationSegment);
        Chunk chunkM = m(uriD, i10, true, cmcdHeadersFactoryE);
        hlsChunkHolder.chunk = chunkM;
        if (chunkM != null) {
            return;
        }
        Uri uriD2 = d(hlsMediaPlaylist, segmentBaseHolderH.segmentBase);
        Chunk chunkM2 = m(uriD2, i10, false, cmcdHeadersFactoryE);
        hlsChunkHolder.chunk = chunkM2;
        if (chunkM2 != null) {
            return;
        }
        boolean zU = HlsMediaChunk.u(hlsMediaChunk, uri, hlsMediaPlaylist, segmentBaseHolderH, jA);
        if (zU && segmentBaseHolderH.isPreload) {
            return;
        }
        hlsChunkHolder.chunk = HlsMediaChunk.h(this.extractorFactory, this.mediaDataSource, this.playlistFormats[i10], jA, hlsMediaPlaylist, segmentBaseHolderH, uri, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.isPrimaryTimestampSource, this.timestampAdjusterProvider, this.timestampAdjusterInitializationTimeoutMs, hlsMediaChunk, this.keyCache.a(uriD2), this.keyCache.a(uriD), zU, this.playerId, cmcdHeadersFactoryE);
    }

    public int i(long j6, List<? extends MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j6, list);
    }

    public boolean n(Chunk chunk, long j6) {
        ExoTrackSelection exoTrackSelection = this.trackSelection;
        return exoTrackSelection.f(exoTrackSelection.indexOf(this.trackGroup.d(chunk.trackFormat)), j6);
    }

    public void o() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        Uri uri = this.expectedPlaylistUrl;
        if (uri == null || !this.seenExpectedPlaylistError) {
            return;
        }
        this.playlistTracker.e(uri);
    }

    public boolean p(Uri uri) {
        return Util.s(this.playlistUrls, uri);
    }

    public void q(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.f();
            this.keyCache.b(encryptionKeyChunk.dataSpec.uri, (byte[]) Assertions.e(encryptionKeyChunk.h()));
        }
    }

    public boolean w(long j6, Chunk chunk, List<? extends MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.g(j6, chunk, list);
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, @Nullable TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, long j6, @Nullable List<Format> list, PlayerId playerId, @Nullable CmcdConfiguration cmcdConfiguration) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.playlistUrls = uriArr;
        this.playlistFormats = formatArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.timestampAdjusterInitializationTimeoutMs = j6;
        this.muxedCaptionFormats = list;
        this.playerId = playerId;
        this.cmcdConfiguration = cmcdConfiguration;
        DataSource dataSourceA = hlsDataSourceFactory.a(1);
        this.mediaDataSource = dataSourceA;
        if (transferListener != null) {
            dataSourceA.c(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.a(3);
        this.trackGroup = new TrackGroup(formatArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            if ((formatArr[i10].roleFlags & 16384) == 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, com.google.common.primitives.e.l(arrayList));
    }
}
