package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import com.google.common.collect.a0;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class FlacMetadataReader {
    private static final int SEEK_POINT_SIZE = 18;
    private static final int STREAM_MARKER = 1716281667;
    private static final int SYNC_CODE = 16382;

    @Nullable
    public static Metadata c(ExtractorInput extractorInput, boolean z6) throws IOException {
        Metadata metadataA = new Id3Peeker().a(extractorInput, z6 ? null : Id3Decoder.NO_FRAMES_PREDICATE);
        if (metadataA == null || metadataA.h() == 0) {
            return null;
        }
        return metadataA;
    }

    public static FlacStreamMetadata.SeekTable f(ParsableByteArray parsableByteArray) {
        parsableByteArray.V(1);
        int iK = parsableByteArray.K();
        long jF = ((long) parsableByteArray.f()) + ((long) iK);
        int i10 = iK / 18;
        long[] jArrCopyOf = new long[i10];
        long[] jArrCopyOf2 = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            long jA = parsableByteArray.A();
            if (jA == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
                break;
            }
            jArrCopyOf[i11] = jA;
            jArrCopyOf2[i11] = parsableByteArray.A();
            parsableByteArray.V(2);
        }
        parsableByteArray.V((int) (jF - ((long) parsableByteArray.f())));
        return new FlacStreamMetadata.SeekTable(jArrCopyOf, jArrCopyOf2);
    }

    public static final class FlacStreamMetadataHolder {

        @Nullable
        public FlacStreamMetadata flacStreamMetadata;

        public FlacStreamMetadataHolder(@Nullable FlacStreamMetadata flacStreamMetadata) {
            this.flacStreamMetadata = flacStreamMetadata;
        }
    }

    public static boolean a(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        extractorInput.peekFully(parsableByteArray.e(), 0, 4);
        return parsableByteArray.J() == 1716281667;
    }

    private static FlacStreamMetadata.SeekTable g(ExtractorInput extractorInput, int i10) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(i10);
        extractorInput.readFully(parsableByteArray.e(), 0, i10);
        return f(parsableByteArray);
    }

    private static FlacStreamMetadata h(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = new byte[38];
        extractorInput.readFully(bArr, 0, 38);
        return new FlacStreamMetadata(bArr, 4);
    }

    public static void i(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        extractorInput.readFully(parsableByteArray.e(), 0, 4);
        if (parsableByteArray.J() != 1716281667) {
            throw ParserException.a("Failed to read FLAC stream marker.", null);
        }
    }

    private static List<String> j(ExtractorInput extractorInput, int i10) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(i10);
        extractorInput.readFully(parsableByteArray.e(), 0, i10);
        parsableByteArray.V(4);
        return Arrays.asList(VorbisUtil.i(parsableByteArray, false, false).comments);
    }

    private FlacMetadataReader() {
    }

    public static int b(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(2);
        extractorInput.peekFully(parsableByteArray.e(), 0, 2);
        int iN = parsableByteArray.N();
        if ((iN >> 2) == SYNC_CODE) {
            extractorInput.resetPeekPosition();
            return iN;
        }
        extractorInput.resetPeekPosition();
        throw ParserException.a("First frame does not start with sync code.", null);
    }

    @Nullable
    public static Metadata d(ExtractorInput extractorInput, boolean z6) throws IOException {
        extractorInput.resetPeekPosition();
        long peekPosition = extractorInput.getPeekPosition();
        Metadata metadataC = c(extractorInput, z6);
        extractorInput.skipFully((int) (extractorInput.getPeekPosition() - peekPosition));
        return metadataC;
    }

    public static boolean e(ExtractorInput extractorInput, FlacStreamMetadataHolder flacStreamMetadataHolder) throws IOException {
        extractorInput.resetPeekPosition();
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[4]);
        extractorInput.peekFully(parsableBitArray.data, 0, 4);
        boolean zG = parsableBitArray.g();
        int iH = parsableBitArray.h(7);
        int iH2 = parsableBitArray.h(24) + 4;
        if (iH == 0) {
            flacStreamMetadataHolder.flacStreamMetadata = h(extractorInput);
        } else {
            FlacStreamMetadata flacStreamMetadata = flacStreamMetadataHolder.flacStreamMetadata;
            if (flacStreamMetadata != null) {
                if (iH == 3) {
                    flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadata.c(g(extractorInput, iH2));
                } else if (iH == 4) {
                    flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadata.d(j(extractorInput, iH2));
                } else if (iH == 6) {
                    ParsableByteArray parsableByteArray = new ParsableByteArray(iH2);
                    extractorInput.readFully(parsableByteArray.e(), 0, iH2);
                    parsableByteArray.V(4);
                    flacStreamMetadataHolder.flacStreamMetadata = flacStreamMetadata.b(a0.y(PictureFrame.a(parsableByteArray)));
                } else {
                    extractorInput.skipFully(iH2);
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return zG;
    }
}
