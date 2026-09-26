package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UriUtil;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.id3.PrivFrame;
import com.google.common.collect.a0;
import com.google.common.collect.b0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes8.dex */
final class HlsMediaChunk extends MediaChunk {
    public static final String PRIV_TIMESTAMP_FRAME_OWNER = "com.apple.streaming.transportStreamTimestamp";
    private static final AtomicInteger uidSource = new AtomicInteger();
    public final int discontinuitySequenceNumber;

    @Nullable
    private final DrmInitData drmInitData;
    private HlsMediaChunkExtractor extractor;
    private final HlsExtractorFactory extractorFactory;
    private boolean extractorInvalidated;
    private final boolean hasGapTag;
    private final Id3Decoder id3Decoder;
    private boolean initDataLoadRequired;

    @Nullable
    private final DataSource initDataSource;

    @Nullable
    private final DataSpec initDataSpec;
    private final boolean initSegmentEncrypted;
    private final boolean isPrimaryTimestampSource;
    private boolean isPublished;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private final boolean mediaSegmentEncrypted;

    @Nullable
    private final List<Format> muxedCaptionFormats;
    private int nextLoadPosition;
    private HlsSampleStreamWrapper output;
    public final int partIndex;
    private final PlayerId playerId;
    public final Uri playlistUrl;

    @Nullable
    private final HlsMediaChunkExtractor previousExtractor;
    private a0<Integer> sampleQueueFirstSampleIndices;
    private final ParsableByteArray scratchId3Data;
    public final boolean shouldSpliceIn;
    private final TimestampAdjuster timestampAdjuster;
    private final long timestampAdjusterInitializationTimeoutMs;
    public final int uid;

    private HlsMediaChunk(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, Format format, boolean z6, @Nullable DataSource dataSource2, @Nullable DataSpec dataSpec2, boolean z10, Uri uri, @Nullable List<Format> list, int i10, @Nullable Object obj, long j6, long j10, long j11, int i11, boolean z11, int i12, boolean z12, boolean z13, TimestampAdjuster timestampAdjuster, long j12, @Nullable DrmInitData drmInitData, @Nullable HlsMediaChunkExtractor hlsMediaChunkExtractor, Id3Decoder id3Decoder, ParsableByteArray parsableByteArray, boolean z14, PlayerId playerId) {
        super(dataSource, dataSpec, format, i10, obj, j6, j10, j11);
        this.mediaSegmentEncrypted = z6;
        this.partIndex = i11;
        this.isPublished = z11;
        this.discontinuitySequenceNumber = i12;
        this.initDataSpec = dataSpec2;
        this.initDataSource = dataSource2;
        this.initDataLoadRequired = dataSpec2 != null;
        this.initSegmentEncrypted = z10;
        this.playlistUrl = uri;
        this.isPrimaryTimestampSource = z13;
        this.timestampAdjuster = timestampAdjuster;
        this.timestampAdjusterInitializationTimeoutMs = j12;
        this.hasGapTag = z12;
        this.extractorFactory = hlsExtractorFactory;
        this.muxedCaptionFormats = list;
        this.drmInitData = drmInitData;
        this.previousExtractor = hlsMediaChunkExtractor;
        this.id3Decoder = id3Decoder;
        this.scratchId3Data = parsableByteArray;
        this.shouldSpliceIn = z14;
        this.playerId = playerId;
        this.sampleQueueFirstSampleIndices = a0.x();
        this.uid = uidSource.getAndIncrement();
    }

    public static HlsMediaChunk h(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, Format format, long j6, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.SegmentBaseHolder segmentBaseHolder, Uri uri, @Nullable List<Format> list, int i10, @Nullable Object obj, boolean z6, TimestampAdjusterProvider timestampAdjusterProvider, long j10, @Nullable HlsMediaChunk hlsMediaChunk, @Nullable byte[] bArr, @Nullable byte[] bArr2, boolean z10, PlayerId playerId, @Nullable CmcdHeadersFactory cmcdHeadersFactory) {
        DataSpec dataSpecA;
        DataSource dataSourceG;
        boolean z11;
        Id3Decoder id3Decoder;
        ParsableByteArray parsableByteArray;
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        DataSpec dataSpecA2 = new DataSpec.Builder().i(UriUtil.e(hlsMediaPlaylist.baseUri, segmentBase.url)).h(segmentBase.byteRangeOffset).g(segmentBase.byteRangeLength).b(segmentBaseHolder.isPreload ? 8 : 0).e(cmcdHeadersFactory == null ? b0.m() : cmcdHeadersFactory.d(segmentBase.durationUs).a()).a();
        boolean z12 = bArr != null;
        DataSource dataSourceG2 = g(dataSource, bArr, z12 ? j((String) Assertions.e(segmentBase.encryptionIV)) : null);
        HlsMediaPlaylist.Segment segment = segmentBase.initializationSegment;
        if (segment != null) {
            boolean z13 = bArr2 != null;
            byte[] bArrJ = z13 ? j((String) Assertions.e(segment.encryptionIV)) : null;
            dataSpecA = new DataSpec.Builder().i(UriUtil.e(hlsMediaPlaylist.baseUri, segment.url)).h(segment.byteRangeOffset).g(segment.byteRangeLength).e(cmcdHeadersFactory == null ? b0.m() : cmcdHeadersFactory.e(CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT).a()).a();
            dataSourceG = g(dataSource, bArr2, bArrJ);
            z11 = z13;
        } else {
            dataSpecA = null;
            dataSourceG = null;
            z11 = false;
        }
        long j11 = j6 + segmentBase.relativeStartTimeUs;
        long j12 = j11 + segmentBase.durationUs;
        int i11 = hlsMediaPlaylist.discontinuitySequence + segmentBase.relativeDiscontinuitySequence;
        if (hlsMediaChunk != null) {
            DataSpec dataSpec = hlsMediaChunk.initDataSpec;
            boolean z14 = dataSpecA == dataSpec || (dataSpecA != null && dataSpec != null && dataSpecA.uri.equals(dataSpec.uri) && dataSpecA.position == hlsMediaChunk.initDataSpec.position);
            boolean z15 = uri.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted;
            id3Decoder = hlsMediaChunk.id3Decoder;
            parsableByteArray = hlsMediaChunk.scratchId3Data;
            hlsMediaChunkExtractor = (z14 && z15 && !hlsMediaChunk.extractorInvalidated && hlsMediaChunk.discontinuitySequenceNumber == i11) ? hlsMediaChunk.extractor : null;
        } else {
            id3Decoder = new Id3Decoder();
            parsableByteArray = new ParsableByteArray(10);
            hlsMediaChunkExtractor = null;
        }
        return new HlsMediaChunk(hlsExtractorFactory, dataSourceG2, dataSpecA2, format, z12, dataSourceG, dataSpecA, z11, uri, list, i10, obj, j11, j12, segmentBaseHolder.mediaSequence, segmentBaseHolder.partIndex, !segmentBaseHolder.isPreload, i11, segmentBase.hasGapTag, z6, timestampAdjusterProvider.a(i11), j10, segmentBase.drmInitData, hlsMediaChunkExtractor, id3Decoder, parsableByteArray, z10, playerId);
    }

    private void i(DataSource dataSource, DataSpec dataSpec, boolean z6, boolean z10) throws IOException {
        DataSpec dataSpecE;
        long position;
        long j6;
        boolean z11 = false;
        if (z6) {
            z11 = this.nextLoadPosition != 0;
            dataSpecE = dataSpec;
        } else {
            dataSpecE = dataSpec.e(this.nextLoadPosition);
        }
        try {
            DefaultExtractorInput defaultExtractorInputS = s(dataSource, dataSpecE, z10);
            if (z11) {
                defaultExtractorInputS.skipFully(this.nextLoadPosition);
            }
            while (!this.loadCanceled && this.extractor.a(defaultExtractorInputS)) {
                try {
                    try {
                    } catch (EOFException e) {
                        if ((this.trackFormat.roleFlags & 16384) == 0) {
                            throw e;
                        }
                        this.extractor.c();
                        position = defaultExtractorInputS.getPosition();
                        j6 = dataSpec.position;
                    }
                } catch (Throwable th) {
                    this.nextLoadPosition = (int) (defaultExtractorInputS.getPosition() - dataSpec.position);
                    throw th;
                }
            }
            position = defaultExtractorInputS.getPosition();
            j6 = dataSpec.position;
            this.nextLoadPosition = (int) (position - j6);
            DataSourceUtil.a(dataSource);
        } catch (Throwable th2) {
            DataSourceUtil.a(dataSource);
            throw th2;
        }
    }

    public static boolean u(@Nullable HlsMediaChunk hlsMediaChunk, Uri uri, HlsMediaPlaylist hlsMediaPlaylist, HlsChunkSource.SegmentBaseHolder segmentBaseHolder, long j6) {
        if (hlsMediaChunk == null) {
            return false;
        }
        if (uri.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted) {
            return false;
        }
        return !n(segmentBaseHolder, hlsMediaPlaylist) || j6 + segmentBaseHolder.segmentBase.relativeStartTimeUs < hlsMediaChunk.endTimeUs;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean f() {
        return this.loadCompleted;
    }

    public void l(HlsSampleStreamWrapper hlsSampleStreamWrapper, a0<Integer> a0Var) {
        this.output = hlsSampleStreamWrapper;
        this.sampleQueueFirstSampleIndices = a0Var;
    }

    public void m() {
        this.extractorInvalidated = true;
    }

    public boolean o() {
        return this.isPublished;
    }

    public void t() {
        this.isPublished = true;
    }

    private static DataSource g(DataSource dataSource, @Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return dataSource;
        }
        Assertions.e(bArr2);
        return new Aes128DataSource(dataSource, bArr, bArr2);
    }

    private static boolean n(HlsChunkSource.SegmentBaseHolder segmentBaseHolder, HlsMediaPlaylist hlsMediaPlaylist) {
        HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        if (segmentBase instanceof HlsMediaPlaylist.Part) {
            return ((HlsMediaPlaylist.Part) segmentBase).isIndependent || (segmentBaseHolder.partIndex == 0 && hlsMediaPlaylist.hasIndependentSegments);
        }
        return hlsMediaPlaylist.hasIndependentSegments;
    }

    private void p() throws IOException {
        i(this.dataSource, this.dataSpec, this.mediaSegmentEncrypted, true);
    }

    private void q() throws IOException {
        if (this.initDataLoadRequired) {
            Assertions.e(this.initDataSource);
            Assertions.e(this.initDataSpec);
            i(this.initDataSource, this.initDataSpec, this.initSegmentEncrypted, false);
            this.nextLoadPosition = 0;
            this.initDataLoadRequired = false;
        }
    }

    public int k(int i10) {
        Assertions.g(!this.shouldSpliceIn);
        if (i10 >= this.sampleQueueFirstSampleIndices.size()) {
            return 0;
        }
        return this.sampleQueueFirstSampleIndices.get(i10).intValue();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void load() throws IOException {
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        Assertions.e(this.output);
        if (this.extractor == null && (hlsMediaChunkExtractor = this.previousExtractor) != null && hlsMediaChunkExtractor.d()) {
            this.extractor = this.previousExtractor;
            this.initDataLoadRequired = false;
        }
        q();
        if (this.loadCanceled) {
            return;
        }
        if (!this.hasGapTag) {
            p();
        }
        this.loadCompleted = !this.loadCanceled;
    }

    private static byte[] j(String str) {
        int length;
        if (com.google.common.base.c.e(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        if (byteArray.length > 16) {
            length = byteArray.length - 16;
        } else {
            length = 0;
        }
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    private long r(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        try {
            this.scratchId3Data.Q(10);
            extractorInput.peekFully(this.scratchId3Data.e(), 0, 10);
            if (this.scratchId3Data.K() != 4801587) {
                return -9223372036854775807L;
            }
            this.scratchId3Data.V(3);
            int iG = this.scratchId3Data.G();
            int i10 = iG + 10;
            if (i10 > this.scratchId3Data.b()) {
                byte[] bArrE = this.scratchId3Data.e();
                this.scratchId3Data.Q(i10);
                System.arraycopy(bArrE, 0, this.scratchId3Data.e(), 0, 10);
            }
            extractorInput.peekFully(this.scratchId3Data.e(), 10, iG);
            Metadata metadataE = this.id3Decoder.e(this.scratchId3Data.e(), iG);
            if (metadataE == null) {
                return -9223372036854775807L;
            }
            int iH = metadataE.h();
            for (int i11 = 0; i11 < iH; i11++) {
                Metadata.Entry entryG = metadataE.g(i11);
                if (entryG instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) entryG;
                    if (PRIV_TIMESTAMP_FRAME_OWNER.equals(privFrame.owner)) {
                        System.arraycopy(privFrame.privateData, 0, this.scratchId3Data.e(), 0, 8);
                        this.scratchId3Data.U(0);
                        this.scratchId3Data.T(8);
                        return this.scratchId3Data.A() & TarConstants.MAXSIZE;
                    }
                }
            }
            return -9223372036854775807L;
        } catch (EOFException unused) {
        }
    }

    private DefaultExtractorInput s(DataSource dataSource, DataSpec dataSpec, boolean z6) throws IOException {
        HlsMediaChunkExtractor hlsMediaChunkExtractorA;
        long jB;
        long jB2 = dataSource.b(dataSpec);
        if (z6) {
            try {
                this.timestampAdjuster.i(this.isPrimaryTimestampSource, this.startTimeUs, this.timestampAdjusterInitializationTimeoutMs);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            } catch (TimeoutException e) {
                throw new IOException(e);
            }
        }
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, dataSpec.position, jB2);
        if (this.extractor == null) {
            long jR = r(defaultExtractorInput);
            defaultExtractorInput.resetPeekPosition();
            HlsMediaChunkExtractor hlsMediaChunkExtractor = this.previousExtractor;
            if (hlsMediaChunkExtractor != null) {
                hlsMediaChunkExtractorA = hlsMediaChunkExtractor.f();
            } else {
                hlsMediaChunkExtractorA = this.extractorFactory.a(dataSpec.uri, this.trackFormat, this.muxedCaptionFormats, this.timestampAdjuster, dataSource.getResponseHeaders(), defaultExtractorInput, this.playerId);
            }
            this.extractor = hlsMediaChunkExtractorA;
            if (hlsMediaChunkExtractorA.e()) {
                HlsSampleStreamWrapper hlsSampleStreamWrapper = this.output;
                if (jR != -9223372036854775807L) {
                    jB = this.timestampAdjuster.b(jR);
                } else {
                    jB = this.startTimeUs;
                }
                hlsSampleStreamWrapper.a0(jB);
            } else {
                this.output.a0(0L);
            }
            this.output.L();
            this.extractor.b(this.output);
        }
        this.output.W(this.drmInitData);
        return defaultExtractorInput;
    }
}
