package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class FlacFrameReader {

    public static final class SampleNumberHolder {
        public long sampleNumber;
    }

    private static boolean f(int i10, FlacStreamMetadata flacStreamMetadata) {
        return i10 == 0 || i10 == flacStreamMetadata.bitsPerSampleLookupKey;
    }

    private static boolean g(int i10, FlacStreamMetadata flacStreamMetadata) {
        if (i10 <= 7) {
            return i10 == flacStreamMetadata.channels - 1;
        }
        return i10 <= 10 && flacStreamMetadata.channels == 2;
    }

    public static boolean d(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i10, SampleNumberHolder sampleNumberHolder) {
        int iF = parsableByteArray.f();
        long J = parsableByteArray.J();
        long j6 = J >>> 16;
        if (j6 != i10) {
            return false;
        }
        return g((int) ((J >> 4) & 15), flacStreamMetadata) && f((int) ((J >> 1) & 7), flacStreamMetadata) && !(((J & 1) > 1L ? 1 : ((J & 1) == 1L ? 0 : -1)) == 0) && c(parsableByteArray, flacStreamMetadata, ((j6 & 1) > 1L ? 1 : ((j6 & 1) == 1L ? 0 : -1)) == 0, sampleNumberHolder) && a(parsableByteArray, flacStreamMetadata, (int) ((J >> 12) & 15)) && e(parsableByteArray, flacStreamMetadata, (int) ((J >> 8) & 15)) && b(parsableByteArray, iF);
    }

    private static boolean e(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i10) {
        int i11 = flacStreamMetadata.sampleRate;
        if (i10 == 0) {
            return true;
        }
        if (i10 <= 11) {
            return i10 == flacStreamMetadata.sampleRateLookupKey;
        }
        if (i10 == 12) {
            return parsableByteArray.H() * 1000 == i11;
        }
        if (i10 > 14) {
            return false;
        }
        int iN = parsableByteArray.N();
        if (i10 == 14) {
            iN *= 10;
        }
        return iN == i11;
    }

    private FlacFrameReader() {
    }

    private static boolean a(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i10) {
        int iJ = j(parsableByteArray, i10);
        if (iJ != -1 && iJ <= flacStreamMetadata.maxBlockSizeSamples) {
            return true;
        }
        return false;
    }

    private static boolean b(ParsableByteArray parsableByteArray, int i10) {
        if (parsableByteArray.H() == Util.u(parsableByteArray.e(), i10, parsableByteArray.f() - 1, 0)) {
            return true;
        }
        return false;
    }

    private static boolean c(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, boolean z6, SampleNumberHolder sampleNumberHolder) {
        try {
            long jO = parsableByteArray.O();
            if (!z6) {
                jO *= (long) flacStreamMetadata.maxBlockSizeSamples;
            }
            sampleNumberHolder.sampleNumber = jO;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean h(ExtractorInput extractorInput, FlacStreamMetadata flacStreamMetadata, int i10, SampleNumberHolder sampleNumberHolder) throws IOException {
        long peekPosition = extractorInput.getPeekPosition();
        byte[] bArr = new byte[2];
        extractorInput.peekFully(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i10) {
            extractorInput.resetPeekPosition();
            extractorInput.advancePeekPosition((int) (peekPosition - extractorInput.getPosition()));
            return false;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        System.arraycopy(bArr, 0, parsableByteArray.e(), 0, 2);
        parsableByteArray.T(ExtractorUtil.c(extractorInput, parsableByteArray.e(), 2, 14));
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition((int) (peekPosition - extractorInput.getPosition()));
        return d(parsableByteArray, flacStreamMetadata, i10, sampleNumberHolder);
    }

    public static long i(ExtractorInput extractorInput, FlacStreamMetadata flacStreamMetadata) throws IOException {
        int i10;
        extractorInput.resetPeekPosition();
        boolean z6 = true;
        extractorInput.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        extractorInput.peekFully(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z6 = false;
        }
        extractorInput.advancePeekPosition(2);
        if (z6) {
            i10 = 7;
        } else {
            i10 = 6;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(i10);
        parsableByteArray.T(ExtractorUtil.c(extractorInput, parsableByteArray.e(), 0, i10));
        extractorInput.resetPeekPosition();
        SampleNumberHolder sampleNumberHolder = new SampleNumberHolder();
        if (c(parsableByteArray, flacStreamMetadata, z6, sampleNumberHolder)) {
            return sampleNumberHolder.sampleNumber;
        }
        throw ParserException.a(null, null);
    }

    public static int j(ParsableByteArray parsableByteArray, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return parsableByteArray.H() + 1;
            case 7:
                return parsableByteArray.N() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }
}
