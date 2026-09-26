package androidx.media3.exoplayer.source.chunk;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.DummyTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.f;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class BundledChunkExtractor implements ExtractorOutput, ChunkExtractor {
    public static final ChunkExtractor.Factory FACTORY = new ChunkExtractor.Factory() { // from class: androidx.media3.exoplayer.source.chunk.a
        @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor.Factory
        public final ChunkExtractor a(int i10, Format format, boolean z6, List list, TrackOutput trackOutput, PlayerId playerId) {
            return BundledChunkExtractor.g(i10, format, z6, list, trackOutput, playerId);
        }
    };
    private static final PositionHolder POSITION_HOLDER = new PositionHolder();
    private final SparseArray<BindingTrackOutput> bindingTrackOutputs = new SparseArray<>();
    private long endTimeUs;
    private final Extractor extractor;
    private boolean extractorInitialized;
    private final Format primaryTrackManifestFormat;
    private final int primaryTrackType;
    private Format[] sampleFormats;
    private SeekMap seekMap;

    @Nullable
    private ChunkExtractor.TrackOutputProvider trackOutputProvider;

    private static final class BindingTrackOutput implements TrackOutput {
        private long endTimeUs;
        private final DummyTrackOutput fakeTrackOutput = new DummyTrackOutput();
        private final int id;

        @Nullable
        private final Format manifestFormat;
        public Format sampleFormat;
        private TrackOutput trackOutput;
        private final int type;

        @Override // androidx.media3.extractor.TrackOutput
        public /* synthetic */ void b(ParsableByteArray parsableByteArray, int i10) {
            f.b(this, parsableByteArray, i10);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public /* synthetic */ int e(DataReader dataReader, int i10, boolean z6) {
            return f.a(this, dataReader, i10, z6);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void a(ParsableByteArray parsableByteArray, int i10, int i11) {
            ((TrackOutput) Util.j(this.trackOutput)).b(parsableByteArray, i10);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public int c(DataReader dataReader, int i10, boolean z6, int i11) throws IOException {
            return ((TrackOutput) Util.j(this.trackOutput)).e(dataReader, i10, z6);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void d(Format format) {
            Format format2 = this.manifestFormat;
            if (format2 != null) {
                format = format.k(format2);
            }
            this.sampleFormat = format;
            ((TrackOutput) Util.j(this.trackOutput)).d(this.sampleFormat);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public void f(long j6, int i10, int i11, int i12, @Nullable TrackOutput.CryptoData cryptoData) {
            long j10 = this.endTimeUs;
            if (j10 != -9223372036854775807L && j6 >= j10) {
                this.trackOutput = this.fakeTrackOutput;
            }
            ((TrackOutput) Util.j(this.trackOutput)).f(j6, i10, i11, i12, cryptoData);
        }

        public void g(@Nullable ChunkExtractor.TrackOutputProvider trackOutputProvider, long j6) {
            if (trackOutputProvider == null) {
                this.trackOutput = this.fakeTrackOutput;
                return;
            }
            this.endTimeUs = j6;
            TrackOutput trackOutputTrack = trackOutputProvider.track(this.id, this.type);
            this.trackOutput = trackOutputTrack;
            Format format = this.sampleFormat;
            if (format != null) {
                trackOutputTrack.d(format);
            }
        }

        public BindingTrackOutput(int i10, int i11, @Nullable Format format) {
            this.id = i10;
            this.type = i11;
            this.manifestFormat = format;
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void d(SeekMap seekMap) {
        this.seekMap = seekMap;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    @Nullable
    public Format[] e() {
        return this.sampleFormats;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ChunkExtractor g(int i10, Format format, boolean z6, List list, TrackOutput trackOutput, PlayerId playerId) {
        Extractor fragmentedMp4Extractor;
        String str = format.containerMimeType;
        if (MimeTypes.r(str)) {
            return null;
        }
        if (MimeTypes.q(str)) {
            fragmentedMp4Extractor = new MatroskaExtractor(1);
        } else {
            fragmentedMp4Extractor = new FragmentedMp4Extractor(z6 ? 4 : 0, null, null, list, trackOutput);
        }
        return new BundledChunkExtractor(fragmentedMp4Extractor, i10, format);
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public boolean a(ExtractorInput extractorInput) throws IOException {
        int iC = this.extractor.c(extractorInput, POSITION_HOLDER);
        Assertions.g(iC != 1);
        return iC == 0;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public void b(@Nullable ChunkExtractor.TrackOutputProvider trackOutputProvider, long j6, long j10) {
        this.trackOutputProvider = trackOutputProvider;
        this.endTimeUs = j10;
        if (!this.extractorInitialized) {
            this.extractor.b(this);
            if (j6 != -9223372036854775807L) {
                this.extractor.seek(0L, j6);
            }
            this.extractorInitialized = true;
            return;
        }
        Extractor extractor = this.extractor;
        if (j6 == -9223372036854775807L) {
            j6 = 0;
        }
        extractor.seek(0L, j6);
        for (int i10 = 0; i10 < this.bindingTrackOutputs.size(); i10++) {
            this.bindingTrackOutputs.valueAt(i10).g(trackOutputProvider, j10);
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    @Nullable
    public ChunkIndex c() {
        SeekMap seekMap = this.seekMap;
        if (seekMap instanceof ChunkIndex) {
            return (ChunkIndex) seekMap;
        }
        return null;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        Format[] formatArr = new Format[this.bindingTrackOutputs.size()];
        for (int i10 = 0; i10 < this.bindingTrackOutputs.size(); i10++) {
            formatArr[i10] = (Format) Assertions.i(this.bindingTrackOutputs.valueAt(i10).sampleFormat);
        }
        this.sampleFormats = formatArr;
    }

    @Override // androidx.media3.exoplayer.source.chunk.ChunkExtractor
    public void release() {
        this.extractor.release();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int i10, int i11) {
        BindingTrackOutput bindingTrackOutput = this.bindingTrackOutputs.get(i10);
        if (bindingTrackOutput == null) {
            Assertions.g(this.sampleFormats == null);
            bindingTrackOutput = new BindingTrackOutput(i10, i11, i11 == this.primaryTrackType ? this.primaryTrackManifestFormat : null);
            bindingTrackOutput.g(this.trackOutputProvider, this.endTimeUs);
            this.bindingTrackOutputs.put(i10, bindingTrackOutput);
        }
        return bindingTrackOutput;
    }

    public BundledChunkExtractor(Extractor extractor, int i10, Format format) {
        this.extractor = extractor;
        this.primaryTrackType = i10;
        this.primaryTrackManifestFormat = format;
    }
}
