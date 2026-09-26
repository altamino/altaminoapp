package androidx.media3.extractor.flac;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.e;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class FlacExtractor implements Extractor {
    private static final int BUFFER_LENGTH = 32768;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.flac.b
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return FlacExtractor.i();
        }
    };
    public static final int FLAG_DISABLE_ID3_METADATA = 1;
    private static final int SAMPLE_NUMBER_UNKNOWN = -1;
    private static final int STATE_GET_FRAME_START_MARKER = 4;
    private static final int STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES = 1;
    private static final int STATE_READ_FRAMES = 5;
    private static final int STATE_READ_ID3_METADATA = 0;
    private static final int STATE_READ_METADATA_BLOCKS = 3;
    private static final int STATE_READ_STREAM_MARKER = 2;
    private FlacBinarySearchSeeker binarySearchSeeker;
    private final ParsableByteArray buffer;
    private int currentFrameBytesWritten;
    private long currentFrameFirstSampleNumber;
    private ExtractorOutput extractorOutput;
    private FlacStreamMetadata flacStreamMetadata;
    private int frameStartMarker;

    @Nullable
    private Metadata id3Metadata;
    private final boolean id3MetadataDisabled;
    private int minFrameSize;
    private final FlacFrameReader.SampleNumberHolder sampleNumberHolder;
    private int state;
    private final byte[] streamMarkerAndInfoBlock;
    private TrackOutput trackOutput;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public FlacExtractor() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] i() {
        return new Extractor[]{new FlacExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.c(extractorInput, false);
        return FlacMetadataReader.a(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    public FlacExtractor(int i10) {
        this.streamMarkerAndInfoBlock = new byte[42];
        this.buffer = new ParsableByteArray(new byte[32768], 0);
        this.id3MetadataDisabled = (i10 & 1) != 0;
        this.sampleNumberHolder = new FlacFrameReader.SampleNumberHolder();
        this.state = 0;
    }

    private long e(ParsableByteArray parsableByteArray, boolean z6) {
        boolean zD;
        Assertions.e(this.flacStreamMetadata);
        int iF = parsableByteArray.f();
        while (iF <= parsableByteArray.g() - 16) {
            parsableByteArray.U(iF);
            if (FlacFrameReader.d(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
                parsableByteArray.U(iF);
                return this.sampleNumberHolder.sampleNumber;
            }
            iF++;
        }
        if (!z6) {
            parsableByteArray.U(iF);
            return -1L;
        }
        while (iF <= parsableByteArray.g() - this.minFrameSize) {
            parsableByteArray.U(iF);
            try {
                zD = FlacFrameReader.d(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (parsableByteArray.f() <= parsableByteArray.g() && zD) {
                parsableByteArray.U(iF);
                return this.sampleNumberHolder.sampleNumber;
            }
            iF++;
        }
        parsableByteArray.U(parsableByteArray.g());
        return -1L;
    }

    private SeekMap g(long j6, long j10) {
        Assertions.e(this.flacStreamMetadata);
        FlacStreamMetadata flacStreamMetadata = this.flacStreamMetadata;
        if (flacStreamMetadata.seekTable != null) {
            return new FlacSeekTableSeekMap(flacStreamMetadata, j6);
        }
        if (j10 == -1 || flacStreamMetadata.totalSamples <= 0) {
            return new SeekMap.Unseekable(flacStreamMetadata.g());
        }
        FlacBinarySearchSeeker flacBinarySearchSeeker = new FlacBinarySearchSeeker(flacStreamMetadata, this.frameStartMarker, j6, j10);
        this.binarySearchSeeker = flacBinarySearchSeeker;
        return flacBinarySearchSeeker.b();
    }

    private void h(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = this.streamMarkerAndInfoBlock;
        extractorInput.peekFully(bArr, 0, bArr.length);
        extractorInput.resetPeekPosition();
        this.state = 2;
    }

    private void j() {
        ((TrackOutput) Util.j(this.trackOutput)).f((this.currentFrameFirstSampleNumber * 1000000) / ((long) ((FlacStreamMetadata) Util.j(this.flacStreamMetadata)).sampleRate), 1, this.currentFrameBytesWritten, 0, null);
    }

    private int k(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z6;
        Assertions.e(this.trackOutput);
        Assertions.e(this.flacStreamMetadata);
        FlacBinarySearchSeeker flacBinarySearchSeeker = this.binarySearchSeeker;
        if (flacBinarySearchSeeker != null && flacBinarySearchSeeker.d()) {
            return this.binarySearchSeeker.c(extractorInput, positionHolder);
        }
        if (this.currentFrameFirstSampleNumber == -1) {
            this.currentFrameFirstSampleNumber = FlacFrameReader.i(extractorInput, this.flacStreamMetadata);
            return 0;
        }
        int iG = this.buffer.g();
        if (iG < 32768) {
            int i10 = extractorInput.read(this.buffer.e(), iG, 32768 - iG);
            z6 = i10 == -1;
            if (!z6) {
                this.buffer.T(iG + i10);
            } else if (this.buffer.a() == 0) {
                j();
                return -1;
            }
        } else {
            z6 = false;
        }
        int iF = this.buffer.f();
        int i11 = this.currentFrameBytesWritten;
        int i12 = this.minFrameSize;
        if (i11 < i12) {
            ParsableByteArray parsableByteArray = this.buffer;
            parsableByteArray.V(Math.min(i12 - i11, parsableByteArray.a()));
        }
        long jE = e(this.buffer, z6);
        int iF2 = this.buffer.f() - iF;
        this.buffer.U(iF);
        this.trackOutput.b(this.buffer, iF2);
        this.currentFrameBytesWritten += iF2;
        if (jE != -1) {
            j();
            this.currentFrameBytesWritten = 0;
            this.currentFrameFirstSampleNumber = jE;
        }
        if (this.buffer.a() < 16) {
            int iA = this.buffer.a();
            System.arraycopy(this.buffer.e(), this.buffer.f(), this.buffer.e(), 0, iA);
            this.buffer.U(0);
            this.buffer.T(iA);
        }
        return 0;
    }

    private void l(ExtractorInput extractorInput) throws IOException {
        this.id3Metadata = FlacMetadataReader.d(extractorInput, !this.id3MetadataDisabled);
        this.state = 1;
    }

    private void m(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.FlacStreamMetadataHolder flacStreamMetadataHolder = new FlacMetadataReader.FlacStreamMetadataHolder(this.flacStreamMetadata);
        boolean zE = false;
        while (!zE) {
            zE = FlacMetadataReader.e(extractorInput, flacStreamMetadataHolder);
            this.flacStreamMetadata = (FlacStreamMetadata) Util.j(flacStreamMetadataHolder.flacStreamMetadata);
        }
        Assertions.e(this.flacStreamMetadata);
        this.minFrameSize = Math.max(this.flacStreamMetadata.minFrameSize, 6);
        ((TrackOutput) Util.j(this.trackOutput)).d(this.flacStreamMetadata.h(this.streamMarkerAndInfoBlock, this.id3Metadata));
        this.state = 4;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i10 = this.state;
        if (i10 == 0) {
            l(extractorInput);
            return 0;
        }
        if (i10 == 1) {
            h(extractorInput);
            return 0;
        }
        if (i10 == 2) {
            n(extractorInput);
            return 0;
        }
        if (i10 == 3) {
            m(extractorInput);
            return 0;
        }
        if (i10 == 4) {
            f(extractorInput);
            return 0;
        }
        if (i10 == 5) {
            return k(extractorInput, positionHolder);
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        if (j6 == 0) {
            this.state = 0;
        } else {
            FlacBinarySearchSeeker flacBinarySearchSeeker = this.binarySearchSeeker;
            if (flacBinarySearchSeeker != null) {
                flacBinarySearchSeeker.h(j10);
            }
        }
        this.currentFrameFirstSampleNumber = j10 != 0 ? -1L : 0L;
        this.currentFrameBytesWritten = 0;
        this.buffer.Q(0);
    }

    private void f(ExtractorInput extractorInput) throws IOException {
        this.frameStartMarker = FlacMetadataReader.b(extractorInput);
        ((ExtractorOutput) Util.j(this.extractorOutput)).d(g(extractorInput.getPosition(), extractorInput.getLength()));
        this.state = 5;
    }

    private void n(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.i(extractorInput);
        this.state = 3;
    }
}
